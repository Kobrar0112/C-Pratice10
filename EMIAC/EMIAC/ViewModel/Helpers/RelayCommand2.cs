using System.Windows.Input;

public class RelayCommand2 : ICommand
{
    private readonly Func<object, Task> _execute;
    private readonly Func<bool> _canExecute;

    public RelayCommand2(Func<object, Task> execute, Func<bool> canExecute = null)
    {
        _execute = execute ?? throw new ArgumentNullException(nameof(execute));
        _canExecute = canExecute;
    }

    public event EventHandler CanExecuteChanged;

    public bool CanExecute(object parameter)
    {
        return _canExecute?.Invoke() ?? true;
    }

    public async void Execute(object parameter)
    {
        await _execute(parameter);
    }

    public void RaiseCanExecuteChanged()
    {
        CanExecuteChanged?.Invoke(this, EventArgs.Empty);
    }
}