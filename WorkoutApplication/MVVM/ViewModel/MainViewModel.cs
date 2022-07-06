using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WorkoutApplication.Core;

namespace WorkoutApplication.MVVM.ViewModel
{
    internal class MainViewModel : ObservableObject
    {
        public RelayCommand HomeViewCommand { get; set; }

        public RelayCommand CalendarViewCommand { get; set; }  
        public HomeViewModel HomeVm { get; set; }
        public CalendarViewModel CalendarVm { get; set; }

        private object _currentView;

        public object CurrentView
        {
            get { return _currentView; }
            set 
            {   _currentView = value; 
                OnPropertyChanged(); //This ensures that the view changes
            }
        }

        //The followinging code is used to ensure that the views load properly when the buttons in the navigation bar are clicked
        public MainViewModel()
        {
            HomeVm = new HomeViewModel();
            CalendarVm = new CalendarViewModel();

            CurrentView = HomeVm;

            HomeViewCommand = new RelayCommand(o => 
            { 
                CurrentView = HomeVm;   
            });

            CalendarViewCommand = new RelayCommand(o =>
            {
                CurrentView = CalendarVm;
            });

        }
    }
}
