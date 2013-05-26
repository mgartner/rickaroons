class MapController < UIViewController

  def viewDidLoad

    # Create a GMSCameraPosition that tells the map to display the
    # coordinate -33.86,151.20 at zoom level 6.
    camera = GMSCameraPosition.cameraWithLatitude(-33.86, longitude: 151.20, zoom: 6)
    map_view = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
    #map_view.myLocationEnabled = true
    self.view = map_view

    # Create a marker in the center of the map.
    marker = GMSMarker.alloc.init
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
    marker.title = "Sydney"
    marker.snippet = "Australia"
    marker.map = map_view
  end

end
