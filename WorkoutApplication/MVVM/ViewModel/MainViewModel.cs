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

        public RelayCommand WeeklyCalendarViewCommand { get; set; }

        public RelayCommand WorkoutsViewCommand { get; set; }

        public RelayCommand StretchesViewCommand { get; set; }

        public RelayCommand NotesViewCommand { get; set; }

        public HomeViewModel HomeVm { get; set; }

        public CalendarViewModel CalendarVm { get; set; }
        public WeeklyCalendarViewModel WeeklyCalendarVm { get; }

        public WorkoutsViewModel WorkoutsVm { get; set; }

        public StretchesViewModel StretchesVm { get; set; }

        public NotesViewModel NotesVm { get; set; }

        private object _currentView; //Having an underscore at the beginning of a variable name eliminates the need to use the this keyword

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
            WeeklyCalendarVm = new WeeklyCalendarViewModel();
            WorkoutsVm = new WorkoutsViewModel();
            StretchesVm = new StretchesViewModel(); 
            NotesVm = new NotesViewModel(); 

            CurrentView = HomeVm;

            HomeViewCommand = new RelayCommand(o => 
            { 
                CurrentView = HomeVm;   
            });

            CalendarViewCommand = new RelayCommand(o =>
            {
                CurrentView = CalendarVm;
            });

            WeeklyCalendarViewCommand = new RelayCommand(o =>
            {
                CurrentView = WeeklyCalendarVm;
            });

            WorkoutsViewCommand = new RelayCommand(o => 
            { 
                CurrentView = WorkoutsVm;
            });

            StretchesViewCommand = new RelayCommand(o => { 
                CurrentView = StretchesVm;  
            });

            NotesViewCommand = new RelayCommand(o => {
                CurrentView = NotesVm;
            });
        }
    }
}
