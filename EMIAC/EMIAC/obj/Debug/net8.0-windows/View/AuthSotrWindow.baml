   M S B A M L   `   `   `  ����@  <EMIAC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:EMIAC.View
EMIAC.View  5   	       EMIAC.View.AuthSotrWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:EMIAC.View     5   	     � WindowStyle$
  None=�5	   	    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$1 +Авторизация сотрудника��5   	   $	��280��6(   $	��400��65    � DataContext 5   	   �� *AuthSotrWindowViewModel+.��5      �    primary#���   6    � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $	��110 �6   �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      $��20 �6   �� 5      $��20 �6   �� 5      $��20 �6   .+�5   
   �� $��2��6   $��5��6&   ���#007BFE6:   �� 5   
   $��1��6   $��5��6!   $��
ЕМИАС��65   ���#007BFE
�������$��20(�6j   $
��Wrap=�6x    �� TextAlignment$ Center=�6�   $
��Bold"�6�   $��20q�6�   �� 5   
   $��1��6   $��5��6!   $��30,50,30,10q�65   $n��hЕдиная медицинская информаицонно-аналитическая система��6J   ���#007BFE
�������$��16(�6�   $
��Wrap=�6�   $ Center=�6�   �� 5    
   $��5��6   $��2��6&   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин��63     text#���  6Z   ���#7b857e$��1q�6�   $	��369��6�   $��27��6�   ��6�   �� *Login+	 �� UpdateSourceTrigger$	 PropertyChanged=�G� 5!   
   -   5        $��5��5!      $��3��6*   $ Пароль��67   #���  6_   ���#7b857e$��1q�6�   $	��369��6�   $��27��6�   6�   �� 5"   
   -   5        $��4��5"      $��1��6   $	��176��6.   $��26��6:   ���#007BFE
�������$��Я пациент��6n   $��4��6�   $��44,11,10,10q�6�   6�   �� 5#   
   -   5        $��4��5#      $	��176��6   $��26��6*   ���#007BFE$��
Войти��6K   
�������$��2��6�   $��10,11,148,10q�6�   ��6�   �� *LoginCommand2+�� 5$   
   -   5        $��2��5$      
������ $��20��6L   $��20��6W   ��5%      �� 5&      
 �� ImageSource$
 Images/LiniyaBel.png��6   5(      �� 5)   
   -   5        $��3��5)      
������ $��20��6M   $��20��6X   ��5*      �� 5+      $
 Images/KvadratBel.png��6   5-      �� 5.   
   -   5        $��4��5.      
������ $��17��6I   $��17��6T   ��5/      �� 50      $
 Images/KrestikBel.png��6   52      53      54      