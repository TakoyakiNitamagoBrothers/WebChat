CREATE TABLE IF NOT EXISTS "user" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);

INSERT INTO "user" (name, password) 
VALUES 
  ('user1', 'pass1'),
  ('user2', 'pass2'),
  ('user3', 'pass3')
ON CONFLICT (name) DO NOTHING;