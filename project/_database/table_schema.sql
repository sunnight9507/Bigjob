DROP TABLE IF EXISTS protect_animals_url1;
CREATE TABLE `protect_animals_url1` (
	`no` INT NOT NULL AUTO_INCREMENT,
	`number` VARCHAR(25) NOT NULL DEFAULT '' COMMENT '공고번호' COLLATE 'utf8mb4_0900_ai_ci',
	`kind` VARCHAR(20) NOT NULL DEFAULT '' COMMENT '품종' COLLATE 'utf8mb4_0900_ai_ci',
	`color` VARCHAR(30) NOT NULL DEFAULT '' COMMENT '색상' COLLATE 'utf8mb4_0900_ai_ci',
	`sex` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '성별' COLLATE 'utf8mb4_0900_ai_ci',
	`neutralization` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '중성화 여부' COLLATE 'utf8mb4_0900_ai_ci',
	`date` DATE NOT NULL DEFAULT '0000-00-00' COMMENT '접수일시',
	`location` VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '발생장소' COLLATE 'utf8mb4_0900_ai_ci',
	`characteristic` MEDIUMTEXT NOT NULL COMMENT '특징' COLLATE 'utf8mb4_0900_ai_ci',
	`deadline` CHAR(20) NOT NULL COMMENT '공고기한' COLLATE 'utf8mb4_0900_ai_ci',
	`age` INT NOT NULL,
	`weight` INT NOT NULL,
	`image` VARCHAR(100) NOT NULL COMMENT '이미지' COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`no`) USING BTREE
);


DROP TABLE IF EXISTS protect_animals_url2;
CREATE TABLE `protect_animals_url2` (
	`no` INT NOT NULL AUTO_INCREMENT,
	`number` INT NOT NULL DEFAULT '0',
	`name` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8mb4_0900_ai_ci',
	`date` DATE NOT NULL,
	`phone_num` CHAR(13) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`sex` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`address` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`image` VARCHAR(300) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`characteristic` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`no`) USING BTREE
);

DROP TABLE IF EXISTS missing_animals_url3;
CREATE TABLE `missing_animals_url3` (
	`no` INT NOT NULL AUTO_INCREMENT,
	`number` INT NOT NULL,
	`phone_num` CHAR(13) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`address` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`date` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`sex` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`image` VARCHAR(300) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`characteristic` MEDIUMTEXT NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`no`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
