# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user1 = User.find_or_create_by!(name: "Arya", email: "shbifh@foo.com")
user2 = User.find_or_create_by!(name: "Tito", email: "asdfgh@foo.com")
user3 = User.find_or_create_by!(name: "Jacob", email: "xfguikm@foo.com")
user4 = User.find_or_create_by!(name: "Anjali", email: "poihjnbf@foo.com")
user5 = User.find_or_create_by!(name: "Anjana", email: "ahdgkau@foo.com")
user6 = User.find_or_create_by!(name: "Rohan", email: "qsuidae@foo.com")
user7 = User.find_or_create_by!(name: "Stephen", email: "s12345fg@foo.com")
user8 = User.find_or_create_by!(name: "Joel", email: "0097uijbftyh@fooUser.com")


mistake1 = Mistake.find_or_create_by!(name: "Debugger", severity: 1, description: "Left a deug statement in the code.")
mistake2 = Mistake.find_or_create_by!(name: "Indentation", severity: 1, description: "Incorrect indentations.")
mistake3 = Mistake.find_or_create_by!(name: "Print Statement", severity: 1, description: "Left a print statement in the code.")
mistake4 = Mistake.find_or_create_by!(name: "Variable Name", severity: 1, description: "Poor use of variable name.")


userMistake1 = MistakeUser.create!(mistake_id: mistake1.id, user_id: user1.id)
userMistake2 = MistakeUser.create!(mistake_id: mistake1.id, user_id: user1.id)
userMistake3 = MistakeUser.create!(mistake_id: mistake3.id, user_id: user4.id)
userMistake4 = MistakeUser.create!(mistake_id: mistake2.id, user_id: user4.id)
userMistake5 = MistakeUser.create!(mistake_id: mistake4.id, user_id: user3.id)
userMistake5 = MistakeUser.create!(mistake_id: mistake3.id, user_id: user7.id)