   M S B A M L   `   `   `  ����R  NSIF.Visualization.Excel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:SIF.Visualization.Excel.ViewModel!SIF.Visualization.Excel.ViewModel  5      7    1SIF.Visualization.Excel.ScenarioView.ScenarioPane   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      E	viewmodel/clr-namespace:SIF.Visualization.Excel.ViewModel     5        � 	Resources  5
      N   HSIF.Visualization.Excel.ViewModel.DescriptionToShortDescriptionConverter *  &DescriptionToShortDescriptionConverterG   ASIF.Visualization.Excel.ViewModel.InverseIntToVisibilityConverter # InverseIntToVisibilityConverter@   :SIF.Visualization.Excel.ViewModel.IntToVisibilityConverter  IntToVisibilityConverter  AddImageSource �� 	UriSource  DeleteImageSource 
 Search��%!  &	        &	      &	 &     &	 9     &	 v     &	 �       5   
   6;     5   
   64     5   
   6-   �� 5   
   $) #../icons/112_Plus_Grey_32x32_72.png?�6-   �� 5   
   $% ../icons/Delete_black_32x32.png?�60   �� 5   
   $" ../icons/magnifier_16xLG.png?�6%   5      .��5      � .+�5   
   �� $	��Top=�6   $��Center=�6,   $��14(�6I   $��WrapWithOverflow=�6W   $N��HNo scenarios created. Please create a new scenario from the Ribbon menu.��5      ���#333333$
��0 20q�6y   y�5      �� *Scenarios.Count+ �� 	Converter# [ 5   y   � 5   
   $��
0 10 10 10q�6   y�5      �� *Scenarios.Count+# [  � RowDefinitions 5      �� 5      $
��auto �6    �� 5       $��* �6    �� 5!      $
��auto �6    .+�5#      � $��0��6    � ColumnDefinitions 5$      �� 5%      $��* �6'   �� 5&      $
��auto �6'   .+�5(      �� -   5         ��Name$ 	searchBox��5(      $��12(�5)      $��0��5*      $��1 1 0 1q�5+      �� 5,      $��1��6   $��0 1 1 1q�5-      
����������	#FFABADB3._�5.      �� #��[ 6   $��10��5/      $��10��6#   $�� 0 0 3 0q�50      51      52      �� 55      -   5         ��Name$ ScenariosList��55      $��1��6-   $��Segoe UI)�56      $��12(�57      $��	0 10 0 10q�58      $��Disabled=�59       �� SelectionMode$ Single=�5:      ��5<      �� 5=      .R�5>      ��  �� Orientation$ Vertical=�6%   .+�5?      �� -   5        $��SemiBold"�5@   (   $��5 0 0 0q�6>   ��5?   (   �� 	 �� Path$	 Title�5A   (   � 5B       5C   "   �� 5D   &   $
��auto �64    5F   "   �� 5G   &   $��* �67   �� 5H   &   $
��auto �67   .+�5K   "   �� -   5        $��0��5L   (   $��0��68   $
��Wrap=�5M   (   
�������$��0 0 0 3q�5O   (   ��5K   ,   �� $	 Description�# [  5P   (   �� 5Q   "   
 ��Name$
 DeleteScenarioButton��6)   -   5        $��0 5 5 5q�5R   %   $��1��5S   %   $��0��65   $��Center=�5T   %   $��Right=�6@   $��0q�5U   %   
������ .��5W   &   �� #��[ 6,   $��15��6X   $��15��6c   5X   #   5Y      5Z      5[      5]      �� 5^      $ 
Horizontal=�6   $��2��63   .+�5_      �� $��Scenario Count: ��6   $
��5 10q�64   $��12(�6B   �� 5`      -   5         ��Name$ countTextBlock��5`      $
��0 10q�64   $��2��6B   $��12(�6O   5a      5b      5c      5d      