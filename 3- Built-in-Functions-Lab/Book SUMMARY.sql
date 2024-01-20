SELECT `article_id`, `author`, `content`,
SUBSTRING(`content`, 1, 200) AS 'Summary'
FROM `articles`;

