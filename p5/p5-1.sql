DROP FUNCTION IF EXISTS mydb.MyCalculate;

DELIMITER //

CREATE FUNCTION MyCalculate(first_param float, second_param float)
RETURNS float
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result float;
    SET result = first_param / second_param;
    RETURN result;
END //

DELIMITER ;