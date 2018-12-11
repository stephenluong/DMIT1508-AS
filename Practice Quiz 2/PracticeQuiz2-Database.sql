--Create Database Artists

Use [Artists]

drop table tracks
drop table album

Create Table Album
(
AlbumID int identity (1,1) not null constraint pk_album primary key  clustered,
Title varchar (100) not null,
Rating char(1) not null 
constraint ck_ratingrange check(Rating between 0 and 5)
constraint df_0rating default 0,
Artist varchar (100) null,
SuggestedPrice smallmoney null
)

Create Table Tracks
(
TrackID tinyint not null,
AlbumID int not null 
constraint fk_TracksToAlbum references Album(AlbumID),
Title varchar (50) not null,
Length tinyint null,
constraint pk_Tracks primary key clustered (TrackID, AlbumID)
)


Insert into Album (Title, Rating, Artist, SuggestedPrice)
Values ('A Matter of Life and Death', 5, 'Iron Maiden', 8)

Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (1, 1, 'Different World', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (2, 1, 'These Colours Dont Run', 7)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (3, 1, 'Brighter Than A Thousand Suns', 9)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (4, 1, 'The Pilgrim', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (5, 1, 'The Longest Day', 8)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (6, 1, 'Out Of The Shadows', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (7, 1, 'The Reincarnation of Benjamin Breeg', 7)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (8, 1, 'For The Greater Good of God', 9)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (9, 1, 'Lord Of Light', 7)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (10, 1, 'The Legacy', 9)


Insert into Album (Title, Rating, Artist, SuggestedPrice)
Values ('The Wreck of the Powhatan and Other Tales', 4, 'Rainmaker', 5)

Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (1, 2, 'My Blood', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (2, 2, 'Ultraviolet', 3)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (3, 2, 'In My Mind', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (4, 2, 'Steel And Diamonds', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (5, 2, 'Unhinged', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (6, 2, 'Rain', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (7, 2, 'Childhoods End', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (8, 2, '?', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (9, 2, 'Drive All Night', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (10, 2, 'The Wreck of the Powhatan', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (11, 2, 'On This Road', 6)


Insert into Album (Title, Rating, Artist, SuggestedPrice)
Values ('Firepower', 5, 'Judas Priest', 12)

Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (1, 3, 'Firepower', 3)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (2, 3, 'Lightning Strike', 3)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (3, 3, 'Evil Never Dies', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (4, 3, 'Never The Heroes', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (5, 3, 'Necromancer', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (6, 3, 'Children of the Sun', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (7, 3, 'Guardians', 1)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (8, 3, 'Rising From Ruins', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (9, 3, 'Flame Thrower', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (10, 3, 'Spectre', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (11, 3, 'Traitors Gate', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (12, 3, 'No Surrender', 3)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (13, 3, 'Lone Wolf', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (14, 3, 'Sea of Red', 6)


Insert into Album (Title, Rating, Artist, SuggestedPrice)
Values ('Infinite', 4, 'Deep Purple', 10)

Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (1, 4, 'Time for Bedlam', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (2, 4, 'Hip Boots', 3)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (3, 4, 'All I Got Is You', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (4, 4, 'One Night in Vegas', 3)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (5, 4, 'Get Me Outta Here', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (6, 4, 'The Suprising', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (7, 4, 'Johnnys Band', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (8, 4, 'On Top of the World', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (9, 4, 'Birds of Prey', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (10, 4, 'Roadhouse Blues', 6)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (11, 4, 'Paradise Bar', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (12, 4, 'Uncommon Man (Instrumental Version)', 7)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (13, 4, 'Hip Boots (Ian Paice Recording', 4)


Insert into Album (Title, Rating, Artist, SuggestedPrice)
Values ('What Happens Next', 5, 'Joe Satriani', 12)

Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (1, 5, 'Energy', 3)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (2, 5, 'Catbot', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (3, 5, 'Thunder High On The Mountain', 5)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (4, 5, 'Cherry Blossoms', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (5, 5, 'Righteous', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (6, 5, 'Smooth Soul', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (7, 5, 'Headrush', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (8, 5, 'Looper', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (9, 5, 'What Happens Next', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (10, 5, 'Super Funky Badass', 8)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (11, 5, 'Invisible', 4)
Insert into Tracks (TrackID, AlbumID, Title, Length)
Values (12, 5, 'Forever and Ever', 4)

Insert into Album (Title, Rating, Artist, SuggestedPrice)
Values ('Dark Side of the Moon', 5, 'Pink Floid', 7)
