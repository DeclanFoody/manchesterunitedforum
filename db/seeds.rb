# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create!(
         title: "Rooneys Past It",
         author: "Carly Rae Jepson",
         text: <<-eos.gsub(/\s+/, " ").strip
           Hes fat and old. His best days are behind him. Get rid Mou. We need better and cant have this bald tit leading our team.
         eos
       )
Post.create!(
         title: "Mourinho",
         author: "Steve Nash",
         text: <<-eos.gsub(/\s+/, " ").strip
           Ooh ooh Mou Mou. I love you 
           eos
           )
Post.create!(
         title: "Zlatan the Man",
         author: "Michael J. Fox",
         text: <<-eos.gsub(/\s+/, " ").strip
         cant believe we got Ibra. Whaaa
         eos
)
Post.create!(
         title: "Who?",
         author: "Vurram Khirani",
         text: "Never heard of this guy Erc Bailly, but he sounds great."
         )