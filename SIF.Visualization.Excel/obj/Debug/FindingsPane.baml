   M S B A M L   `   `   `  ����R  NSIF.Visualization.Excel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:SIF.Visualization.Excel.ViewModel!SIF.Visualization.Excel.ViewModel  5      *    $SIF.Visualization.Excel.FindingsPane   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      E	viewmodel/clr-namespace:SIF.Visualization.Excel.ViewModel     5        � 	Resources  5
      @   :SIF.Visualization.Excel.ViewModel.IntToVisibilityConverter   IntToVisibilityConverterG   ASIF.Visualization.Excel.ViewModel.InverseIntToVisibilityConverter # InverseIntToVisibilityConverter@   :SIF.Visualization.Excel.ViewModel.SeverityToColorConverter  SeverityToColorConverterG   ASIF.Visualization.Excel.ViewModel.BackgroundToForegroundConverter # BackgroundToForegroundConverterL   FSIF.Visualization.Excel.ViewModel.SingleViolationToVisibilityConverter ( $SingleViolationToVisibilityConverterS   MSIF.Visualization.Excel.ViewModel.SingleViolationToInverseVisibilityConverter / +SingleViolationToInverseVisibilityConverterD   >SIF.Visualization.Excel.ViewModel.BooleanToVisibilityConverter   BooleanToVisibilityConverter  ExpanderToggleButton �� 
TargetType ��Name'  !System.Windows.VisualStateManager   VisualStateGroups%	  System.Windows.VisualStateGroup 	  States 
  System.Windows.VisualState 
  
Storyboard �� 
TargetName �� TargetProperty8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime	 �� Value
 R� KeyTime  System.Windows.Visibility   Hidden R� Value   Visible F�Name �� Color  FlatExpanderStyle �� 
TargetType �� Property �� Value � RowDefinitions ��Name �� CornerRadius � ColumnDefinitions � OverridesDefaultStyle d� 	IsChecked �� Mode �� RelativeSource �� Triggers P� Property P� Value �� 
TargetName �� ElementName��%�	  &	        &	      &	 &     &	 9     &	 L     &	 _     &	 r     &	 �     &	     7    5   
   6-     5   
   64     5   
   6-     5   
   64     5   
   69     5   
   6@     5   
   61   �� 5   
   " d�67   .R�5      �� $ Border��6   ���#EEEEEE 5      	  5      CommonStates��. 5      
  
Normal��6&   
  5      	MouseOver��. 5      �� .��5   "   �� $ Border��6?   $0 *(Panel.Background).(SolidColorBrush.Color)�6^   .g�5   &     $ 0��6:   $	 #CCCCCC��6F   5   #   5      5      
  5      Pressed��. 5       �� .��5!   "   �� $ Border��6?   $0 *(Panel.Background).(SolidColorBrush.Color)�6^   .g�5"   &     $ 0��6:   $	 #AAAAAA��6F   5#   #   5$      5%      5&      	  5'      CheckStates��. 5(      
  Checked��. 5)      �� .��5*   "   T� $ CollapsedArrow��6@   $ (UIElement.Visibility)�6g   ..�5+   &   i� $
 0��6=   # Z 6I   5,   #   T� 5-   "   $ ExpandededArrow��6@   $ (UIElement.Visibility)�6h   ..�5.   &   i� $
 0��6=   # Z 6I   5/   #   50      51      
  52      	Unchecked��6&   
  53      Indeterminate��6&   54      ._�56      � .+�57      F� $ CollapsedArrow��6   $��Center=�58      $��Center=�59      "����        � 	=  	= � z     	��5;      �� 5<      $ #333333��6.   5>      F� 5?      $ ExpandededArrow��6   $��Center=�5@      $��Center=�5A      "����     	= � 	=     � z  	= 	$y�	Collapsed=�5C      ��5D      �� 5E      $ #333333��6.   5G      5H      5I      5J      �� 5K   
   " 9�6*   .�5L      ��  � �� 5M      �� 5N      " 9�6&   .R�5O      �  5P      �� 5Q   "   $
��Auto �60   �� 5R   "   $ 
ContentRow��60   $��0 �6D    5T      	  5U   "   CommonStates��. 5V   &   
  
Normal��62   5W   #   .+�5Y      �� $ Border��6%   $��0��5Z   %   $��1q�5[   %   $ 2,2,0,0��5\   %   ._�5]   "   �  5^   &   �� 5_   *   $��* �6;   �� 5`   *   $��20 �6;   .+�5b   &   d� $��1��63    . 8��   5c   3   �� *
IsExpanded+$ TwoWay=� �� *TemplatedParent+5g   3   �� 5h   &   $��4q�67   $��Header��5i   7   ��. 5j   7   5k   #   5l      �� 5m      $��1��6/   5n       5o      P� 5p       �@9�
IsExpanded . . �5q   "   �� $ 
ContentRow��6)    6S   �� *DesiredHeight+$ Content�� � ��5r      5u      5w      5x      5y      .��5{      � .+�5~   
   �� $	��Top=�6   $��Center=�6,   $��14(�6I   $��WrapWithOverflow=�6W   $C��=No findings data. Please trigger a scan from the Ribbon menu.��5�      ���#333333$
��0 20q�6n   y�5      �� *Findings.Count+  �� 	Converter#  [ 5�   n   �� 5�   
   -   5        ! ��Name$! FindingsList��5�      $��Segoe UI)�6(   $��12(�6>   $
��5 10q�5�      
������ $��0q�5�      $��Disabled=�6&   " �� SelectionMode$" Single=�5�      ��5�      �� 5�      .R�5�      � # � Orientation$# Vertical=�6    5�      ��5�      �� 5�      " ��6   .�5�      ��  � �� 5�      �� 5�      " ��6.   .R�5�   "   � $ �Name$$ 
LayoutRoot��6E   $��Stretch=�6'   $��0 5 5 5q�6Y   
������� 5�   &   �� 5�   *   $
��Auto �68   �� 5�   *   $��* �68   �� 5�   *   $
��Auto �68    5�   &   �� 5�   *   $��7 �6;   �� 5�   *   $��* �6;   �� 5�   *   $
��Auto �6;   .+�5�   &   �� ���#AAAAAA$��1��6A   $��3��6U   $��3��6f   �� 5�   &   % ��Name$% BackgroundRect��60   $��1q�6H   $��3��6S   $��3��6d   & J� Opacity$& 0Q�6x   ���#00ADEF6�   �� 5�   &   $% SelectionRect��60   $��1q�6G   $��3��6R   $��3��6c   $& 0Q�6w   ���#00ADEF6�   �� 5�   &   $��3��60   $��1 1 0 1q�6A   ��5�   *   �� 5�   .    6>   �� *
Severity+#  [ 5�   '   �� 5�   &   $��1��6F   $��16(�5�   ,   $��10 5 5 5q�6:   $	��Top=�6L   $
��Wrap=�6d   ��5�   0   �� *Name+5�   d   �� 5�   &   $��2��6J   $
��Bold"�6Z   $��16(�5�   ,   $��5 5 10 5q�6:   ��5�   0   �� *
Severity+5�   :   �� 5�   &   $��1��6M   $��1��6]   $��10 0 5 5q�5�   ,   $��CharacterEllipsis=�6>   $	��Top=�6_   $
��Wrap=�6w   ��5�   0   �� *Description+5�   w   9� 5�   &   ' 9�Name$' ViolationsExpander��6/   #��[ 6K   $��Stretch=�6v   $��2��6�   $��1��6�   $��10 5 5 5q�5�   +   $��2��6=   y�6J   �� *Violations.Count+#  [  ��5�   *   �� 5�   .   $��	-11 0 0 0q�69   ( �� Orientation$( 
Horizontal=�6L   .+�5�   2   �� $��5 1 6 0q�6h    6;   �� *	IsVisible+$ TwoWay=�6h   �� 5�   2   $��Violations (��6<   $
��Bold"�6P   �� 5�   2   $
��Bold"�6^   ��6<   �� *Violations.Count+6^   �� 5�   2   $��)��6<   $
��Bold"�6E   5�   /   .��5�   *   � $��-11 5 -6 -6q�6/   $��1��6D   $��Stretch=�6Q   .+�5�   .   �� -   5        $" Extended=�5�   6   
������ $��0q�6h   ) �� SelectedIndex$) -1��6|   }�.  $��Disabled=�5�   6   $��Stretch=�5�   6   ��6T   �� *ViolationsView+��5�   2   �� 5�   6   " ��6<   .�5�   :   ��  � �� 5�   >   �� 5�   B   " ��6R   .R�5�   F   � $
$ Root��6K   * � ContextMenu* 5�   J   �� 5�   N   .@�5�   R   m� -   5        $��False Positive��5�   [   + m� 	IsChecked+ 6�   �� *IsFalsePositive+5�   O   .+�5�   J   �� $% FalsePositiveRect��6T   $��0 0 1 1q�6�   $& 0Q�6�   ���#EEEEEEy�6o   �� *IsFalsePositive+#  [ 6�   � 5�   J   $$ GroupViolationRoot��6O   $��40��6�   y�6k   �� #  [  5�   N   �� 5�   R   $
��Auto �6c   �� 5�   R   $��* �6c   �� 5�   R   $
��Auto �6c    5�   N   �� 5�   R   $��* �6`   �� 5�   R   $
��Auto �6`   .+�5�   N   �� $��9 6 6 6q�6�   $	��Top=�6�   $��2��6�   $
��Left=�6�    6W   �� *	IsVisible+$ TwoWay=�6�   �� 5�   N   $��Center=�6X   $��1��6s   $
��Bold"�6�   $
��Wrap=�6�   ��6�   �� 6�   �� 5�   N   $) -1��6V   $��Disabled=�6i   $
��Auto=�6�   $" Single=�6�   $��	0 -1 0 -1q�5�   V   $��Center=�6i   $��1��6�   $��1��6�   $��0q�6�   , �� SelectedItem, 5�   �   �� *SelectedViolation+��5�   �   �� *
Violations+��5�   R   �� 5�   V   " ��6\   .�5�   Z   ��  � �� 5�   ^   �� 5�   b   " ��6r   .R�5�   f   � $��30��6k   $	��0 2q�6z    5�   j   �� 5�   n   $��* �6|   �� 5�   n   $
��Auto �6|   .+�5�   j   �� $ BackgroundRect��6�   $��	0 -1 0 -2q�6q   $��2��6�   ���#00ADEF$& 0Q�6�   �� 5�   j   $ SelectionRect��6�   $��	0 -1 0 -2q�6q   $��2��6�   ���#00ADEF$& 0Q�6�   �� 5�   j   
�������$	��Top=�6�   $��1��6�   $��0 -2 1 0q�6�   $��1��6�   - �� StrokeDashArray$	- 2 4R�6�   �� 5�   j   $	��5 0q�6t   $
��Bold"�6�   $��Center=�6�   $
��Wrap=�6�   ��6�   �� *CausingElement+6�   �� 5�   j   $	��5 0q�6t   $��1��6�   $
��Wrap=�6�   ��6�   �� *Description+6�    5�   j   	  5�   n   CommonStates��. 5�   r   
  
Normal��6~   
  5�   r   	MouseOver��. 5�   v   �� .��5�   z   W� 	. W� To$
. 0.12X�6�   $ BackgroundRect��6�   $ Opacity�6�   / g� Duration$/ 0D�6�   5�   w   5�   s   5�   o   	  5�   n   SelectionStates��. 5�   r   
  Selected��. 5�   v   �� .��5   z   W� $
. 0.25X�6�   $ SelectionRect��6�   $ Opacity�6�   $/ 0D�6�   5  w   5  s   
  5  r   
Unselected��6~   5  o   5  g   5  c   5	  [   5
  W   5  O   �� 5  N   $��Center=�6X   $	��8 0q�6s   $
��Bold"�6�   $��2��6�   ��6�   �� *
Severity+6�   �� 5  N   
�������$��3��6f   $	��Top=�6z   $��1��6�   $��0 0 1 0q�6�   $��1��6�   $	- 2 4R�6�   5  K   � 5  J   $$ 
LayoutRoot��6O   $��40��6�   y�6c   �� #  [  5  N   �� 5  R   $
��Auto �6c   �� 5  R   $��* �6c   �� 5  R   $
��Auto �6c    5  N   �� 5  R   $��* �6`   �� 5  R   $
��Auto �6`   �� 5  R   $
��Auto �6`   .+�5  N   �� $ BackgroundRect��6f   $��0 1 0 0q�6U   $��3��6~   ���#00ADEF$& 0Q�6�   $��3��6�   �� 5  N   $ SelectionRect��6f   $��0 1 0 0q�6U   $��3��6}   ���#00ADEF$& 0Q�6�   $��3��6�   �� 5!  N   $��9 6 6 6q�6�   $	��Top=�6�   $��2��6�   $
��Left=�6�    6W   �� *	IsVisible+$ TwoWay=�6�   �� 5"  N   $
��Bold"�6x   $��Center=�6�   $��1��6�   $
��Wrap=�6�   ��6X   �� *CausingElement+6�   �� 5#  N   $��0 -3 0 4q�6X   $��Center=�6j   $��1��6�   $��1��6�   $
��Wrap=�6�   ��6�   �� *Description+6�   �� 5$  N   $��Center=�6X   $	��8 0q�6s   $
��Bold"�6�   $��2��6�   ��6�   �� *
Severity+6�   �� 5&  N   
�������$��3��6f   $	��Top=�6z   $��1��6�   $��0 0 1 0q�6�   $��1��6�   $	- 2 4R�6�   � 5(  N   $$ FalsePositiveText2��6�   $��2��6�   $��0 0 0 3q�6�   $��1��6�   $��2��6�   $��Center=�5)  S   y�5(  S   �� *IsFalsePositive+#  [ .+�5*  R   � $# 
Horizontal=�6\   $��Center=�6u   .+�5+  V   �� $��This is a false positive.��6`   
���  ��6�   5/  S   50  O   52  K    55  J   	  56  N   CommonStates��. 57  R   
  
Normal��6^   
  58  R   	MouseOver��. 59  V   �� .��5;  Z   W� $
. 0.12X�6j   $ BackgroundRect��6t   $ Opacity�6�   $/ 0D�6�   5<  W   5=  S   5>  O   	  5?  N   SelectionStates��. 5@  R   
  Selected��. 5A  V   �� .��5C  Z   W� $
. 0.25X�6j   $ SelectionRect��6t   $ Opacity�6�   $/ 0D�6�   5D  W   5E  S   
  5F  R   
Unselected��6^   5G  O   5I  G   5J  C   5L  ;   5M  7   5O  /   5Q  +   5S  '    5U  &   	  5V  *   CommonStates��. 5W  .   
  
Normal��6:   
  5X  .   	MouseOver��. 5Y  2   �� .��5Z  6   W� $. 0X�6F   $ BackgroundRect��6M   $ Opacity�6t   $/ 0D�6�   5[  3   5\  /   5]  +   	  5^  *   SelectionStates��. 5_  .   
  Selected��. 5`  2   �� .��5b  6   W� $. 0X�6F   $ SelectionRect��6M   $ Opacity�6s   $/ 0D�6�   5c  3   5d  /   
  5e  .   
Unselected��6:   5f  +   5h  #   5i     5k     5l     5n     5p     5q     