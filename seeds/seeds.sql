INSERT INTO players (initial, name, club, value, selected)
VALUES
('L', 'Fabianski', 'West Ham', '15', FALSE),
('B', 'Johnson', 'West Ham', '15', FALSE),
('A', 'Cresswell', 'West Ham', '15', FALSE),
('K', 'Zouma', 'West Ham', '25', FALSE),
('V', 'Coufal', 'West Ham', '25', FALSE),
('G', 'Scamacca', 'West Ham', '50', FALSE),
('P', 'Fornals', 'West Ham', '50', FALSE),
('M', 'Antonio', 'West Ham', '25', FALSE),
('M', 'Lanzini', 'West Ham', '25', FALSE),
('L', 'Paqueta', 'West Ham', '50', FALSE),
('M', 'Cornet', 'West Ham', '30', FALSE),
('J', 'Bowen', 'West Ham', '45', FALSE),
('S', 'Benrahma', 'West Ham', '40', FALSE),
('T', 'Soucek', 'West Ham', '20', FALSE),
('D', 'Rice', 'West Ham', '60', FALSE),
('N', 'Aguerd', 'West Ham', '20', FALSE),
('A', 'Ramsdale', 'Arsenal', '30', FALSE),
('K', 'Tierney', 'Arsenal', '25', FALSE),
('B', 'White', 'Arsenal', '25', FALSE),
('T', 'Partey', 'Arsenal', '35', FALSE),
(NULL, 'Gabriel', 'Arsenal', '30', FALSE),
('B', 'Saka', 'Arsenal', '60', FALSE),
('M', 'Odegaard', 'Arsenal', '60', FALSE),
('G', 'Jesus', 'Arsenal', '60', FALSE),
('E', 'Smith Rowe', 'Arsenal', '30', FALSE),
('G', 'Martinelli', 'Arsenal', '50', FALSE),
('W', 'Saliba', 'Arsenal', '25', FALSE),
('E', 'Nketiah', 'Arsenal', '30', FALSE),
('T', 'Tomiyasu', 'Arsenal', '20', FALSE),
('F', 'Vieira', 'Arsenal', '30', FALSE),
('M', 'Elneny', 'Arsenal', '30', FALSE),
('G', 'Xhaka', 'Arsenal', '30', FALSE),
('O', 'Zinchenko', 'Arsenal', '40', FALSE),
('K', 'Arrizabalaga', 'Chelsea', '20', FALSE),
(NULL, 'Jorginho', 'Chelsea', '30', FALSE),
('T', 'Silva', 'Chelsea', '30', FALSE),
('N''Golo', 'Kante', 'Chelsea', '40', FALSE),
('M', 'Kovacic', 'Chelsea', '35', FALSE),
('P.E', 'Aubameyang', 'Chelsea', '50', FALSE),
('C', 'Pulisic', 'Chelsea', '45', FALSE),
('R', 'Loftus-Cheek', 'Chelsea', '30', FALSE),
('T', 'Chalobah', 'Chelsea', '20', FALSE),
('E', 'Mendy', 'Chelsea', '30', FALSE),
('R', 'Sterling', 'Chelsea', '60', FALSE),
('A', 'Broja', 'Chelsea', '40', FALSE),
('M', 'Mount', 'Chelsea', '35', FALSE),
('B', 'Chilwell', 'Chelsea', '35', FALSE),
('H', 'Ziyech', 'Chelsea', '45', FALSE),
('C', 'Gallagher', 'Chelsea', '30', FALSE),
('R', 'James', 'Chelsea', '40', FALSE),
('K', 'Koulibaly', 'Chelsea', '30', FALSE),
('K', 'Havertz', 'Chelsea', '30', FALSE),
('W', 'Fofana', 'Chelsea', '30', FALSE),
(NULL, 'Alisson', 'Liverpool', '40', FALSE),
('J', 'Gomez', 'Liverpool', '20', FALSE),
(NULL, 'Fabinho', 'Liverpool', '30', FALSE),
('V', 'van Dijk', 'Liverpool', '50', FALSE),
('I', 'Konate', 'Liverpool', '30', FALSE),
(NULL, 'Thiago', 'Liverpool', '40', FALSE),
('J', 'Milner', 'Liverpool', '15', FALSE),
('N', 'Keita', 'Liverpool', '30', FALSE),
('R', 'Firmino', 'Liverpool', '35', FALSE),
('M', 'Salah', 'Liverpool', '70', FALSE),
(NULL, 'Adrian', 'Liverpool', '15', FALSE),
('J', 'Henderson', 'Liverpool', '25', FALSE),
('A', 'Oxlade-Chamberlain', 'Liverpool', '20', FALSE),
('C', 'Jones', 'Liverpool', '30', FALSE),
('H', 'Elliott', 'Liverpool', '20', FALSE),
('D', 'Jota', 'Liverpool', '45', FALSE),
('K', 'Tsimikas', 'Liverpool', '25', FALSE),
('L', 'Diaz', 'Liverpool', '60', FALSE),
('A', 'Robertson', 'Liverpool', '30', FALSE),
('D', 'Nunez', 'Liverpool', '60', FALSE),
('J', 'Matip', 'Liverpool', '20', FALSE),
('T', 'Alexander-Arnold', 'Liverpool', '50', FALSE)
;
-- West Ham
INSERT INTO positions (player_id, position)
VALUES
(1, 'G'), (2, 'R'), (3, 'L'), (4, 'C'), (5, 'R'), (6, 'F'), (7, 'M'), (8, 'M'), (8, 'F'), (9, 'M'),
(10, 'M'), (10, 'F'), (11, 'F'), (12, 'F'), (13, 'F'), (14, 'M'), (15, 'M'), (16, 'C');
-- Arsenal
INSERT INTO positions (player_id, position)
VALUES
(17, 'G'), (18, 'L'), (19, 'R'), (19, 'C'), (20, 'M'), (21, 'C'), (22, 'F'), (23, 'F'), (24, 'F'),
(25, 'M'), (26, 'F'), (27, 'C'), (28, 'F'), (29, 'R'), (30, 'M'), (31, 'M'), (32, 'M'), (33, 'R'),
(33, 'M');
-- Chelsea
INSERT INTO positions (player_id, position)
VALUES
(34, 'G'), (35, 'M'), (36, 'C'), (37, 'M'), (38, 'M'), (39, 'F'), (40, 'F'), (41, 'M'), (42, 'C'),
(43, 'G'), (44, 'F'), (45, 'F'), (46, 'M'), (47, 'L'), (48, 'F'), (49, 'M'), (50, 'R'), (51, 'C'),
(52, 'F'), (53, 'C');
-- Liverpool
INSERT INTO positions (player_id, position)
VALUES
(54, 'G'), (55, 'R'), (56, 'M'), (57, 'C'), (58, 'C'), (59, 'M'), (60, 'R'), (60, 'L'), (60, 'M'),
(61, 'M'), (62, 'F'), (63, 'F'), (64, 'G'), (65, 'M'), (66, 'M'), (67, 'M'), (68, 'M'), (69, 'F'),
(70, 'L'), (71, 'F'), (72, 'L'), (73, 'F'), (74, 'C'), (75, 'R');

INSERT INTO teams (name)
VALUES ('All Stars');