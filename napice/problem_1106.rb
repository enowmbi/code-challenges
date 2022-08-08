def buildings_with_view_of_setting_sun(buildings = [])
  return 0 if buildings.empty? # guard condition

  # assuming that the last building on the right will always see the sun
  # sun rises from east and sets in the west

  unobstructed_buildings = 1
  tallest_building = buildings[0]

  0.upto(buildings.length - 2) do |i|
    if buildings[i] >= tallest_building
      tallest_building = buildings[i]
    else
      unobstructed_buildings += 1
    end
  end
  unobstructed_buildings
end
