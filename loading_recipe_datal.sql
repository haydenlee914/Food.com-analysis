create database Food;
use Food;
-- Create statement for the Recipes table 
CREATE TABLE StagingRecipes (
    RecipeId INT PRIMARY KEY,
    Name VARCHAR(255),
    AuthorId INT,
    AuthorName VARCHAR(255),
    CookTime VARCHAR(50),
    PrepTime VARCHAR(50),
    TotalTime VARCHAR(50),
    DatePublished DATETIME,
    Description TEXT,
    Images TEXT, -- JSON if your SQL version supports, else TEXT
    RecipeCategory VARCHAR(255),
    Keywords TEXT, -- JSON if your SQL version supports, else TEXT
    RecipeIngredientQuantities TEXT, -- JSON if your SQL version supports, else TEXT
    RecipeIngredientParts TEXT, -- JSON if your SQL version supports, else TEXT
    AggregatedRating DECIMAL(2, 1),
    ReviewCount INT,
    Calories DECIMAL(10, 2),
    FatContent DECIMAL(10, 2),
    SaturatedFatContent DECIMAL(10, 2),
    CholesterolContent DECIMAL(10, 2),
    SodiumContent DECIMAL(10, 2),
    CarbohydrateContent DECIMAL(10, 2),
    FiberContent DECIMAL(10, 2),
    SugarContent DECIMAL(10, 2),
    ProteinContent DECIMAL(10, 2),
    RecipeServings INT,
    RecipeYield VARCHAR(255),
    RecipeInstructions TEXT
);

-- loading  the recipe data from kagle 
LOAD DATA LOCAL INFILE 'C:/Users/Hp/Desktop/bigdatapro/recipes.csv'
INTO TABLE StagingRecipes
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(RecipeId, `Name`, AuthorId, AuthorName, CookTime, PrepTime, TotalTime, DatePublished, Description, Images, RecipeCategory, Keywords, RecipeIngredientQuantities, RecipeIngredientParts, AggregatedRating, ReviewCount, Calories, FatContent, SaturatedFatContent, CholesterolContent, SodiumContent, CarbohydrateContent, FiberContent, SugarContent, ProteinContent, RecipeServings, RecipeYield, RecipeInstructions);

