SELECT * FROM product WHERE id = 6;

SELECT * FROM image
	JOIN product_image ON product_image.image_id = image.id
	WHERE product_image.product_id = 6;