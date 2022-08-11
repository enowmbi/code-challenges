def grid_traveler(m, n)
  return 1 if m == 1 && n == 1
  return 0 if m == 0 || n == 0

  grid_traveler(m, n - 1) + grid_traveler(m-1, n)
end
