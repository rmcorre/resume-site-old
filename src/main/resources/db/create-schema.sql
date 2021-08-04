-- DROP TABLE IF EXISTS "identity";
-- create table "identity"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "active" BOOLEAN,
--     "email" VARCHAR(255),
--     "first_name" VARCHAR(255),
--     "last_name" VARCHAR(255),
--     "phone" VARCHAR(255),
--     "summary" TEXT,
--     "title" VARCHAR(255)
-- );
--
-- DROP TABLE IF EXISTS "profile_address";
-- create table "profile_address"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "building_number" VARCHAR(255),
--     "country" VARCHAR(255),
--     "current" BOOLEAN,
--     "parish_town_city" VARCHAR(255),
--     "postal_code" VARCHAR(255),
--     "region" VARCHAR(255),
--     "state_province" VARCHAR(255),
--     "street" VARCHAR(255),
--     "profile_id" INTEGER,
--     foreign key ("profile_id") references "identity" ("id")
--         on delete cascade
--         on update cascade
-- );
--
-- DROP TABLE IF EXISTS "education";
-- create table "education"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "identityAddress" VARCHAR(255),
--     "course" VARCHAR(255),
--     "end_date" VARCHAR(255),
--     "institution" VARCHAR(255),
--     "portfolio_id" INTEGER,
--     "start_date" VARCHAR(255),
--     constraint "FKj947ubfdebu4vl8xfc7ph1deh"
--         foreign key ("portfolio_id") references "portfolio" ("id")
--             on delete cascade
--             on update cascade
-- );
--
-- DROP TABLE IF EXISTS "employer";
-- create table "employer"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "employer" VARCHAR(255),
--     "end_date" VARCHAR(255),
--     "position" VARCHAR(255),
--     "start_date" VARCHAR(255),
--     "summary" VARCHAR(255)
-- );
--
-- DROP TABLE IF EXISTS "employer_address";
-- create table "employer_address"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "building_number" VARCHAR(255),
--     "country" VARCHAR(255),
--     "current" BOOLEAN,
--     "parish_town_city" VARCHAR(255),
--     "postal_code" VARCHAR(255),
--     "region" VARCHAR(255),
--     "state_province" VARCHAR(255),
--     "street" VARCHAR(255),
--     "employer_id" INTEGER,
--     constraint "FK17oft5v7a6fckusadt0611xcl"
--         foreign key ("employer_id") references "employer" ("id")
--             on delete cascade
--             on update cascade
-- );
--
-- DROP TABLE IF EXISTS "employer_duty";
-- create table "employer_duty"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "category" VARCHAR(255),
--     "description" VARCHAR(255),
--     "employer_id" INTEGER,
--     constraint "FK4vdm1n5fdkmbrufn09tfkm74g"
--         foreign key ("employer_id") references "employer" ("id")
--             on delete cascade
--             on update cascade
-- );
--
-- DROP TABLE IF EXISTS "industry_knowledge";
-- create table "industry_knowledge"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "domain" VARCHAR,
--     "skill" VARCHAR,
--     "active" BOOLEAN
-- );
--
-- DROP TABLE IF EXISTS "portfolio";
-- create table "portfolio"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "name" VARCHAR,
--     "candidate_id" INTEGER,
--     constraint "FKhc90qo1hfg3uyenhgnckt46b7"
--         foreign key ("candidate_id") references "identity" ("id")
--             on delete cascade
--             on update cascade
-- );
--
-- DROP TABLE IF EXISTS "tools_and_technology";
-- create table "tools_and_technology"
-- (
--     "id" INTEGER auto_increment
--         primary key,
--     "creation_time" TIMESTAMP,
--     "update_time" TIMESTAMP,
--     "version" INTEGER,
--     "domain" VARCHAR,
--     "skill" VARCHAR,
--     "skill_category" VARCHAR,
--     "tool" BOOLEAN,
--     "technology" BOOLEAN,
--     "active" BOOLEAN
-- );

-- INSERT INTO "portfolio" ("creation_time", "update_time", "version",
--                          "category", "portfolio_name","active"
-- )
-- VALUES ( CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0,
--         'Developer','Full Stack Developer', true
--        );

-- INSERT INTO "portfolio_profile" ("portfolio_id", "profile_id") VALUES ( 1, 1 );

-- INSERT INTO "identity" ("creation_time", "update_time", "version", "first_name",
--                        "last_name", "title", "summary", "email", "phone", "active"
-- )
-- VALUES (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0,
--         'Horacio',
--         'Correia',
--         'Junior Fullstack Developer',
--         'I''m a Canadian expat with an adventurous spirit and a curiosity ' ||
--         'for the unknown. This sense of adventure and desire to explore the ' ||
--         'unknown has always been a strong motivator in my life, and has led ' ||
--         'me to some awesome experiences. Now, prepared to embark on a new ' ||
--         'journey, i''m itching to begin my next great adventure as a ' ||
--         'developer.',
--         'rmcorre@gmail.com',
--         '(351) 91 421 3861',
--         true
--        );

-- INSERT INTO "profile_address" (
--     "creation_time",
--     "update_time",
--     "version",
--     "building_number",
--     "profile_id",
--     "country",
--     "current",
--     "parish_town_city",
--     "postal_code",
--     "region",
--     "state_province",
--     "street"
-- )
-- VALUES (
--            CURRENT_TIMESTAMP(),
--            CURRENT_TIMESTAMP(),
--            0,
--            19,
--            1,
--            'Portugal',
--            TRUE,
--            'Vila de Nordeste',
--            '9630-202',
--            'Azores',
--            'Sao Miguel',
--            'Rua Eng Hernani Santos'
--        );

-- INSERT INTO "education" (
--     "creation_time",
--     "update_time",
--     "version",
--     "course",
--     "end_date",
--     "institution",
--     "start_date"
-- )
-- VALUES (
--            CURRENT_TIMESTAMP(),
--            CURRENT_TIMESTAMP(),
--            0,
--            'Junior Fullstack Developer',
--            '2019',
--            'Academia De Codigo',
--            '2019'
--        );
--
-- INSERT INTO "education" (
--     "creation_time",
--     "update_time",
--     "version",
--     "course",
--     "end_date",
--     "institution",
--     "start_date"
-- )
-- VALUES (
--            CURRENT_TIMESTAMP(),
--            CURRENT_TIMESTAMP(),
--            0,
--            'Bachelor of Arts',
--            '1996',
--            'Concordia University College',
--            '1992'
--        );

INSERT INTO "employer" (
    "creation_time",
    "update_time",
    "version",
    "employer_name",
    "end_date",
    "position",
    "start_date",
    "summary"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Tesco',
           '2017',
           'Customer Service Representative',
           '2016',
           'Responsible for assisting customers in addition to:'
       );

INSERT INTO "employer_address" (
    "creation_time",
    "update_time",
    "version",
    "building_number",
    "country",
    "current",
    "parish_town_city",
    "postal_code",
    "region",
    "state_province",
    "street",
    "employer_id"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           null,
           'UK',
           true,
           'Macclesfield',
           'SK11 6UZ',
           'England',
           'Cheshire',
           'Exchange Street',
           1
       );

-- INSERT INTO "industry_knowledge" (
--     "creation_time",
--     "update_time",
--     "version",
--     "domain",
--     "skill",
--     "active"
-- )
-- VALUES (
--            CURRENT_TIMESTAMP(),
--            CURRENT_TIMESTAMP(),
--            0,
--            'Junior Fullstack Developer',
--            'Software Architecture',
--            true
--        );
--
-- INSERT INTO "industry_knowledge" (
--     "creation_time",
--     "update_time",
--     "version",
--     "domain",
--     "skill",
--     "active"
-- )
-- VALUES (
--            CURRENT_TIMESTAMP(),
--            CURRENT_TIMESTAMP(),
--            0,
--            'Junior Fullstack Developer',
--            'Architectural Patterns',
--            true
--        );
--
-- INSERT INTO "industry_knowledge" (
--     "creation_time",
--     "update_time",
--     "version",
--     "domain",
--     "skill",
--     "active"
-- )
-- VALUES (
--            CURRENT_TIMESTAMP(),
--            CURRENT_TIMESTAMP(),
--            0,
--            'Junior Fullstack Developer',
--            'Design Patterns',
--            true
--        );
--
-- INSERT INTO "industry_knowledge" (
--     "creation_time",
--     "update_time",
--     "version",
--     "domain",
--     "skill",
--     "active"
-- )
-- VALUES (
--            CURRENT_TIMESTAMP(),
--            CURRENT_TIMESTAMP(),
--            0,
--            'Junior Fullstack Developer',
--            'RDBMS',
--            true
--        );

// ******************* Front End *********************
INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'JavaScript',
           'Front-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'ES6',
           'Front-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'React',
           'Front-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'HTML',
           'Front-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'CSS',
           'Front-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'REST',
           'Front-end',
           false,
           true,
           true
       );

//******************** Back End *************************

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Java',
           'Back-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'JDBC',
           'Back-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'JPA',
           'Back-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'SQL',
           'Back-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'MySQL',
           'Back-end',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'JUnit',
           'Back-end',
           true,
           false,
           true
       );

//************************** Libraries and Frameworks *******************
INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Hibernate',
           'Library/Framework',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Spring',
           'Library/Framework',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'AOP',
           'Library/Framework',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Mokito',
           'Library/Framework',
           true,
           false,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'JQuery',
           'Library/Framework',
           true,
           false,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Thymeleaf',
           'Library/Framework',
           true,
           false,
           true
       );

// ********************************* Tools ***********************
INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Tomcat',
           'Tools',
           false,
           true,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Git',
           'Tools',
           true,
           false,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'GitFlow',
           'Tools',
           true,
           false,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Maven',
           'Tools',
           true,
           false,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Webpack',
           'Tools',
           true,
           false,
           true
       );

INSERT INTO "tools_and_technology" (
    "creation_time",
    "update_time",
    "version",
    "domain",
    "skill",
    "skill_category",
    "tool",
    "technology",
    "active"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Junior Fullstack Developer',
           'Bootstrap',
           'Tools',
           true,
           false,
           true
       );