def load_test_data
  @garden1 = Garden.create!(name: "Eden", species: 500, watered: true)
  @garden2 = Garden.create!(name: "Olympus", species: 300, watered: true)
  @garden3 = Garden.create!(name: "Butterfly", species: 100, watered: false)
end