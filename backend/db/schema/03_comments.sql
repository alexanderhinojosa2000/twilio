DROP TABLE IF EXISTS comments CASCADE;

CREATE TABLE comments (
    id SERIAL PRIMARY KEY NOT NULL,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    cat_form_id INTEGER REFERENCES cat_forms(id) ON DELETE CASCADE,

    comment VARCHAR(500) NOT NULL,
    date_created TIMESTAMP NOT NULL DEFAULT NOW()

  
);