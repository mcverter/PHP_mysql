
drop FUNCTION if exists SPLIT_STR;
DELIMITER //
CREATE FUNCTION SPLIT_STR
(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
)

RETURNS VARCHAR(255)
BEGIN
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '');
END //
DELIMITER ;


SET @x= SPLIT_STR('8,27,55,75,96,110,120,131,154,179,185,192,222,236,249,251,277,287,296,298,299,360,366,385,389,390,420,422,428,431,454,494,495', ',', 5);
SELECT @x;