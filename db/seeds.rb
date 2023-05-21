# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(email: 'kalorad@gmail.com', password: '123456', admin: true, name: 'Чернявский Владислав')
User.create!(email: 'starix@gmail.com', password: '123456', admin: false, name: 'Иван Иванов')

categories = ['Бакалея', 'Сладкое и снеки', 'Основное', 'Для детей', 'Здоровое питание',
              'Другая кухня', 'Напитки', 'Для питомцев', 'По быстрому', 'Консервы',
              'Для красоты и дома']
(0..categories.length - 1).each { |i| Category.create(name: categories[i]) }

first_type = ['Соусы, Специи и Масло', 'Макароны и крупы', 'Сухие завтраки', 'Чай, кофе, напитки', 'Сахар и соль',
              'Мука и дрожжи']
second_type = ['Снеки и чипсы', 'Шоколад и конфеты',
               'Печенье и выпечка', 'Варенье и мёд', 'Арахис, Семечки, Фисташки', 'Мороженое']

third_type = ['Сыр', 'Молочное и яйца', 'Заморозка', 'Овощи и зелень', 'Фрукты и ягоды', 'Мясо', 'Колбаса и сосиски',
              'Рыба и морепродукты']
fourth_type = ['Каши и смеси', 'Печенье снэки', 'Соки и напитки', 'Пюре', 'Молочко и молочные коктейли',
               'Уход за детьми']
fifth_type = ['Здоровый перекус', 'Напитки', 'Батончики']
sixth_type = ['Азиатская кухня']
seventh_type = ['Вода', 'Газировка и напитки', 'Пиво, Энергетики', 'Сок']
eighth_type = ['Для кошек', 'Для собак']
nineth_type = ['Салаты', 'Супы и пюре']
tenth_type = ['Мясные', 'Рыбные', 'Фруктовые', 'Паштеты', 'Овощные', 'Оливки и маслины', 'Фасоль', 'Горошек', 'Кукуруза',
              'Грибы', 'Имбирь маринованный', 'Плов']
eleventh_type = ['Личная гигиена', 'Для дома', 'Для праздника']

(0..first_type.length - 1).each { |i| Type.create(name: first_type[i], category_id: Category.find(1).id) }
(0..second_type.length - 1).each { |i| Type.create(name: second_type[i], category_id: Category.find(2).id) }
(0..third_type.length - 1).each { |i| Type.create(name: third_type[i], category_id: Category.find(3).id) }
(0..fourth_type.length - 1).each { |i| Type.create(name: fourth_type[i], category_id: Category.find(4).id) }
(0..fifth_type.length - 1).each { |i| Type.create(name: fifth_type[i], category_id: Category.find(5).id) }
(0..sixth_type.length - 1).each { |i| Type.create(name: sixth_type[i], category_id: Category.find(6).id) }
(0..seventh_type.length - 1).each { |i| Type.create(name: seventh_type[i], category_id: Category.find(7).id) }
(0..eighth_type.length - 1).each { |i| Type.create(name: eighth_type[i], category_id: Category.find(8).id) }
(0..nineth_type.length - 1).each { |i| Type.create(name: nineth_type[i], category_id: Category.find(9).id) }
(0..tenth_type.length - 1).each { |i| Type.create(name: tenth_type[i], category_id: Category.find(10).id) }
(0..eleventh_type.length - 1).each { |i| Type.create(name: eleventh_type[i], category_id: Category.find(11).id) }
