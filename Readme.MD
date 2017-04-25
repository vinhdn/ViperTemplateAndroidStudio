# VIPER Architecture for Android (Using Dagger 2, EventBus, RxJava, Retrofit)

## The main parts of VIPER are:
- View: displays what it is told to by the Presenter and relays user input back to the Presenter. Include: Fragments, Activities, Custom Views
- Interactor: contains the business logic as specified by a use case.
- Presenter: contains view logic for preparing content for display (as received from the Interactor) and for reacting to user inputs (by requesting new data from the Interactor).
- Entity (Model): contains basic model objects used by the Interactor.
- Router: contains navigation logic for describing which screens are shown in which order. (Back, open, replace Views (Fragment, Activity))


## About tool
This is tools auto generate all files of a module VIPER (include Dagger Components, Dagger Module, Retrofit API Service, Interactor, Presenter, Router, View, Fragment)

## How to install
- clone all files and import to ```C:\Program Files\Android\Android Studio\plugins\android\lib\templates\other\viper ```
