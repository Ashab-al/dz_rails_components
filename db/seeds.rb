Category.create(name: 'Телефоны')
Category.create(name: 'Ноутбуки')

Product.create(name: 'Iphone', category: Category.first, price: 200.0)
Product.create(name: 'Laptop pro max', category: Category.last, price: 500.0)