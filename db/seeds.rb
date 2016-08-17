# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "這個種子檔會自動建立一個admin帳號, 並且創建 10 個jobs,10个issues,10个posts"

create_account = User.create([email: 'example@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts "Admin account created."

create_jobs = for i in 1..10 do
  Job.create!([title: "Job no.#{i}", description: "這是用種子建立的第 #{i} 個工作", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,
               contact_email: "example@gmail.com", work_address: "china"])
end
puts "10 jobs created."

create_issues = for i in 1..10 do
  Issue.create!([title: "Issue no.#{i}"])
  create_posts = for j in 1..10 do
    Post.create!([title: "Post no.#{j} with Issue no.#{i}", content: "content no.#{j}", issue_id: i,author: "content no.#{j}"])
  end
end
puts "10 issues created."
