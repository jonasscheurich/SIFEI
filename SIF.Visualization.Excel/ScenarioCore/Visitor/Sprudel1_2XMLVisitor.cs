﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using SIF.Visualization.Excel.ScenarioCore.Visitor;
using System.Xml.Schema;
using SIF.Visualization.Excel.Networking;
using SIF.Visualization.Excel.Core;

namespace SIF.Visualization.Excel.ScenarioCore.Visitor
{
    class Sprudel1_2XMLVisitor : IVisitor
    {
        /// <summary>
        /// Create the sprudel xml document
        /// </summary>
        /// <param name="n">WorkbookModel</param>
        /// <returns>complete sprudel xml as XElement</returns>
        public object Visit(Core.WorkbookModel n)
        {
            var dynamicPolicy = new XElement("dynamicPolicy");
            //attributes
            dynamicPolicy.Add(new XAttribute("name", NullCheck(n.Title) + " Inspection"));
            dynamicPolicy.Add(new XAttribute("description", this.GetDocumentProperty(n, "Comments")));
            dynamicPolicy.Add(new XAttribute("author", this.GetDocumentProperty(n, "Author")));

            //rules 
            var rules = new XElement("rules");
            foreach (var scenario in n.Scenarios)
            {
                rules.Add(scenario.Accept(this) as XElement);
            }
            dynamicPolicy.Add(rules);

            //spreadsheet file path
            dynamicPolicy.Add(new XElement("spreadsheetFilePath", NullCheck(n.Spreadsheet)));

            //input cells
            dynamicPolicy.Add(CreateInputCells(n));

            //output cells
            dynamicPolicy.Add(CreateOutputCells(n));

            //read schma policy
            //var sprudel = XMLPartManager.Instance.ReadXMLSchemaFromFile("E:\Studium\Bachelorthesis_sharedsvn\Entwicklung\SIF.Visualization.Excel\SIF.Visualization.Excel\XML\SpRuDeL1_2.xsd");

            //validate policy
            //todo

            return dynamicPolicy;
        }

        #region private workbook model visitor methods
        private XElement CreateInputCells(Core.WorkbookModel n)
        {
            var root = new XElement("inputCells");

            foreach (var cell in n.OutputCells)
            {
                var cellElement = new XElement("inputCell");
                cellElement.Add(new XElement("name", NullCheck(new CellLocation(DataModel.Instance.CurrentWorkbook.Workbook, cell.Location).ShortLocation)));
            }

            return root;
        }

        private XElement CreateOutputCells(Core.WorkbookModel n)
        {
            var root = new XElement("outputCells");

            foreach (var cell in n.OutputCells)
            {
                var cellElement = new XElement("outputCell");
                cellElement.Add(new XElement("name", NullCheck(new CellLocation(DataModel.Instance.CurrentWorkbook.Workbook, cell.Location).ShortLocation)));
            }

            return root;
        }

        /// <summary>
        /// Find a document property
        /// </summary>
        /// <param name="n">Workbook model with the excel workbook</param>
        /// <param name="propertyName">name of the requested property</param>
        /// <returns></returns>
        private string GetDocumentProperty(Core.WorkbookModel n, string propertyName)
        {
            var properties = (Microsoft.Office.Core.DocumentProperties) n.Workbook.BuiltinDocumentProperties;
            string value;
            try
            {
                value = (properties[propertyName].Value != null)? properties[propertyName].Value.ToString() : String.Empty;
            }
            catch (Exception e)
            {
                value = String.Empty;
            }

            return value;
        }

        #endregion

        /// <summary>
        /// Creats a part of sprudel with the data fo a scenario
        /// </summary>
        /// <param name="n">Scenario</param>
        /// <returns>XElement</returns>
        public object Visit(Scenario n)
        {
            var rule = new XElement("rule");
            //attributes
            rule.Add(new XAttribute("name", NullCheck(n.Title)));
            rule.Add(new XAttribute("author", NullCheck(n.Author)));
            rule.Add(new XAttribute("severityWeight", n.Rating));

            //invariants
            rule.Add(CreateRule(n, "invariants", true, true));

            //test inputs
            rule.Add(CreateTestInputs(n));

            //post conditions
            //rule.Add(CreateRule(n, "postconditions", true, true));

            return rule;
        }

        #region private scenario visitor methods
        /// <summary>
        /// Creates the sprudel test inputs
        /// </summary>
        /// <param name="n">Scenario</param>
        /// <returns>XElement of sprudel testInputs</returns>
        private XElement CreateTestInputs(Scenario n)
        {
            var testInputs = new XElement("testInputs");

            foreach (var test in n.Inputs)
            {
                if (test.Location != null && test.Content != null)
                {
                    var testInputElement = new XElement("testInput");
                    testInputElement.Add(new XElement("target", NullCheck(new CellLocation(DataModel.Instance.CurrentWorkbook.Workbook, test.Location).ShortLocation)));
                    testInputElement.Add(new XElement("type", test.CellType.ToString()));
                    testInputElement.Add(new XElement("value", NullCheck(test.Content)));

                    testInputs.Add(testInputElement);
                }
            }

            return testInputs;
        }

        /// <summary>
        /// Creates a rule
        /// </summary>
        /// <param name="n">Scenario</param>
        /// <param name="type">Sprudel rule type: 'invariants' or 'postconditions'</param>
        /// <param name="takeIntermediates">If true, add the intermediates of the scenario to the rule</param>
        /// <param name="takeResults">If true, add the results of the scenario to the rule</param>
        /// <returns></returns>
        private XElement CreateRule(Scenario n, string type, bool takeIntermediates, bool takeResults)
        {
            if (type == null || type == String.Empty) return null;
            if (type != "invariants" && type != "postconditions") return null;

            var rule = new XElement(type);

            if (takeIntermediates)
            {
                foreach (var intermediate in n.Intermediates)
                {
                    if (IsNotNull(intermediate) && intermediate.Location != null && intermediate.Content != null)
                    {
                        double conentDouble;

                        if (Double.TryParse(intermediate.Content, out conentDouble))
                        {
                            //create intervall
                            var intervalElement = new XElement("interval");
                            intervalElement.Add(new XElement("target", new CellLocation(DataModel.Instance.CurrentWorkbook.Workbook, intermediate.Location).ShortLocation));
                            intervalElement.Add(new XElement("value", conentDouble - intermediate.DifferenceDown));
                            //relation (equal, greaterThan, lessThan, lessOrEqual, greaterOrEqual) see DIP-3388 page 35
                            intervalElement.Add(new XElement("relation", "open"));
                            intervalElement.Add(new XElement("value2", conentDouble + intermediate.DifferenceUp));

                            rule.Add(intervalElement);
                        }
                        else
                        {
                            //create compare
                            var compare = new XElement("compare");
                            compare.Add(new XElement("target", new CellLocation(DataModel.Instance.CurrentWorkbook.Workbook, intermediate.Location).ShortLocation));
                            compare.Add(new XElement("value", intermediate.Content));
                            //relation (equal, greaterThan, lessThan, lessOrEqual, greaterOrEqual) see DIP-3388 page 35
                            compare.Add(new XElement("relation", "equal"));

                            rule.Add(compare);
                        }
                    }
                }
            }
            if (takeResults)
            {
                foreach (var result in n.Results)
                {
                    double conentDouble;

                    if (Double.TryParse(result.Content, out conentDouble))
                    {
                        //create intervall
                        var intervalElement = new XElement("interval");
                        intervalElement.Add(new XElement("target", new CellLocation(DataModel.Instance.CurrentWorkbook.Workbook, result.Location).ShortLocation));
                        intervalElement.Add(new XElement("value", conentDouble - result.DifferenceDown));
                        //relation (equal, greaterThan, lessThan, lessOrEqual, greaterOrEqual) see DIP-3388 page 35
                        intervalElement.Add(new XElement("relation", "open"));
                        intervalElement.Add(new XElement("value2", conentDouble + result.DifferenceUp));

                        rule.Add(intervalElement);
                    }
                    else
                    {
                        //create compare
                        var compare = new XElement("compare");
                        compare.Add(new XElement("target", new CellLocation(DataModel.Instance.CurrentWorkbook.Workbook, result.Location).ShortLocation));
                        compare.Add(new XElement("value", result.Content));
                        //relation (equal, greaterThan, lessThan, lessOrEqual, greaterOrEqual) see DIP-3388 page 35
                        compare.Add(new XElement("relation", "equal"));

                        rule.Add(compare);
                    }
                }
            }

            return rule;
        }

        #endregion

        #region not implemented
        public object Visit(InputCellData n)
        {
            throw new NotImplementedException();
        }

        public object Visit(IntermediateCellData n)
        {
            throw new NotImplementedException();
        }

        public object Visit(ResultCellData n)
        {
            throw new NotImplementedException();
        }

        public object Visit(Core.Cell n)
        {
            throw new NotImplementedException();
        }

        #endregion

        #region private class methods
        private string NullCheck(string content)
        {
            return (content != null) ? content : String.Empty;
        }

        private bool IsNotNull(IntermediateCellData n)
        {
            var result = true;

            if (n.Location == null) result = false;
            if (n.Content == null) result = false;

            return result;
        }

        private bool IsNotNull(ResultCellData n)
        {
            var result = true;

            if (n.Location == null) result = false;
            if (n.Content == null) result = false;

            return result;
        }

        #endregion


        public object Visit(StaticScenarios.StaticScenario n)
        {
            throw new NotImplementedException();
        }
    }
}
