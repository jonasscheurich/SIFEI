   M S B A M L   `   `   `  ����R  NSIF.Visualization.Excel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:SIF.Visualization.Excel.ViewModel!SIF.Visualization.Excel.ViewModel  5      M+clr-namespace:SIF.Visualization.Excel.CellsSIF.Visualization.Excel.Cells  5      :    4SIF.Visualization.Excel.ScenarioView.DefineCellsPane   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      E	viewmodel/clr-namespace:SIF.Visualization.Excel.ViewModel     5      =cells+clr-namespace:SIF.Visualization.Excel.Cells     5        � 	Resources  5
      K   ESIF.Visualization.Excel.ViewModel.OutputCellTypeToVisibilityConverter   OutputCellConverterJ   DSIF.Visualization.Excel.ViewModel.InputCellTypeToVisibilityConverter  InputCellConverterQ   KSIF.Visualization.Excel.ViewModel.InverseIntToVisibilityMultiValueConverter - )InverseIntToVisibilityMultiValueConverterJ   DSIF.Visualization.Excel.ViewModel.IntToVisibilityMultiValueConverter & "IntToVisibilityMultiValueConverter  DeleteImageSource �� 	UriSource  InputCellIcon  IntermediateCellIcon  OutputCellIcon �� DataType-   'SIF.Visualization.Excel.Cells.InputCell � ColumnDefinitions �� Path �� Mode4   .SIF.Visualization.Excel.Cells.IntermediateCell.   (SIF.Visualization.Excel.Cells.OutputCell��%�  &	        &	      &	 &     &	 9     &	 L     &	 �     &	 �     &	 �     (�� #    5      *, +)7  (�� w    5(      *, +)7  (�� �    58      *, +)7    5   
   68     5   
   67     5   
   6>     5   
   67   �� 5   
   $% ../icons/Delete_black_32x32.png?�60   �� 5   
   $ ../icons/input_clear.png?�6,   �� 5   
   $% ../icons/intermediate_clear.png?�63   �� 5   
   $ ../icons/output_clear.png?�6-   �� 5   
   "  6   .R�5      � $��0 2 0 2q�6    5      �� 5      �� 5      .+�5      �� 8��  $��17��5      $��0��6#   $��0 1 5 1q�5       �� 5!      $��50"�6H   $��1��5"      $��0 1 3 1q�5#      $��Center=�5$      ��5!      �� $ Location�$ TwoWay=�5$      5%      5&      �� 5(   
   "  6   .R�5)      � $��0 2 0 2q�6    5*      �� 5+      �� 5,      .+�5.      �� 8��  $��17��5/      $��0��6#   $��0 1 5 1q�50      �� 51      $��50"�6H   $��1��52      $��0 1 3 1q�53      $��Center=�54      ��51      �� $ Location�$ TwoWay=�54      55      56      �� 58   
   "  6   .R�59      � $��0 2 0 2q�6    5:      �� 5;      $
��auto �6'   �� 5<      $��* �6'   .+�5>      �� 8��  $��17��5?      $��0��6#   $��0 1 5 1q�5@      �� 5A      $��50"�6H   $��1��5B      $��0 1 3 1q�5C      $��Center=�5D      ��5A      �� $ Location�$ TwoWay=�5D      5E      5F      5H      .��5I      � $��0 0 0 10q�6    � RowDefinitions 5J   
   �� 5K      $��* �6   �� 5L      $
��auto �6    5N   
   �� 5O      $��* �6   .+�5Q   
   �� -   5         ��Name$ CellDefinitionsList��5Q      $��0��5R      $��0��6!    �� SelectionMode$ Extended=�5S      $��1 1 1 0q�5T      5V      �� 5W   
   $��1 0 1 1q�6   
����������	#FFABADB3$��0��5X      $��1��6   ._�5Y      �� 	 �� Orientation$	 
Horizontal=�6   $��0 5 10 5q�62   $��Right=�6D   .+�5Z      �� -   5        
 ��Name$
 DeleteDataButton��5Z      $��0q�5[      
������ .��5]      �� #��[ 6   $��15��6H   $��15��6S   5^      5_      5`      5a      5c      