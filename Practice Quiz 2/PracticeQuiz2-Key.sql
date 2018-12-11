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

Constraint ck_SuggestedPricePositive Check (SuggestedPrice > 0)
Constraint df_UnknownTitle default ‘Unknown’


-- 2. Create an Index for the foreign key

Create nonclustered Index IX_AlbumID on Tracks(AlbumID)

-- 3. Use an alter table statement to add a default of $10 for the Suggested Price in the album table

Alter Table Album
Add
Constraint df_SuggestedPrice default 10 for SuggestedPrice

-- 4. Select all the artist names

Select Artist From Album

-- 5. Select the 3rd track of every album

Select Title From Tracks
Where TrackID = 3

-- 6. Select the Album Titles and the total length of the album

Select Album.Title, Sum(Length) as ‘Album Length’
 From Album
Inner Join Tracks on Album.AlbumID = Tracks.AlbumID
Group By Album.Title

-- 7. Create a view called ArtistAlbumFirstTrack that has the artist name, the album title, first track

Create View ArtistAlbumFirstTrack
As
Select Artist, Album.Title as ‘Album’, Tracks.Title as ‘First Track’
From Album
Inner Join Tracks on Album.AlbumID = Tracks.AlbumID
Where TrackID = 1

-- 8. Select the artist(s) that don’t have an album in the database without a join

Select Artist
From Album
Where AlbumID not in (Select AlbumID from Tracks)

-- 9. Fix the typo in the 6th album. It’s by Pink Floyd.

Update Album
Set Artist = ‘Pink Floyd’
Where AlbumID = 6









