SELECT category.*, COUNT(product_category.category_id) AS cnt FROM category
	INNER JOIN product_category ON product_category.category_id = category.id
	GROUP BY category.id