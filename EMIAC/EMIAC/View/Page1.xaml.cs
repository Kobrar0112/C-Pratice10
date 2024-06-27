using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace EMIAC.View
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class Page1 : Page
    {
        public Page1()
        {
            InitializeComponent();

            MainDobavCard card = new MainDobavCard();
            MainDobavCard card1 = new MainDobavCard();
            MainDobavCard card2 = new MainDobavCard();
            MainDobavCard card3 = new MainDobavCard();
            MainDobavCard card4 = new MainDobavCard();
            MainDobavCard card5 = new MainDobavCard();
            DobavAktiv.Items.Add(card);
            DobavAktiv.Items.Add(card1);
            DobavAktiv1.Items.Add(card2);
            DobavArxiv.Items.Add(card3);
            DobavArxiv.Items.Add(card4);
            DobavArxiv1.Items.Add(card5);

            // Изменение состояния окна
            var window = Window.GetWindow(this);
            if (window != null)
            {
                window.WindowState = WindowState.Maximized;
            }
        }

        private void SettingsClient(object sender, RoutedEventArgs e)
        {
            SettingsUserWindow settingsWindow = new SettingsUserWindow();
            settingsWindow.Show();

            var window = Window.GetWindow(this);
            if (window != null)
            {
                window.Close();
            }
        }

        private void Exit(object sender, RoutedEventArgs e)
        {
            var window = Window.GetWindow(this);
            if (window != null)
            {
                window.Close();
            }
        }

        private void FullEkran(object sender, RoutedEventArgs e)
        {
            var window = Window.GetWindow(this);
            if (window != null)
            {
                if (window.WindowState == WindowState.Maximized)
                {
                    window.WindowState = WindowState.Normal;
                }
                else
                {
                    window.WindowState = WindowState.Maximized;
                }
            }
        }

        private void Svernyt(object sender, RoutedEventArgs e)
        {
            var window = Window.GetWindow(this);
            if (window != null)
            {
                window.WindowState = WindowState.Minimized;
            }
        }

        private void ZapisiOpen(object sender, MouseButtonEventArgs e)
        {
            ZapisiUserWindow zapisiUserWindow = new ZapisiUserWindow();
            zapisiUserWindow.Show();

            var window = Window.GetWindow(this);
            if (window != null)
            {
                window.Close();
            }
        }
    }
}
