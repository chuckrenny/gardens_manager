def load_test_data
  @garden1 = Garden.create!(name: "Eden", species: 500, watered: true)
  @garden2 = Garden.create!(name: "Olympus", species: 300, watered: true)
  @garden3 = Garden.create!(name: "Butterfly", species: 100, watered: false)
  @garden4 = Garden.create!(name: "Wild", species: 200, watered: true)

  @plant1 = @garden1.plants.create!(name: "Blueberry Bush", height: 3, flowering: false)
  @plant2 = @garden1.plants.create!(name: "Tomatoes", height: 10, flowering: true)

  @plant3 = @garden2.plants.create!(name: "Raspberry Bush", height: 3, flowering: true)
  @plant4 = @garden2.plants.create!(name: "Chives", height: 7, flowering: true)

  @plant5 = @garden3.plants.create!(name: "Blackberry Bush", height: 3, flowering: false)
  @plant6 = @garden3.plants.create!(name: "Basil", height: 5, flowering: false)
end