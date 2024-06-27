using EMIAC.ViewModel.Helpers;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;

public class AdminViewModel : BindingHelper
{
    private readonly AdministratorService _administratorService;
    private Administrator _selectedAdministrator;

    public ObservableCollection<Administrator> Administrators { get; set; }
    public Administrator SelectedAdministrator
    {
        get => _selectedAdministrator;
        set
        {
            _selectedAdministrator = value;
            OnPropertyChanged();
        }
    }

    public ICommand AddCommand { get; }
    public ICommand UpdateCommand { get; }
    public ICommand DeleteCommand { get; }

    public AdminViewModel()
    {
        _administratorService = new AdministratorService();
        Administrators = new ObservableCollection<Administrator>();
        AddCommand = new RelayCommand2(async _ => await AddAdministrator());
        UpdateCommand = new RelayCommand2(async _ => await UpdateAdministrator(), () => SelectedAdministrator != null);
        DeleteCommand = new RelayCommand2(async _ => await DeleteAdministrator(), () => SelectedAdministrator != null);

        LoadAdministrators();
        SelectedAdministrator = new Administrator(); // инициализация нового администратора по умолчанию
    }

    private async void LoadAdministrators()
    {
        var admins = await _administratorService.GetAdministratorsAsync();
        Administrators.Clear();
        foreach (var admin in admins)
        {
            Administrators.Add(admin);
        }
    }

    private async Task AddAdministrator()
    {
        if (SelectedAdministrator == null) return;

        await _administratorService.CreateAdministratorAsync(SelectedAdministrator);
        LoadAdministrators();

        // Создаем нового пустого администратора для ввода новых данных
        SelectedAdministrator = new Administrator();
        OnPropertyChanged(nameof(SelectedAdministrator));
    }

    private async Task UpdateAdministrator()
    {
        if (SelectedAdministrator == null) return;

        await _administratorService.UpdateAdministratorAsync(SelectedAdministrator);
        LoadAdministrators();
    }

    private async Task DeleteAdministrator()
    {
        if (SelectedAdministrator == null) return;

        await _administratorService.DeleteAdministratorAsync(SelectedAdministrator.ID_Administrator);
        LoadAdministrators();

        // Создаем нового пустого администратора для ввода новых данных
        SelectedAdministrator = new Administrator();
        OnPropertyChanged(nameof(SelectedAdministrator));
    }
}
