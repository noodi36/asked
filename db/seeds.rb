# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create(:content => "이름이 모에요")
Post.create(:content => "전화번호 모에요")
Post.create(:content => "좋아하는 음식이 모에요")
10.times{ Post.create(:content => Faker::Name.name) }


Comment.create(:content => "안누리", :post_id => "1")
Comment.create(:content => "정윤호", :post_id => "1")
Comment.create(:content => "010-5223-5914", :post_id => "2")
Comment.create(:content => "짜장면", :post_id => "3")