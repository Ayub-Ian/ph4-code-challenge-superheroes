# This file should contain all the record creation needed to seed the database with its default values.
puts "Seeding heroes ...."

puts "seeding heroes ..."
heros = Hero.create([{ name: "Kamala Khan", super_name: "Ms. Marvel" },  
    { name: "Doreen Green", super_name: "Squirrel Girl" },  
    { name: "Gwen Stacy", super_name: "Spider-Gwen" }  
    ])

puts "seeding powers ..."
powers = Power.create([
    {
      name: "super strength",
      description: "gives the wielder super-human strengths"
    },
    {
      name: "flight",
      description: "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ])


puts "Done seeding"