   M S B A M L   `   `   `  ���� @  <EMIAC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:EMIAC.View
EMIAC.View      EMIAC.View.AdminCRUDAdmin   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:EMIAC.View       � WindowStyle$
  None=� � Title$ AdminCRUDAdmin��$	��850��$
��1530�� � DataContext �� *AdminViewModel+.���    primary#���    � RowDefinitions �� $��50 ��� $��40 ��� $��40 ��� $��40 ��� $��40 ��� $��40 ��� $��40 ��� $��40 ��� �� $��40 ��� $��40 ��� $��40 ��� $��40 � � ColumnDefinitions �� �� $	��244 ��� $��35 ��� $��35 ��� $��35 �.+��� $��5�����#007BFE�� $-��'ЕМИАС - Администратор��$��20(�
�������$
��Wrap=�$
��Bold"�$��10,5,330,16q�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WeatherNight=�
�������$��30��$��30��$��	269,5,0,0q��� -   $��266,4,889,14q�
������ 
������ &   System.Windows.Controls.DataGrid  $��1��$��12��   
IsReadOnly$
 True��   AutoGenerateColumns$ False��  	secondary#���    text#���  ���� *Administrators+ �� SelectedItem �� *SelectedAdministrator+	   Columns	 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn
   Header$
 ID��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *ID_Administrator+  $
 Фамилия�� �� *AdminSurname+  $
 Имя�� �� *	AdminName+  $
 Отчество�� �� *AdminMiddleName+  $
 
Логин�� �� *AdminEnterLogin+  $
 Пароль�� �� *AdminEnterPassword+�� -    ��Name$ ComboPerexodAdmin��$��1��$��1��$��4��$��30��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$' !Роль пользователя��$��	30,0,30,0q�#���  �� $��2��$��1��$��4��$" Логин для входа��$��	30,5,30,5q�#���  ���� *'%SelectedAdministrator.AdminEnterLogin+ �� UpdateSourceTrigger$ PropertyChanged=��� $��3��$��1��$��4��$$ Пароль для входа��$��	30,5,30,5q�#���  ���� **(SelectedAdministrator.AdminEnterPassword+$ PropertyChanged=��� $��4��$��1��$��4��$ Фамилия��$��	30,5,30,5q�#���  ���� *$"SelectedAdministrator.AdminSurname+$ PropertyChanged=��� $��5��$��1��$��4��$ Имя��$��	30,5,30,5q�#���  ���� *!SelectedAdministrator.AdminName+$ PropertyChanged=��� $��6��$��1��$��4��$ Отчество��$��	30,5,30,5q�#���  ���� *'%SelectedAdministrator.AdminMiddleName+$ PropertyChanged=��� $��9��$��1��$��4��
����������#007BFE$��Добавить��$��	30,5,30,3q����� *
AddCommand+�� $��10��$��1��$��4��
����������#007BFE$��Изменить��$��	30,5,30,3q����� *UpdateCommand+�� $��11��$��1��$��4��
����������#007BFE$��Удалить��$��	30,5,30,3q����� *DeleteCommand+�� -   $��12��$��1��$��4��
����������#FE0000$&�� Выйти из аккаунта��$��	30,5,30,3q��� -   $��2��
������ $��0,10,0,8q�$��25��$��25������  �� ImageSource$ Images/LiniyaBel.png���� -   $��3��
������ $��2��$��	0,10,30,8q�$��25��$��25������ $ Images/KvadratBel.png���� -   $��4��
������ $��	5,10,-2,8q�$��25��$��25������ $ Images/KrestikBel.png��