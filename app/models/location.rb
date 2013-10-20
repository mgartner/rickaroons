class Location

  LOCATIONS_URL = "http://rickaweb.herokuapp.com/locations"

  PROPERTIES = [:id, :name, :address, :latitude, :longitude]
  PROPERTIES.each do |prop|
    attr_accessor prop
  end

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value) if PROPERTIES.member? key.to_sym
    end
    self
  end

  def self.locations(&block)
    if @locations.nil? || (!@last_refresh_time.nil? && Time.now - @last_refresh_time > 180)
      @last_refresh_time = Time.now
      AFMotion::JSON.get(LOCATIONS_URL) do |response|
        if response.success? && response.object
          data = response.object
          @locations = data.map { |location_data| Location.new(location_data['location']) }
        else
          @locations = []
        end
        block.call(@locations)
      end
    else
      block.call(@locations)
    end
  end

end
