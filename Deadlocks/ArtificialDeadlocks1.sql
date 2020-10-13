

/* Run in Window 1 */

BEGIN TRAN
update AW1.Production.ProductCategory /*Window 1 */
set Name = Name WHERE ProductCategoryID = 1

--

/* Run in Window 2 */


BEGIN TRAN
update AW1.Production.Product /*Window 2*/
set Name = Name WHERE ProductID = 1

--

/* Run in Window 1 */

update AW1.Production.Product /*Window 1 */
set Name = Name WHERE ProductID = 1

--

/* Run in Window 2 */

update AW1.Production.ProductCategory  /*Window 2*/
set Name = Name WHERE ProductCategoryID = 1

/* Windows 2 should show a deadlock */

--

/* In The Window that did *NOT* Deadlock - probably Window 1 */

ROLLBACK

