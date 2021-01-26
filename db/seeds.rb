# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
Project.destroy_all

Project.create(name: "Clean House", time: 0, importance: 5)
Project.create(name: "Create a website", time: 0, importance: 8)
Project.create(name: "Start a business", time: 0, importance: 9)
Project.create(name: "Start a business", time: 1, importance: 9)
Project.create(name: "Start a business", time: 2, importance: 9)
Project.create(name: "Start a business", time: 3, importance: 9)
Project.create(name: "Start a business", time: 4, importance: 9)
Project.create(name: "Start a business", time: 5, importance: 9)
Project.create(name: "Start a business", time: 6, importance: 9)
Project.create(name: "Start a business", time: 7, importance: 9)


Task.create(name: "Clean Room", time: 0, project_id: Project.first.id)
Task.create(name: "Clean Kitchen", time: 5, project_id: Project.first.id)
Task.create(name: "Clean Family Room", time: 10, project_id: Project.first.id)
Task.create(name: "Clean Bathroom", time: 20, project_id: Project.first.id)


Task.create(name: "Register a domain name", time: 0, project_id: Project.second.id)
Task.create(name: "Design the front page", time: 0, project_id: Project.second.id)
Task.create(name: "Find pictures", time: 0, project_id: Project.second.id)
Task.create(name: "Deside Content", time: 0, project_id: Project.second.id)
