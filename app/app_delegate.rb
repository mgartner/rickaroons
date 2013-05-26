class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    return true if RUBYMOTION_ENV == 'test'
    
    # Set the Google Maps API key.
    GMSServices.provideAPIKey("AIzaSyCd8UMPIWxAxKIk_-sR_5JU53Sp79EKkRs")

    # Create the window and map view.
    @map_controller = MapController.alloc.initWithNibName(nil, bundle:nil)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = @map_controller
    @window.makeKeyAndVisible

    return true
  end
end
