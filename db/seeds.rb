########################
#                      #
#      RailsfulBlog    #
#  Official seed file  #
#                      #
########################

# Notice #1: requires the "database_cleaner" gem to be part of the Rails environment
# Notice #2: requires the "faker" gem to be part of the Rails environment

# Erase the content of all tables, hence reseting the related "id" counters
DatabaseCleaner.clean_with(:truncation)

#######################
#                     #
#  CREATION OF USERS  #
#                     #
#######################

puts
puts "SEEDING - Creation of several fake users"
puts

puts "  > Starts seeding 'Users' information"
5.times do |x|
	xstr = x+1 < 9 ? "0#{x+1}" : (x+1).to_s 
  User.create(first_name: Faker::Name.first_name, 
              last_name: Faker::Name.last_name, 
              password: "THP2022", 
              email: "user_#{xstr}@yopmail.com", 
              age: rand(18..60)
            )
  puts "  > User n°: #{User.last.id} - first_name: #{User.last.first_name} - last_name: #{User.last.last_name} - email: #{User.last.email} - password: #{User.last.encrypted_password} - age: #{User.last.age}"
end
puts "  > Finished seeding 'Users'"

##########################
#                        #
#  CREATION OF ARTICLES  #
#                        #
##########################

puts
puts "SEEDING - Creation of several fake articles related to just-created users"
puts

puts "  > Starts seeding 'Articles' information"
50.times do |x|
	xstr = x+1 < 9 ? "0#{x+1}" : (x+1).to_s 
  Article.create(title: Faker::Book.title, 
                content: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 2), 
                personal: Faker::Boolean.boolean(true_ratio: 0.2), 
                user_id: User.all.sample.id
                )
  puts "  > Article n°: #{Article.last.id} - title: #{Article.last.title} - content: #{Article.last.content} - personal: #{Article.last.personal} - author: #{Article.last.user.first_name} #{Article.last.user.last_name}"
end
puts "  > Finished seeding 'Articles'"

puts
puts "END OF SEEDING"
puts