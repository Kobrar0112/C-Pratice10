using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;
using EMIAC.Models;
using EMIAC.ViewModel.Helpers;
using System.Windows.Input;
using EMIAC.View;

namespace EMIAC.ViewModels
{
    public class AuthSotrWindowViewModel : BindingHelper
    {
        private string _login;
        private string _password;
        private readonly ApiService _apiService;

        public string Login
        {
            get => _login;
            set { _login = value; OnPropertyChanged(); }
        }

        public string Password
        {
            get => _password;
            set { _password = value; OnPropertyChanged(); }
        }

        public ICommand LoginCommand2 { get; }

        public AuthSotrWindowViewModel()
        {
            _apiService = new ApiService();
            LoginCommand2 = new RelayCommand(async (obj) => await LoginAsync());
        }

        public async Task<bool> LoginAsync()
        {
            var admin = await _apiService.GetAdministratorAsync(Login, Password);
            if (admin != null)
            {
                MessageBox.Show("Вход выполнен как Администратор");
                AdminCRUDAdmin adminCRUDAdmin = new AdminCRUDAdmin();
                adminCRUDAdmin.Show();
                return true;
            }

            var doctor = await _apiService.GetDoctorAsync(Login, Password);
            if (doctor != null)
            {
                MessageBox.Show("Вход выполнен как Врач");
                DoctorWindow doctorWindow = new DoctorWindow();
                doctorWindow.Show();
                return true;
            }

            MessageBox.Show("Неверные учетные данные");
            return false;
        }
    }
}