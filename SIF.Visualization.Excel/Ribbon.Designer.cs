﻿namespace SIF.Visualization.Excel
{
    partial class Ribbon : Microsoft.Office.Tools.Ribbon.RibbonBase
    {
        /// <summary>
        /// Erforderliche Designervariable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public Ribbon()
            : base(Globals.Factory.GetRibbonFactory())
        {
            InitializeComponent();
        }

        /// <summary> 
        /// Verwendete Ressourcen bereinigen.
        /// </summary>
        /// <param name="disposing">"true", wenn verwaltete Ressourcen gelöscht werden sollen; andernfalls "false".</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Vom Komponenten-Designer generierter Code

        /// <summary>
        /// Erforderliche Methode für Designerunterstützung -
        /// Der Inhalt der Methode darf nicht mit dem Code-Editor geändert werden.
        /// </summary>
        private void InitializeComponent()
        {
            this.inspectionTab = this.Factory.CreateRibbonTab();
            this.testGroup = this.Factory.CreateRibbonGroup();
            this.scenarioGroup = this.Factory.CreateRibbonGroup();
            this.defineGroup = this.Factory.CreateRibbonGroup();
            this.viewGroup = this.Factory.CreateRibbonGroup();
            this.testButton = this.Factory.CreateRibbonButton();
            this.staticTestButton = this.Factory.CreateRibbonButton();
            this.dynamicTestButton = this.Factory.CreateRibbonButton();
            this.CreateNewScenarioButton = this.Factory.CreateRibbonButton();
            this.submitScenarioButton = this.Factory.CreateRibbonButton();
            this.cancelScenarioButton = this.Factory.CreateRibbonButton();
            this.inputCellToggleButton = this.Factory.CreateRibbonToggleButton();
            this.intermediateCellToggleButton = this.Factory.CreateRibbonToggleButton();
            this.resultCellToggleButton = this.Factory.CreateRibbonToggleButton();
            this.sharedPaneButton = this.Factory.CreateRibbonButton();
            this.clearButton = this.Factory.CreateRibbonButton();
            this.inspectionTab.SuspendLayout();
            this.testGroup.SuspendLayout();
            this.scenarioGroup.SuspendLayout();
            this.defineGroup.SuspendLayout();
            this.viewGroup.SuspendLayout();
            // 
            // inspectionTab
            // 
            this.inspectionTab.ControlId.ControlIdType = Microsoft.Office.Tools.Ribbon.RibbonControlIdType.Office;
            this.inspectionTab.Groups.Add(this.testGroup);
            this.inspectionTab.Groups.Add(this.scenarioGroup);
            this.inspectionTab.Groups.Add(this.defineGroup);
            this.inspectionTab.Groups.Add(this.viewGroup);
            this.inspectionTab.Label = "INSPECTION";
            this.inspectionTab.Name = "inspectionTab";
            // 
            // testGroup
            // 
            this.testGroup.Items.Add(this.testButton);
            this.testGroup.Items.Add(this.staticTestButton);
            this.testGroup.Items.Add(this.dynamicTestButton);
            this.testGroup.Label = "Test";
            this.testGroup.Name = "testGroup";
            // 
            // scenarioGroup
            // 
            this.scenarioGroup.Items.Add(this.CreateNewScenarioButton);
            this.scenarioGroup.Items.Add(this.submitScenarioButton);
            this.scenarioGroup.Items.Add(this.cancelScenarioButton);
            this.scenarioGroup.Label = "Scenario";
            this.scenarioGroup.Name = "scenarioGroup";
            // 
            // defineGroup
            // 
            this.defineGroup.Items.Add(this.inputCellToggleButton);
            this.defineGroup.Items.Add(this.intermediateCellToggleButton);
            this.defineGroup.Items.Add(this.resultCellToggleButton);
            this.defineGroup.Label = "Define Scenario Cells";
            this.defineGroup.Name = "defineGroup";
            // 
            // viewGroup
            // 
            this.viewGroup.Items.Add(this.sharedPaneButton);
            this.viewGroup.Items.Add(this.clearButton);
            this.viewGroup.Label = "View";
            this.viewGroup.Name = "viewGroup";
            // 
            // testButton
            // 
            this.testButton.ControlSize = Microsoft.Office.Core.RibbonControlSize.RibbonControlSizeLarge;
            this.testButton.Description = "Scans the current workbook with all scenarios.";
            this.testButton.Label = "Scan";
            this.testButton.Name = "testButton";
            this.testButton.OfficeImageId = "Synchronize";
            this.testButton.ScreenTip = "Scans the current workbook.";
            this.testButton.ShowImage = true;
            this.testButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.testButton_Click);
            // 
            // staticTestButton
            // 
            this.staticTestButton.Description = "Scans the current workbook only with the static scenario.";
            this.staticTestButton.Label = "Static Scan";
            this.staticTestButton.Name = "staticTestButton";
            this.staticTestButton.OfficeImageId = "Synchronize";
            this.staticTestButton.ScreenTip = "Scans the current workbook.";
            this.staticTestButton.ShowImage = true;
            this.staticTestButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.StaticScan_Click);
            // 
            // dynamicTestButton
            // 
            this.dynamicTestButton.Description = "Scans the current workbook without the static scenario.";
            this.dynamicTestButton.Label = "Dynamic Scan";
            this.dynamicTestButton.Name = "dynamicTestButton";
            this.dynamicTestButton.OfficeImageId = "Synchronize";
            this.dynamicTestButton.ScreenTip = "Scans the current workbook.";
            this.dynamicTestButton.ShowImage = true;
            this.dynamicTestButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.DynamicScan_Click);
            // 
            // CreateNewScenarioButton
            // 
            this.CreateNewScenarioButton.ControlSize = Microsoft.Office.Core.RibbonControlSize.RibbonControlSizeLarge;
            this.CreateNewScenarioButton.Description = "Creates a new scenario";
            this.CreateNewScenarioButton.Label = "New";
            this.CreateNewScenarioButton.Name = "CreateNewScenarioButton";
            this.CreateNewScenarioButton.OfficeImageId = "OutlookTaskToday";
            this.CreateNewScenarioButton.ScreenTip = "Creates a new scenario";
            this.CreateNewScenarioButton.ShowImage = true;
            this.CreateNewScenarioButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.NewScenarioButton_Click);
            // 
            // submitScenarioButton
            // 
            this.submitScenarioButton.Description = "Submits scenario cration.";
            this.submitScenarioButton.Label = "Save";
            this.submitScenarioButton.Name = "submitScenarioButton";
            this.submitScenarioButton.OfficeImageId = "OutlookTaskToday";
            this.submitScenarioButton.ScreenTip = "Save this scenario";
            this.submitScenarioButton.ShowImage = true;
            this.submitScenarioButton.Visible = false;
            this.submitScenarioButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.SubmitScenarioButton_Click);
            // 
            // cancelScenarioButton
            // 
            this.cancelScenarioButton.Description = "Cancel the scenario creation.";
            this.cancelScenarioButton.Label = "Cancel";
            this.cancelScenarioButton.Name = "cancelScenarioButton";
            this.cancelScenarioButton.OfficeImageId = "CancelEditing";
            this.cancelScenarioButton.ScreenTip = "Discard this scenario";
            this.cancelScenarioButton.ShowImage = true;
            this.cancelScenarioButton.Visible = false;
            this.cancelScenarioButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.cancelScenarioButton_Click);
            // 
            // inputCellToggleButton
            // 
            this.inputCellToggleButton.Description = "Defines as Input Cell.";
            this.inputCellToggleButton.Image = global::SIF.Visualization.Excel.Properties.Resources.input_clear;
            this.inputCellToggleButton.Label = "Input Cell";
            this.inputCellToggleButton.Name = "inputCellToggleButton";
            this.inputCellToggleButton.ScreenTip = "Defines a Input Cell.";
            this.inputCellToggleButton.ShowImage = true;
            this.inputCellToggleButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.DefineInputCell_Click);
            // 
            // intermediateCellToggleButton
            // 
            this.intermediateCellToggleButton.Description = "Defines as Intermediate Cell.";
            this.intermediateCellToggleButton.Image = global::SIF.Visualization.Excel.Properties.Resources.intermediate_clear;
            this.intermediateCellToggleButton.Label = "Intermediate Cell";
            this.intermediateCellToggleButton.Name = "intermediateCellToggleButton";
            this.intermediateCellToggleButton.ScreenTip = "Defines a Intermediate Cell.";
            this.intermediateCellToggleButton.ShowImage = true;
            this.intermediateCellToggleButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.DefineIntermediateCell_Click);
            // 
            // resultCellToggleButton
            // 
            this.resultCellToggleButton.Description = "Defines as Result Cell.";
            this.resultCellToggleButton.Image = global::SIF.Visualization.Excel.Properties.Resources.output_clear;
            this.resultCellToggleButton.Label = "Result Cell";
            this.resultCellToggleButton.Name = "resultCellToggleButton";
            this.resultCellToggleButton.ScreenTip = "Defines a Result Cell.";
            this.resultCellToggleButton.ShowImage = true;
            this.resultCellToggleButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.DefineResultCell_Click);
            // 
            // sharedPaneButton
            // 
            this.sharedPaneButton.ControlSize = Microsoft.Office.Core.RibbonControlSize.RibbonControlSizeLarge;
            this.sharedPaneButton.Description = "Opens the inspections pane.";
            this.sharedPaneButton.Image = global::SIF.Visualization.Excel.Properties.Resources.inspectionpane;
            this.sharedPaneButton.Label = "Inspection Pane";
            this.sharedPaneButton.Name = "sharedPaneButton";
            this.sharedPaneButton.ScreenTip = "Opens a pane with the cell definitions, scenario overview and findings.";
            this.sharedPaneButton.ShowImage = true;
            this.sharedPaneButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.sharedPaneButton_Click);
            // 
            // clearButton
            // 
            this.clearButton.Description = "Resets the document to the state before the test execution.";
            this.clearButton.Label = "Reset document";
            this.clearButton.Name = "clearButton";
            this.clearButton.OfficeImageId = "ClearRow";
            this.clearButton.ScreenTip = "Resets the document to the state before the test execution.";
            this.clearButton.ShowImage = true;
            this.clearButton.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.clearButton_Click);
            // 
            // Ribbon
            // 
            this.Name = "Ribbon";
            this.RibbonType = "Microsoft.Excel.Workbook";
            this.Tabs.Add(this.inspectionTab);
            this.Load += new Microsoft.Office.Tools.Ribbon.RibbonUIEventHandler(this.Ribbon_Load);
            this.inspectionTab.ResumeLayout(false);
            this.inspectionTab.PerformLayout();
            this.testGroup.ResumeLayout(false);
            this.testGroup.PerformLayout();
            this.scenarioGroup.ResumeLayout(false);
            this.scenarioGroup.PerformLayout();
            this.defineGroup.ResumeLayout(false);
            this.defineGroup.PerformLayout();
            this.viewGroup.ResumeLayout(false);
            this.viewGroup.PerformLayout();

        }

        #endregion

        internal Microsoft.Office.Tools.Ribbon.RibbonTab inspectionTab;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup testGroup;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton testButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup viewGroup;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton clearButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup scenarioGroup;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup defineGroup;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton staticTestButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton dynamicTestButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonToggleButton inputCellToggleButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonToggleButton intermediateCellToggleButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonToggleButton resultCellToggleButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton submitScenarioButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton cancelScenarioButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton sharedPaneButton;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton CreateNewScenarioButton;
    }

    partial class ThisRibbonCollection
    {
        internal Ribbon Ribbon
        {
            get { return this.GetRibbon<Ribbon>(); }
        }
    }
}
