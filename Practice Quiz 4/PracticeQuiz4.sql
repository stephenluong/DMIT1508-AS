/*

Practice Quiz 4 - Triggers 

Practice quiz for SL for DMIT 1508 Fall 2018

This quiz uses the Memories Forever database.
The Memories Forever database and code was created by the staff of the DMIT program. The inserted data was created by Aric Smith.


Note: The check constrant for HireDate in the Staff table and the InDate & OutDate in the project table need to be reversed
	constraint ck_hiredate check(HireDate <= getdate())
	constraint ck_dates check (InDate <=OutDate)

	Contact info: arics@nait.ca
*/

use [MemoriesForeverPracticeQuiz4]

--1. Create an insert/update trigger that will ensure that a staff's hire date is valid (before the current date)



--2. Create an Delete trigger to make sure that if a client is deleted, they don't have a project.



--3. Create an insert/update trigger that will ensure that will set a project's total and GST are the appropriate value (Total = GST + Subtotal, GST is 5%), when the subtotal is updated. 



--4. Create a trigger an update that will log any changes to item prices. It should also ensure that the item price is not changing by more than 15%.

