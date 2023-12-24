User.find_or_create_by!(email: "anonym@anonym.com") do |user|
  user.password = "Anonym_pass"
  puts "created anonym user"
end
