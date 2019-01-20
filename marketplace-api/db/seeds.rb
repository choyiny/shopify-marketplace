# Seeding some product data
names = %w[
  water
  bag
  microphone
  earphones
  chips
  hairdryer
  table
  chair
  hotdog
]
names.each do |product_name|
  product = Product.where(
    title: product_name,
    price: rand(2.2...76.9).round(2),
    inventory_count: rand(0...20)
  ).first_or_create
end
