basket = {}
loop do
  print 'Введите наименование товара: '
  name = gets.chomp

  if name.downcase == 'stop'
    products = basket.values.map { |product| product[:sum] }
    if products.empty?
      puts 'Корзина пустая'
    else
      puts "Всего было куплено #{products.size} наименований(я) на общую сумму: #{products.sum}"
    end

    break
  end

  print 'Введите цену товара: '
  price = gets.chomp.to_f

  print 'Введите количество товара: '
  quantity = gets.chomp.to_f

  product = {
    name.to_s => {
      price: price,
      quantity: quantity,
      sum: price * quantity
    }
  }
  basket.merge!(product)

  puts basket
end
