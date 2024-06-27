using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace EMIAC
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            if (File.Exists("theme.txt"))
            {
                Theme = File.ReadAllText("theme.txt");
            }
        }
        private static string theme;
        public static string Theme
        {
            get { return theme; }
            set
            {
                theme = value;
                var dict = new ResourceDictionary { Source = new Uri($"/Resources/{value}", UriKind.Relative) };


                Current.Resources.MergedDictionaries.RemoveAt(0);
                Current.Resources.MergedDictionaries.Insert(0, dict);

                var dec = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
                File.WriteAllText($"theme.txt", value);
            }
        }
    }

}


