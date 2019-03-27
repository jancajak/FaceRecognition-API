BEGIN TRANSACTION;

INSERT into users (name, email, entries, joined) values ('Tim', 'tim@gmail.com', 5, '2018-01-01');
INSERT into login (hash, email) values ('$2a$10$cra7JD/mxl5z0.J1M8EZmuVCwj71QIFJjdmdU8NqLRgcXJWozGNny', 'tim@gmail.com');

COMMIT;
