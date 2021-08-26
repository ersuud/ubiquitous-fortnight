/*    1     */

SELECT TITLE,
	DESCRIPTION
FROM FILM

/*    2     */

SELECT *
FROM FILM
WHERE LENGTH > 60
	AND LENGTH < 75
  

/*    3     */

SELECT *
FROM film
WHERE (RENTAL_RATE = 0.99
	AND (REPLACEMENT_COST = 12.99
		OR REPLACEMENT_COST = 28.99))
    
/*    4     */
SELECT FIRST_NAME,
	LAST_NAME
FROM CUSTOMER
WHERE FIRST_NAME = 'Mary'

/*    5     */
SELECT *
FROM film
WHERE NOT (length > 50 or rental_rate = 2.99 or rental_rate = 4.99)
    
