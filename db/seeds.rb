
10.times do |n|
  User.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "test#{n}@example.com",
    password: 'password'
    })
end


