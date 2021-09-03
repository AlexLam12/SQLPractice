--What grades are stored in the database? 1st-5th Grade

SELECT Distinct Grade.Name
FROM Grade
join Author on Author.GradeId = Grade.Id;

--What emotions may be associated with a poem? Anger, Fear, Joy, Sadness

SELECT DISTINCT Emotion.Name
FROM Emotion

--How many poems are in the database? 32842

SELECT COUNT(Poem.Id)
FROM Poem;

--Sort authors alphabetically by name. What are the names of the top 76 authors?

SELECT TOP 76 *
FROM Author
Order BY Author.Name ASC;

--Starting with the above query, add the grade of each of the authors.

SELECT TOP 76 Author.Name,	Grade.Name
FROM Author
join Grade on Author.GradeId = Grade.Id
Order BY Author.Name ASC;

--Starting with the above query, add the recorded gender of each of the authors.

SELECT TOP 76 Author.Name,	Grade.Name, Gender.Name
FROM Author
join Grade on Author.GradeId = Grade.Id
join Gender on Author.GenderId = Gender.Id
Order BY Author.Name ASC;

--What is the total number of words in all poems in the database?

SELECT SUM(WordCount)
From Poem;

--Which poem has the fewest characters?

SELECT Title, CharCount
FROM Poem
where CharCount = (
	SELECT MIN(CharCount)
	FROM Poem);