CREATE TABLE `Products_Categories` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `product_id` INT(11) NOT NULL,
    `category_id` INT(11) NOT NULL,
    INDEX `product_id` (`product_id`),
    INDEX `category_id` (`category_id`),
    FOREIGN KEY (`product_id`)  FOREIGN KEY (`product_id`) 
    PRIMARY KEY (`id`),
)
COMMENT='Таблица связи имени продукта и категории'
ENGINE=InnoDB

SELECT product.name, category.name FROM Products product
LEFT JOIN Products_Categories on product.id = Products_Categories.product_id 
LEFT JOIN Categories category on Products_Categories.category_id = category.id
