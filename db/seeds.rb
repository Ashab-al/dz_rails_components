Category.create(name: 'Телефоны')
Category.create(name: 'Ноутбуки')

Product.create(name: 'Iphone 12', category: Category.first, price: 200.0, city: "Грозный")
Product.create(name: 'Razer', category: Category.last, price: 500.0, city: "Москва")