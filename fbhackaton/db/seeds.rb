# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(name: "Administrador",
            email: "admin@admin.com",
            password: "admin",
            password_confirmation: "admin")


User.create(name: "Vicente Fuenzalida",
            email: "vjfuenzalida@uc.cl",
            password: "123123",
            password_confirmation: "123123")

User.create(name: "Diego Passi",
            email: "djpassi@uc.cl",
            password: "123123",
            password_confirmation: "123123")

User.create(name: "David Galemiri",
            email: "dagalemiri@uc.cl",
            password: "123123",
            password_confirmation: "123123")


Topic.create(name: "Trump",
            votes: "5000",
            user_id: 1,
            description: "U.S. New President",
            lat: 38.8995322,
            lon: -77.1546522,
            weight:1)

Topic.create(name: "AFP Sistem",
            votes: "4413",
            user_id: 2,
            description: "Chilean Pension System not working as expected",
            lat: -33.4442,
            lon: -70.9100213,
            weight:1)

Topic.create(name: "Siria Crisis",
            votes: "10800",
            user_id: 3,
            description: "Stop the horror!",
            lat: 34.7988324,
            lon: 36.8025563,
            weight:1)


Topic.create(name: "Brexit",
            votes: "3800",
            user_id: 1,
            description: "Let's go out!!!",
            lat: 51.5287352,
            lon: -0.3818014,
            weight:1)

Topic.create(name: "Death Penalty",
            votes: "5000",
            user_id: 2,
            description: "Death penalty in US",
            lat: 31.1013779,
            lon: -104.5711083,
            weight:1)

Topic.create(name: "Violence against women",
            votes: "1000",
            user_id: 3,
            description: "Due to killed woman in Concepcion",
            lat: -36.8261412,
            lon: -73.1030857,
            weight:1)

Topic.create(name: "Corruption",
            votes: "1200",
            user_id: 1,
            description: "Brazilian corruption",
            lat: -23.6815315,
            lon: -46.8754941,
            weight:1)

Topic.create(name: "Polution",
            votes: "4000",
            user_id: 2,
            description: "Polution in Shangai",
            lat: 31.2243084,
            lon: 120.9162757,
            weight:1)

Vote.create(user_id: 1, topic_id: 1)
Vote.create(user_id: 2, topic_id: 2)
Vote.create(user_id: 3, topic_id: 3)
Vote.create(user_id: 1, topic_id: 4)
Vote.create(user_id: 2, topic_id: 5)
Vote.create(user_id: 3, topic_id: 1)
Vote.create(user_id: 1, topic_id: 2)
Vote.create(user_id: 2, topic_id: 3)
Vote.create(user_id: 3, topic_id: 4)
