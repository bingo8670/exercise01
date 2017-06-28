# Initialize Admin User
if User.find_by(email: "admin@test.com").nil?
  u = User.new
  u.email = "admin@test.com"           # 可以改成自己的 email
  u.password = "123456"                # 最少要六码
  u.password_confirmation = "123456"   # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end

# Initialize Group

Group.create!(title: "罗振宇",
  description: "罗辑思维",
  creator: "admin@test.com"
  )
Group.create!(title: "李笑来",
  description: "通往财富自由之路",
  creator: "admin@test.com"
  )
Group.create!(title: "吴军",
  description: "硅谷来信",
  creator: "admin@test.com"
  )
Group.create!(title: "吴伯凡",
  description: "伯凡日知录",
  creator: "admin@test.com"
  )
