
  User.create!(username: "bob", email: "bob@bob.com", password: "bobbobbob")
  User.create!(username: "sally", email: "sally@sally.com", password: "sallysallysally")
  User.create!(username: "joe", email: "joe@joe.com", password: "joejoejoe")

Item.create!(name: "Table", condition: "bad", starts_at: "2017-11-16 14:00:00.000000", ends_at: "2017-11-20 14:00:00.000000", description: 'ugly', user_id: 1)

Item.create!(name: "Desk", condition: "bad", starts_at: "2017-11-15 14:00:00.000000", ends_at: "2017-11-29 14:00:00.000000", description: 'ugly', user_id: 1)

Item.create!(name: "Pencil", condition: "bad", starts_at: "2017-11-17 14:00:00.000000", ends_at: "2017-11-29 14:00:00.000000", description: 'ugly', user_id: 1)

Item.create!(name: "Pen", condition: "bad", starts_at: "2017-11-14 14:00:00.000000", ends_at: "2017-12-01 14:00:00.000000", description: 'ugly', user_id: 1)

Item.create!(name: "Shoe", condition: "bad", starts_at: "2017-11-17 14:00:00.000000", ends_at: "2017-11-25 14:00:00.000000", description: 'ugly', user_id: 1)

5.times do
Bid.create!(amount: 5, bid_date: "2017-11-15 14:00:00.000000", user_id: rand(1..3), item_id: rand(1..5))
end

