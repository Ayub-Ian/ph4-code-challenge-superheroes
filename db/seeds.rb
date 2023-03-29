# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding heroes"

hero1 = Hero.create(name:'Chris Hemsworth', super_name:'Thor')
hero2 = Hero.create(name:'Peter Parker', super_name:'Spider-Man')
hero3 = Hero.create(name:'Chadwick Boseman', super_name:'Black Pathner')
hero4 = Hero.create(name:'Bruce Banner', super_name:'Hulk')
hero5 = Hero.create(name:'Steve Ditko', super_name:'Dr Strange')
hero6 = Hero.create(name:'Gal Gadot', super_name:'Wonder Woman')


power1 = Power.create(name:"Super strength", description:"has superhuman strength and can fly")
power2 = Power.create(name:"Reflexes" ,description:"is alert,fast, with hightened senses")
power3 = Power.create(name:"Martial arts", description:"expert hand to hand combatant")
power4 = Power.create(name:"Incredible strength", description:"has incredible superhuman strength")
power5 = Power.create(name:"complex shields", description:"has powers to create barries and shields")
power6 = Power.create(name:"Invulnerability", description:"has invulnerability")


HeroPower.create(strength:"Strong", hero_id: hero1.id , power_id:power6.id )
HeroPower.create(strength:"Strong", hero_id: hero2.id , power_id: power5.id)
HeroPower.create(strength:"Weak", hero_id: hero3.id, power_id: power4.id)
HeroPower.create(strength:"Average", hero_id:power4.id  , power_id:hero3.id )
HeroPower.create(strength:"Weak", hero_id: power5.id , power_id: hero2.id)
HeroPower.create(strength:"Strong", hero_id: power6.id , power_id:hero1.id )
HeroPower.create(strength:"Average", hero_id: hero1.id , power_id: power6.id)
HeroPower.create(strength:"Weak", hero_id: hero2.id , power_id: power5.id)
HeroPower.create(strength:"Weak", hero_id: hero3.id , power_id:power4.id )
HeroPower.create(strength:"Strong", hero_id: power4.id , power_id: hero3.id)
HeroPower.create(strength:"Weak", hero_id: power5.id , power_id: hero2.id)
HeroPower.create(strength:"Average", hero_id: power6.id , power_id: hero1.id)
HeroPower.create(strength:"Average", hero_id:  hero1.id, power_id:power6.id )
HeroPower.create(strength:"Strong", hero_id: hero2.id , power_id: power5.id)
HeroPower.create(strength:"Strong", hero_id:  hero3.id, power_id: power4.id)

puts "Done seeding"