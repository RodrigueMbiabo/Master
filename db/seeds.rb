# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.create!(title: "Neat Calculations")
c2 = Category.create!(title: "Funny Calculations")
c3 = Category.create!(title: "Nifty Calculations")

100.times do
    Calculation.create(
        argument1: rand(0..100), 
        argument2: rand(0..100), 
        operand: Calculation::OPERANDS.sample, 
        category: [c1, c2, c3, nil].sample,
    )
end
