-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/X5zOgk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- Full SQL COde




CREATE TABLE country_code (
    country_id INT  NOT NULL ,
    english_name VARCHAR(100)  NOT NULL ,
    alpha_2_code VARCHAR(100)  NOT NULL ,
    alpha_3_code VARCHAR(100)  NOT NULL ,
    numeric_code INT  NOT NULL ,
    iso_3166_2 VARCHAR(100)  NOT NULL ,
    land_area INT  NOT NULL ,
    PRIMARY KEY (
        country_id
    )
);

CREATE TABLE yearly (
    yearly_id INT  NOT NULL ,
    past_year INT  NOT NULL ,
    PRIMARY KEY (
        yearly_id
    )
);

CREATE TABLE world_happiness (
    country_id INT  NOT NULL ,
    yearly_id INT  NOT NULL ,
    Life_Ladder FLOAT  NOT NULL ,
    Log_GDP_per_capita FLOAT  NOT NULL ,
    Social_support FLOAT  NOT NULL ,
    Healthy_life_expectancy_at_birth FLOAT  NOT NULL ,
    Freedom_to_make_life_choices FLOAT  NOT NULL ,
    Generosity FLOAT  NOT NULL ,
    Perceptions_of_corruption FLOAT  NOT NULL 
);

CREATE TABLE population_by_country (
    country_id INT  NOT NULL ,
    yearly_id INT  NOT NULL ,
    Population INT  NOT NULL ,
    Net_Change INT  NOT NULL ,
    Migrants FLOAT  NOT NULL ,
    Fert_Rate VARCHAR(100)  NOT NULL ,
    Med_Age VARCHAR(100)  NOT NULL ,
    Urban_Pop_% VARCHAR(100)  NOT NULL 
);


ALTER TABLE world_happiness ADD CONSTRAINT fk_world_happiness_country_id FOREIGN KEY(country_id)
REFERENCES country_code (Country_id);

ALTER TABLE world_happiness ADD CONSTRAINT fk_world_happiness_yearly_id FOREIGN KEY(yearly_id)
REFERENCES yearly (yearly_id);

ALTER TABLE population_by_country ADD CONSTRAINT fk_population_by_country_country_id FOREIGN KEY(country_id)
REFERENCES country_code (Country_id);

ALTER TABLE population_by_country ADD CONSTRAINT fk_population_by_country_yearly_id FOREIGN KEY(yearly_id)
REFERENCES yearly (yearly_id);

