   M S B A M L   `   `   `  ����R  NSIF.Visualization.Excel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:SIF.Visualization.Excel.ViewModel!SIF.Visualization.Excel.ViewModel  5      +    %SIF.Visualization.Excel.CellErrorInfo   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      E	viewmodel/clr-namespace:SIF.Visualization.Excel.ViewModel     5        J� SnapsToDevicePixels  . 
������  � 	Resources 5
      @   :SIF.Visualization.Excel.ViewModel.SeverityToColorConverter   SeverityToColorConverterC   =SIF.Visualization.Excel.ViewModel.SelectionToOpacityConverter  SelectionToOpacityConverter��%:   &	        &	        5   
   6-     5   
   60   5      .��5      �� -   5        
���   �$��1q�5   !   
�������._�5   
   � -   5         �Name$ 
LayoutRoot��5       J� IsHitTestVisible . 
�������.+�5      �� -   5         ��Name$ SelectionRect��5       .  ���#00ADEF J� Opacity 5      �� *
IsSelected+ �� 	Converter# [ A� 5       .  
���   �$��0��6>   $��1q�6R   $��Stretch=�6]   $��Stretch=�6{   ��5      �� 5       �� Color 6&   �� *Finding.Severity+# [  5      (� 5       .  $��2q�6/   .��5      �� $��Arial)�6   
�������$��!��6B   $
��Bold"�6K   $��Center=�6]   $��Center=�6x   $��0 0 0 0q�6�   5       � ContextMenu 5      �� 5      -   5        	 ��Name$	 	PopupMenu��5      
 �� HasDropShadow
 .  $	��280��6G   ��5       �� 5!       �� 
TargetType" ��6*   .R�5"      ��   . 
�������
���   �$��1q�6g   ._�5#   "   � 
������� � ColumnDefinitions 5$   &   �� 5%   *   $��3 �6;   �� 5&   *   $��* �6;   �� 5'   *   $��* �6;    � RowDefinitions 5)   &   �� 5*   *   $
��Auto �68   �� 5+   *   $
��Auto �68   �� 5,   *   $
��Auto �68   �� 5-   *   $
��Auto �68   �� 5.   *   $
��Auto �68   �� 5/   *   $
��Auto �68   �� 50   *   $��22��68   $
��Auto �6G   .+�53   &   �� $��3��60   $��2��6D   ���#EEEEEE6U   �� 55   &   $��1��60   $��5q�6@   $
��Bold"�6k   $��2��6}   $��WrapWithOverflow=�6�   ��6K   �� *CausingElement+6�   �� 56   &   $��1��60   $��1��6@   $��5 0 5 8q�6M   $��2��6{   $��WrapWithOverflow=�6�   ��6^   �� *Description+6�   �� 57   &   $��1��60   $��1��6@   $��2��6M   
������� �� StrokeDashArray$	 1 3R�6o   $��1��6�   $��Bottom=�6�   �� 58   &   $��1��60   $��2��6@   $��5 5 5 2q�6M   $��Possible Solution��6^   $��SemiBold"�6w   $��2��6�   $��WrapWithOverflow=�6�   �� 59   &   $��1��60   $��3��6@   $��5 0 5 8q�6M   $��2��6�   $��WrapWithOverflow=�6�   ��6^   �� *Finding.PossibleSolution+6�   �� 5:   &   $��1��60   $��3��6@   $��2��6M   
�������$	 1 3R�6o   $��1��6�   $��Bottom=�6�   �� 5;   &   $��1��60   $��4��6@   $��5 5 5 2q�6M   $��
Background��6^   $��SemiBold"�6p   $��2��6�   $��WrapWithOverflow=�6�   �� 5<   &   $��1��60   $��5��6@   $��5 0 5 8q�6M   $��2��6�   $��WrapWithOverflow=�6�   ��6^   �� *Finding.Background+6�   �� 5=   &   $��1��60   $��5��6@   $��2��6M   
�������$	 1 3R�6o   $��1��6�   $��Bottom=�6�   �� 5?   &   $��Stretch=�60   $��10��6N   ��5@   *   �� 5A   .    6>   �� *Finding.Severity+# [  5C   '   �� 5F   &   $��5 -1 5 1q�60   $��1��6B   $��6��6R   $��Center=�6_   �� 5G   *   -   5        .�5G   L   False Positive6\   5H   '   5N   #   5O      5P      5R       � ToolTip 5T      _� 5U      -   5         _�Name$ PopupToolTip��5U      .��60   97Right click to get more information about this finding.5W      5Y      5Z      5\      