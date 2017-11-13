# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project= {}

ActiveRecord::Base.transaction do
  20.times do
  	project['project_title'] = Faker::App.name
  	project['project_description'] = Faker::Hipster.sentence
  	project['project_status'] = rand(0..3)
  	project['approved_by_admin'] = [true, false].sample
  	project['approved_by_pto'] = [true, false].sample

  	Project.create(project)
  end
end