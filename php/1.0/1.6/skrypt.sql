ALTER TABLE dostawcy ADD PRIMARY KEY(id_dostawcy);

ALTER TABLE towary ADD PRIMARY KEY(id_towaru);

ALTER TABLE magazyn ADD PRIMARY KEY(id_towaru);

CREATE INDEX dostawcy ON towary (id_dostawcy);

ALTER TABLE dostawcy MODIFY COLUMN id_dostawcy INT (11) auto_increment;

ALTER TABLE towary MODIFY COLUMN id_towaru  INT (11) auto_increment;

ALTER TABLE `towary` ADD FOREIGN KEY (`id_dostawcy`) REFERENCES `dostawcy`(`id_dostawcy`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `magazyn` ADD FOREIGN KEY (`id_towaru`) REFERENCES `towary`(`id_towaru`) ON DELETE RESTRICT ON UPDATE RESTRICT;