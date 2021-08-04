INSERT INTO "candidate" ("creation_time", "update_time", "version", "first_name",
                         "last_name", "title", "summary", "email", "phone", "active"
)
VALUES (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0, 'Horacio',
        'Correia', 'Junior Fullstack Developer', 'My portfolio summary...', 'rmcorre@gmail.com', '91 421 3861', true
);

INSERT INTO "candidate_address"
    ("creation_time",
     "update_time",
     "version",
     "building_number",
     "candidate_id",
     "country",
     "current",
     "parish_town_city",
     "postal_code",
     "region",
     "state_province",
     "street")
     VALUES
            (CURRENT_TIMESTAMP(),
             CURRENT_TIMESTAMP(),
             0,
             19,
             1,
             'Portugal',
             TRUE,
             'Vila de Nordeste',
             '9630-202',
             'Azores',
             'Sao Miguel',
             'Rua Eng Hernani Santos'
);

INSERT INTO "portfolio" (
    "creation_time",
    "update_time",
    "version",
    "candidate_id"
)
VALUES (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0, 1);

INSERT INTO "educational_background" (
    "creation_time",
    "update_time",
    "version",
    "identityAddress",
    "course",
    "end_date",
    "institution",
    "start_date",
    "portfolio_id"
)
VALUES (
    CURRENT_TIMESTAMP(),
    CURRENT_TIMESTAMP(),
    0,
    'Terceira, Azores',
    'Junior Fullstack Develope',
    'Aug - 2019',
    'Academia De Codigo',
    'May - 2019',
    1
);

INSERT INTO "educational_background" (
    "creation_time",
    "update_time",
    "version",
    "identityAddress",
    "course",
    "end_date",
    "institution",
    "start_date",
    "portfolio_id"
)
VALUES (
           CURRENT_TIMESTAMP(),
           CURRENT_TIMESTAMP(),
           0,
           'Edmonton, Alberta',
           'Bachelor of Arts',
           'Sep - 1992',
           'Concordia University College',
           'May - 1996',
           1
       );

