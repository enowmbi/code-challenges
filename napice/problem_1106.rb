def buildings_with_view_of_setting_sun(buildings = [])
  return 0 if buildings.empty?

  # assuming that the last building on the right will always see the sun
  # sun rises from east and sets in the west

  number_of_buildings = 1
  highest_building = buildings[0]

  0.upto(buildings.length - 2) do |i|
    if buildings[i] >= highest_building
      highest_building = buildings[i]
    else
      number_of_buildings += 1
    end
  end
  number_of_buildings
end
