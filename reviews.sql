CREATE TABLE reviews (
    "Id" SERIAL PRIMARY KEY,
    "ProductId" VARCHAR(255),
    "UserId" VARCHAR(255),
    "ProfileName" VARCHAR(255),
    "HelpfulnessNumerator" INT,
    "HelpfulnessDenominator" INT,
    "Score" INT,
    "Time" BIGINT,
    "Summary" TEXT,
    "Text" TEXT
);

COPY reviews ("Id", "ProductId", "UserId", "ProfileName", "HelpfulnessNumerator", "HelpfulnessDenominator", "Score", "Time", "Summary", "Text")
FROM 'C:\Users\Jay_m\OneDrive\Desktop\Project-4-main\jay work\data\Reviews.csv'
DELIMITER ','
CSV HEADER;


