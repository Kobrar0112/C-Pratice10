using EMIAC.Service;
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
using System.Windows.Shapes;

namespace EMIAC.View
{
    /// <summary>
    /// Логика взаимодействия для PatientMain.xaml
    /// </summary>
    public partial class PatientMain : Window
    {
        public PatientMain()
        {
            InitializeComponent();
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AuthWindow mainWindow = new AuthWindow();
            mainWindow.Show();
            Close();
        }

        private void TreeViewItem_Selected(object sender, RoutedEventArgs e)
        {
            frm.Content = new Page1();
        }




        private void DoctorAppointment(object sender, RoutedEventArgs e)
        {
            frm.Content = new Priemi_Page();
        }
        private void TreeViewItem_Selected_3(object sender, RoutedEventArgs e)
        {
            frm.Content = new zapispri();
        }
        private void TreeViewPriem_Selected(object sender, RoutedEventArgs e)
        {
            frm.Content = new lolpriemi();
        }

        private void SettingsButton_Click(object sender, RoutedEventArgs e)
        {
            frm.Content = new ProfileApp();
        }

        private void TreeViewItem_Selected_1(object sender, RoutedEventArgs e)
        {
            frm.Content = new lolanalyze();
        }

        private void TreeViewItem_Selected_2(object sender, RoutedEventArgs e)
        {
            frm.Content = new lolsearch();
        }

    }
}
