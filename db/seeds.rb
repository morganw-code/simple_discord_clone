20.times do
    Message.create(message: "#{Faker::Superhero.name}", user_id: 1)
end