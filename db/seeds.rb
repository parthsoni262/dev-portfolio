  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!( 
    title: "My blog post #{blog}",
    body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    topic_id: Topic.last.id
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create!( 
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!( 
    title:"Portfolio Title #{portfolio_item}",
    subtitle: "Ruby On Rails",
    body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
    main_image: "https://place-hold.it/600x400",
    thunmb_image: "https://place-hold.it/350x200"
  )
end

2.times do |portfolio_item|
  Portfolio.create!( 
    title:"Portfolio Title #{portfolio_item}",
    subtitle: "Angular",
    body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
    main_image: "https://place-hold.it/600x400",
    thunmb_image: "https://place-hold.it/350x200"
  )
end

puts "10 portfolio created"


3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Techonlogy #{technology}",
    portfolio_id: Portfolio.last.id
  )
end

puts "3 technologies created"