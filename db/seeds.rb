# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!(
  [
    {
      name: '山田太郎',
      email: 'a@gmail.com',
      password: '111111'
    },
    {
      name: '鈴木次郎',
      email: 'b@gmail.com',
      password: '111111'
    }
  ]
)


Category.create!(
  [
    {
      name: 'ニュース速報'
    },
    {
      name: 'COVID-19'
    },
    {
      name: '緊急自然災害'
    },
    {
      name: '地震速報'
    },
    {
      name: 'サブカル'
    },
    {
      name: '国際情勢'
    },
    {
      name: '交通情報'
    },
    {
      name: '学問'
    },
    {
      name: 'その他'
    }
  ]
)