# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "Fake title #{blog}",
    body: "I finally found my beach body #{blog}.
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur semper magna in justo consectetur vulputate eget efficitur nunc. Praesent ullamcorper fringilla dolor id mollis. Fusce feugiat urna sit amet purus finibus, vel semper justo lacinia. Integer nec iaculis massa, ac tincidunt risus. Phasellus nisi enim, maximus quis cursus nec, maximus vel diam. Nulla in molestie justo, eget dapibus eros. Pellentesque nisi risus, lobortis at ante id, suscipit tincidunt turpis. Maecenas varius, sem eu porttitor consequat, metus quam molestie magna, non rhoncus mauris risus ac massa. Etiam ac lectus maximus sem placerat interdum vel sit amet orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur tincidunt, ante in laoreet blandit, ligula tortor ultricies tellus, vitae semper urna justo eu ante. Nam nibh leo, tincidunt sed quam nec, tempus finibus libero."
  )
end

puts "Created 10 Blogs"

5.times do |skill|
  Skill.create!(
    title: "Skill #{skill}"
  )
end

puts "Created 5 skills"

9.times do |portfolios|
  Portfolio.create!(
    title: "Fake title #{portfolios}",
    subtitle: "The Subtitle #{portfolios}",
    body: "Amazing work numero #{portfolios}",
    thumb_image: "http://placehold.it/300x300",
    main_image: "http://placehold.it/600x400"
  )
end

puts "Created 9 portfolio items"
