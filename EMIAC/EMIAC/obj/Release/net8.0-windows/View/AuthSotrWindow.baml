   M S B A M L   `   `   `  ���� @  <EMIAC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:EMIAC.View
EMIAC.View      EMIAC.View.AuthSotrWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:EMIAC.View       � WindowStyle$
  None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Title$1 +Авторизация сотрудника��$	��280��$	��400�� � DataContext �� *AuthSotrWindowViewModel+.���    primary#���    � RowDefinitions �� $��20 ��� $	��110 ��� �� ��  � ColumnDefinitions �� �� �� $��20 ��� $��20 ��� $��20 �.+��� $��2��$��5�����#007BFE�� $��1��$��5��$��
ЕМИАС�����#007BFE
�������$��20(�$
��Wrap=� �� TextAlignment$ Center=�$
��Bold"�$��20q��� $��1��$��5��$��30,50,30,10q�$n��hЕдиная медицинская информаицонно-аналитическая система�����#007BFE
�������$��16(�$
��Wrap=�$ Center=��� $��5��$��2��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин��  text#���  ���#7b857e$��1q�$	��369��$��27������ *Login+	 �� UpdateSourceTrigger$	 PropertyChanged=�G� -   $��5��$��3��$ Пароль��#���  ���#7b857e$��1q�$	��369��$��27���� -   $��4��$��1��$	��176��$��26�����#007BFE
�������$��Я пациент��$��4��$��44,11,10,10q��� -   $��4��$	��176��$��26�����#007BFE$��
Войти��
�������$��2��$��10,11,148,10q����� *LoginCommand2+�� -   $��2��
������ $��20��$��20������ 
 �� ImageSource$
 Images/LiniyaBel.png���� -   $��3��
������ $��20��$��20������ $
 Images/KvadratBel.png���� -   $��4��
������ $��17��$��17������ $
 Images/KrestikBel.png��