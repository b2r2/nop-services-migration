CREATE TABLE IF NOT EXISTS recruiters
(
    id                      serial          NOT NULL PRIMARY KEY,
    hh_id                   varchar(255)    NOT NULL,
    name                    varchar(255)    NOT NULL,
    url                     varchar(255)    NOT NULL UNIQUE,
    type_id                 int             NOT NULL,
    area                    varchar(255)    NOT NULL,
    schedule                varchar(255)    NOT NULL,
    requirement             varchar(255)    NOT NULL,
    responsibility          varchar(255)    NOT NULL,
    metro                   varchar(100)    NOT NULL,
    salary_from             int             NOT NULL DEFAULT 0,
    salary_to               int             NOT NULL DEFAULT 0,
    currency                varchar(3)      NOT NULL DEFAULT 'RUR',
    employer                varchar(255)    NOT NULL,
    employer_url            varchar(255)    NOT NULL,
    published_at            timestamp       NOT NULL,
    language_key            varchar(100)    NOT NULL,
    created_at              TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);