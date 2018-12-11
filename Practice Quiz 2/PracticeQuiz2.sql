/*

Practice Quiz 2 - Queries

Practice quiz for SL for DMIT 1508 Fall 2018

This quiz uses the 'DML Database' from moodle.
The Memories Forever database and code was created by DMIT Staff. Inserts created by Aric Smith for SL.

Note: The check constrant for HireDate in the Staff table and the InDate & OutDate in the project table need to be reversed
	constraint ck_hiredate check(HireDate <= getdate())
	constraint ck_dates check (InDate <=OutDate)

	Contact info: arics@nait.ca
*/

-- 1. Add the following constraints to the existing table definitions.
		-- Album suggested price is positive
		-- Album Title is “Unknown”



-- 2. Create an Index for the foreign key



-- 3. Use an alter table statement to add a default of $10 for the Suggested Price in the album table



-- 4. Select all the artist names



-- 5. Select the 3rd track of every album



-- 6. Select the Album Titles and the total length of the album



-- 7. Create a view called ArtistAlbumFirstTrack that has the artist name, the album title, first track



-- 8. Select the artist(s) that don’t have an album in the database without a join



-- 9. Fix the typo in the 6th album. It’s by Pink Floyd.









