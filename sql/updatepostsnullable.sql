ALTER TABLE posts
ALTER COLUMN PostEditContent DROP NOT NULL,
ALTER COLUMN PostDeleted SET DEFAULT false,
ALTER COLUMN PostDeletedBy DROP NOT NULL,
ALTER COLUMN PostDeleteTime DROP NOT NULL;
