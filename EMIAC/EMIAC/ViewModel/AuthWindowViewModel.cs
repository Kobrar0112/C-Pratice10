using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using EMIAC.Models;
using EMIAC.ViewModel.Helpers;
using EMIAC.View;

namespace EMIAC.ViewModels
{
    public class AuthViewModel : BindingHelper
    {
        private string _polis;
        private string _errorMessage;
        private readonly ApiService _apiService;

        public string PolisNumber
        {
            get => _polis;
            set
            {
                _polis = value;
                OnPropertyChanged();
                (LoginCommand as RelayCommand)?.RaiseCanExecuteChanged();
            }
        }

        public string ErrorMessage
        {
            get => _errorMessage;
            set
            {
                _errorMessage = value;
                OnPropertyChanged();
            }
        }

        public ICommand LoginCommand { get; }

        public AuthViewModel()
        {
            _apiService = new ApiService();
            LoginCommand = new RelayCommand(async (obj) => await LoginAsync(), (obj) => CanLogin());
        }

        private bool CanLogin()
        {
            return !string.IsNullOrEmpty(PolisNumber) && PolisNumber.Length == 16;
        }

        public async Task<bool> LoginAsync()
        {
            if (!CanLogin())
            {
                MessageBox.Show("Номер полиса должен содержать 16 символов.");
                return false;
            }

            var patient = await _apiService.GetPatientByPolisAsync(PolisNumber);
            if (patient != null)
            {
                MessageBox.Show("Вход выполнен как Пациент");
                PatientMain mainUserWindow = new PatientMain();
                mainUserWindow.Show();
                return true;
            }

            MessageBox.Show("Неверные учетные данные");
            return false;
        }
    }
}