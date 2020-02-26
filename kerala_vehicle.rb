class Kerala_vehicle
  # To validate vehicle numbers
  def initialize(vehicle_number,vehicle_type)
    @vehicle_number = vehicle_number
    @vehicle_type = vehicle_type
  end
  def validate_vehicle_number
    if @vehicle_number.match(/KL([0-6][1-9]|[7][1-3])\w{2}\d{4}/)
      puts "Valid vehicle number"
      true
    else
      puts "It is not a valid vehicle number"
      false
    end
  end
end

