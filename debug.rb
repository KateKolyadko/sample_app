require_relative 'config/environment'

user = User.find_by(email: "michael@example.com")

if user
  puts "ДО изменений: #{user.name}"
 
  if user.update(
    name: "Catherine",
    password: "foobar",
    password_confirmation: "foobar"
  )
    puts "обновлено"
    puts "Новое имя: #{user.name}"
    puts "Updated: #{user.updated_at}"
  else
    puts "Ошибки: #{user.errors.full_messages}"
  end
end

puts "=" * 70