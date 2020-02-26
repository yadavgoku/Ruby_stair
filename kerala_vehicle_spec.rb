require 'rspec/autorun'
require './kerala_vehicle'

describe Kerala_vehicle do
  vehicle =  Kerala_vehicle.new("KL73BB9088","car")
  it "Validates vehicle number and let pass if valid" do
    expect(vehicle.validate_vehicle_number).to eq(true )
  end
  it "Validates vehicle number and let pass if not valid" do
    expect(Kerala_vehicle.new("KL74BB9088","car").validate_vehicle_number).to eq(false)
  end
end