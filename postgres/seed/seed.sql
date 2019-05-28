BEGIN TRANSACTION;

INSERT into users (name, email, entries, joined) values ('Tim', 'tim@gmail.com', 5, '2018-01-01');
INSERT into login (hash, email) values ('$2a$10$DL8HV/ixF/OVizK8ObB4Qem/0JT1kgUHf9AuunKL5xb1EAPHnNa5O', 'tim@gmail.com');

COMMIT;
