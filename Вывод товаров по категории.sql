SELECT * FROM product 
JOIN product_category ON product_category.product_id = product.id 
JOIN category ON product_category.category_id = category.id
WHERE product.is_active = 1 AND category.name = "category 1" LIMIT 0,12