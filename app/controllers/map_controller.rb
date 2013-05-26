class MapController < UIViewController

  # TODO: Fix Acai and D Town names.
  LOCATIONS = [{name: "Leilani's Cafe", lat: 32.80795, long: -117.25491},
               {name: "Java Earth Cafe", lat: 32.80550, long: -117.25448},
               {name: "Acai?", lat: 32.79977, long: -117.25258},
               {name: "Te Mana Cafe", lat: 32.75178, long: -117.24572},
               {name: "D Town", lat: 32.71744, long: 	-117.16239}]

  def viewDidLoad
    super

    # Create a GMSCameraPosition that tells the map to display the
    # coordinate -33.86,151.20 at zoom level 6.
    camera = GMSCameraPosition.cameraWithLatitude(32.75, longitude: -117.2, zoom: 11)
    @map_view = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
    @map_view.myLocationEnabled = true
    self.view = @map_view

  end

  def viewWillAppear(animated)
    super

    LOCATIONS.each do |location|
      marker = GMSMarker.alloc.init
      marker.position = CLLocationCoordinate2DMake(location[:lat], location[:long])
      marker.title = location[:name]
      # marker.snippet = location[:snippet]
      marker.map = @map_view
    end

  end

end
