   M S B A M L   `   `   `  ����M  IWorkoutApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WorkoutApplicationWorkoutApplication  5   	   U/clr-namespace:WorkoutApplication.MVVM.ViewModel!WorkoutApplication.MVVM.ViewModel  5   	   #    WorkoutApplication.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:WorkoutApplication     5   	   E	viewModel/clr-namespace:WorkoutApplication.MVVM.ViewModel     5   	   $	��800��5	   	   $
��1400��6     � WindowStyle$
  None=�5
   	    � 
ResizeMode$ 	CanResize=�5   	   
������  � AllowsTransparency .  � WindowStartupLocation$ Manual=�5   	    � Left$ 0��5   	   
 � Top$ 0��6    � DataContext 5      5  /WorkoutApplication.MVVM.ViewModel.MainViewModel  5   
   6$   .��5      �� ���#99ccff �� CornerRadius$ 10��5      $��1q�5      ���#4da6ff._�5   
   �  � ColumnDefinitions 5      �� 5      $	��240 �6#   �� 5      	 � RowDefinitions	 5#      �� 5$      $��25 �6    �� 5%      $��90 �6    �� 5&      6"   .+�5*      �� ���#4da6ff$��0��6*   $��2��67   �� 5+      ���#000099$��1��6*   $��2��67   �� 5/      $��Workout Planner��6   $��1��50      $��30(�51      $��	ExtraBold"�52      $
��Wrap=�53      $��Center=�54      $��Center=�55      
�������$��5q�57      �� 5:      $��2��6   $��0,15,0,0q�6&   .+�5;      	� $
��Home��6   $��50��5<      
�������$��25(�5>      $��Center=�5?         MenuButtonTheme#��[  5@      
 d� 	IsChecked$

 TrueY�5A      ��5B      �� *HomeViewCommand+	� 5M      $��Monday��6   $��50��5N      
�������$��25(�5P      $��Center=�5Q      #��[  5R      ��5S      �� *MondayViewCommand+	� 5T      $��Tuesday��6   $��50��5U      
�������$��25(�5W      $��Center=�5X      #��[  5Y      ��5Z      �� *TuesdayViewCommand+	� 5[      $��	Wednesday��6   $��50��5\      
�������$��25(�5^      $��Center=�5_      #��[  5`      ��5a      �� *WednesdayViewCommand+	� 5b      $��Thursday��6   $��50��5c      
�������$��25(�5e      $��Center=�5f      #��[  5g      ��5h      �� *ThursdayViewCommand+	� 5i      $��Friday��6   $��50��5j      
�������$��25(�5l      $��Center=�5m      #��[  5n      ��5o      �� *FridayViewCommand+	� 5p      $��Saturday��6   $��50��5q      
�������$��25(�5s      $��Center=�5t      #��[  5u      ��5v      �� *SaturdayViewCommand+	� 5w      $��Sunday��6   $��50��5x      
�������$��25(�5z      $��Center=�5{      #��[  5|      ��5}      �� *SundayViewCommand+	� 5~      $��Workouts��6   $��50��5      
�������$��25(�5�      $��Center=�5�      #��[  5�      ��5�      �� *WorkoutsViewCommand+	� 5�      $��	Stretches��6   $��50��5�      
�������$��25(�5�      $��Center=�5�      #��[  5�      ��5�      �� *StretchesViewCommand+	� 5�      $��Notes��6   $��50��5�      
�������$��25(�5�      $��Center=�5�      #��[  5�      ��5�      �� *NotesViewCommand+	� 5�      $��Logout��6   $��50��5�      
�������$��25(�5�      $��Center=�5�      #��[  5�      5�      �� 5�      $��2��6   $��2��6*   $��10 10 10 10q�5�      ��5�      �� *CurrentView+5�      5�      5�      