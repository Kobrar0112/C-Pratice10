   M S B A M L   `   `   `  ���� @  <EMIAC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:EMIAC.View
EMIAC.View      EMIAC.View.AuthWindow   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:EMIAC.View       � WindowStyle$
  None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Title$ Авторизация��$	��240��$	��400��$��Disabled=�$	��220��$	��400�� � DataContext �� *AuthViewModel+.���  � Cursor$  ��   primary#���    � RowDefinitions �� $��20 ��� $	��110 ��� �� $��50 � � ColumnDefinitions �� �� �� $��20 ��� $��20 ��� $��20 �.+��� $��5��$��2�����#007BFE�� $��5��$��1��$��
ЕМИАС�����#007BFE
�������$��20(�$
��Wrap=� �� TextAlignment$ Center=�$
��Bold"�$��20q��� $��4��$��
30,51,10,6q�$n��hЕдиная медицинская информационно-аналитическая система�����#007BFE
�������$��16(�$
��Wrap=�$ Center=�$��1���� $��5��$��2��)  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Номер полиса��  text#���  ���#807F7F$��1q�$	��369��$��27������ *PolisNumber+
 �� UpdateSourceTrigger$
 PropertyChanged=��� -   $��3��$��1��$��4��$	��178��$��26�����#007BFE$��Я врач��
�������$��42,12,10,12q��� -   $��3��$��2��$	��178��$��26�����#007BFE$��10,12,152,12q�$��
Войти��
����������� *LoginCommand+�� -   $��4��
������  J� Opacity$ 5Q�$��
0,-6,0,104q�$��2��$��18��$��18������  �� ImageSource$ Images/KrestikBel.png���� -   $��2��
������ $��22��$��22��$��3��$��18,-2,18,108q�$��2������ $ Images/KvadratBel.png���� -   $��2��
������ $��20��$	��Top=����� $ Images/LiniyaBel.png��