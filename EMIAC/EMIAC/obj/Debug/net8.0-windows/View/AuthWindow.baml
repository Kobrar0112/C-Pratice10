   M S B A M L   `   `   `  ����@  <EMIAC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:EMIAC.View
EMIAC.View  5   	       EMIAC.View.AuthWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:EMIAC.View     5   	     � WindowStyle$
  None=�5	   	    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Авторизация��5   	   $	��240��6   $	��400��6*   $��Disabled=�66   $	��220��6j   $	��400��6z    � DataContext 5   	   �� *AuthViewModel+.��5      �  � Cursor$  ��6      primary#���   6    � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $	��110 �6   �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      $��20 �6   �� 5      $��20 �6   �� 5      $��20 �6   .+�5   
   �� $��5��6   $��2��6)   ���#007BFE6:   �� 5   
   $��5��6   $��1��6(   $��
ЕМИАС��65   ���#007BFE
�������$��20(�6j   $
��Wrap=�6x    �� TextAlignment$ Center=�6�   $
��Bold"�6�   $��20q�6�   �� 5   
   $��4��6   $��
30,51,10,6q�6)   $n��hЕдиная медицинская информационно-аналитическая система��6=   ���#007BFE
�������$��16(�6�   $
��Wrap=�6�   $ Center=�6�   $��1��6�   �� 5   
   $��5��6   $��2��6&   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Номер полиса��63     text#���  6a   ���#807F7F$��1q�6�   $	��369��6�   $��27��6�   ��6�   �� *PolisNumber+
 �� UpdateSourceTrigger$
 PropertyChanged=��� 5    
   -   5        $��3��5       $��1��6   $��4��6.   $	��178��6B   $��26��6N   ���#007BFE$��Я врач��6�   
�������$��42,12,10,12q�6�   �� 5!   
   -   5        $��3��5!      $��2��6   $	��178��62   $��26��6>   ���#007BFE$��10,12,152,12q�6_   $��
Войти��6u   
���������6�   �� *LoginCommand+6�   �� 5"   
   -   5        $��4��5"      
������  J� Opacity$ 5Q�6H   $��
0,-6,0,104q�6T   $��2��6h   $��18��6y   $��18��6�   ��5#      �� 5$       �� ImageSource$ Images/KrestikBel.png��6   5&      �� 5'   
   -   5        $��2��5'      
������ $��22��6M   $��22��6Y   $��3��6d   $��18,-2,18,108q�6x   $��2��6�   ��5(      �� 5)      $ Images/KvadratBel.png��6   5+      �� 5,   
   -   5        $��2��5,      
������ $��20��6K   $	��Top=�6W   ��5-      �� 5.      $ Images/LiniyaBel.png��6   50      51      52      