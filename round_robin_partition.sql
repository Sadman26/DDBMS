CREATE TABLE parent (
  id serial PRIMARY KEY,
  name text,
  created_at timestamp
);
CREATE TABLE child1 (
  CHECK (created_at >= '2023-01-01' AND created_at < '2023-02-01')
) INHERITS (parent);

CREATE TABLE child2 (
  CHECK (created_at >= '2023-02-01' AND created_at < '2023-03-01')
) INHERITS (parent);

CREATE TABLE child3 (
  CHECK (created_at >= '2023-03-01' AND created_at < '2023-04-01')
) INHERITS (parent);