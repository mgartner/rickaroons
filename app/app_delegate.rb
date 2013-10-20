class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    return true if RUBYMOTION_ENV == 'test'
    
    # Set the Google Maps API key.
    GMSServices.provideAPIKey("AIzaSyCd8UMPIWxAxKIk_-sR_5JU53Sp79EKkRs")

    # Create the window and map view.
    @root_controller = JASidePanelController.alloc.init
    @root_controller.centerPanel = UINavigationController.alloc.initWithRootViewController(MapController.alloc.init)
    @root_controller.leftPanel = ListController.alloc.init
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = @root_controller
    @window.makeKeyAndVisible

    return true
  end
end
