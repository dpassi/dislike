# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Diego',email:'djpr@uc.cl',password:'asd')
Dislike.create(name:'Trump',quantity:0,user_id:1)
Disliked.create(user_id:1,dislike_id:1)
