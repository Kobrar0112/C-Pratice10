using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace EMIAC.View
{
    /// <summary>
    /// Логика взаимодействия для ProfileApp.xaml
    /// </summary>
    public partial class ProfileApp : Page
    {
        public ProfileApp()
        {
            InitializeComponent();
        }
        private void ComboBoxItem_Selected(object sender, RoutedEventArgs e)
        {
            App.Theme = "1white.xaml";
        }

        private void ComboBoxItem_Selected_1(object sender, RoutedEventArgs e)
        {
            App.Theme = "black.xaml";
        }
    }
}
