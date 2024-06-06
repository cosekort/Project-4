CREATE TABLE Reviews (
    Id INTEGER PRIMARY KEY,
    ProductId VARCHAR(50),
    UserId VARCHAR(50),
    ProfileName VARCHAR(50),
    HelpfulnessNumerator INTEGER,
    HelpfulnessDenominator INTEGER,
    Score INTEGER,
    Time BIGINT,
    Summary TEXT,
    Text TEXT
);

COPY Reviews(Id, ProductId, UserId, ProfileName, HelpfulnessNumerator, HelpfulnessDenominator, Score, Time, Summary, Text)
FROM 'C:\\Users\\Jay_m\\OneDrive\\Desktop\\Reviews.csv' DELIMITER ',' CSV HEADER;