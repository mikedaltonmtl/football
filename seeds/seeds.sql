INSERT INTO players (initial, name, club, value, selected_position)
VALUES
('L', 'Fabianski', 'West Ham', '15', NULL),
('B', 'Johnson', 'West Ham', '15', NULL),
('A', 'Cresswell', 'West Ham', '15', NULL),
('K', 'Zouma', 'West Ham', '25', NULL),
('V', 'Coufal', 'West Ham', '25', 'RB'),
('G', 'Scamacca', 'West Ham', '50', NULL),
('P', 'Fornals', 'West Ham', '50', NULL),
('M', 'Antonio', 'West Ham', '25', NULL),
('M', 'Lanzini', 'West Ham', '25', NULL),
('L', 'Paqueta', 'West Ham', '50', 'RM'),
('M', 'Cornet', 'West Ham', '30', NULL),
('J', 'Bowen', 'West Ham', '45', NULL),
('S', 'Benrahma', 'West Ham', '40', 'LF'),
('T', 'Soucek', 'West Ham', '20', NULL),
('D', 'Rice', 'West Ham', '60', NULL),
('N', 'Aguerd', 'West Ham', '20', NULL),
('A', 'Ramsdale', 'Arsenal', '30', 'GK'),
('K', 'Tierney', 'Arsenal', '25', NULL),
('B', 'White', 'Arsenal', '25', NULL),
('T', 'Partey', 'Arsenal', '35', NULL),
(NULL, 'Gabriel', 'Arsenal', '30', NULL),
('B', 'Saka', 'Arsenal', '60', NULL),
('M', 'Odegaard', 'Arsenal', '60', NULL),
('G', 'Jesus', 'Arsenal', '60', 'CF'),
('E', 'Smith Rowe', 'Arsenal', '30', NULL),
('G', 'Martinelli', 'Arsenal', '50', NULL),
('W', 'Saliba', 'Arsenal', '25', 'LCB'),
('E', 'Nketiah', 'Arsenal', '30', NULL),
('T', 'Tomiyasu', 'Arsenal', '20', NULL),
('F', 'Vieira', 'Arsenal', '30', NULL),
('M', 'Elneny', 'Arsenal', '30', NULL),
('G', 'Xhaka', 'Arsenal', '30', 'CM'),
('O', 'Zinchenko', 'Arsenal', '40', NULL),
('K', 'Arrizabalaga', 'Chelsea', '20', NULL),
(NULL, 'Jorginho', 'Chelsea', '30', NULL),
('T', 'Silva', 'Chelsea', '30', NULL),
('N''Golo', 'Kante', 'Chelsea', '40', NULL),
('M', 'Kovacic', 'Chelsea', '35', NULL),
('P.E', 'Aubameyang', 'Chelsea', '50', NULL),
('C', 'Pulisic', 'Chelsea', '45', NULL),
('R', 'Loftus-Cheek', 'Chelsea', '30', NULL),
('T', 'Chalobah', 'Chelsea', '20', NULL),
('E', 'Mendy', 'Chelsea', '30', NULL),
('R', 'Sterling', 'Chelsea', '60', NULL),
('A', 'Broja', 'Chelsea', '40', NULL),
('M', 'Mount', 'Chelsea', '35', NULL),
('B', 'Chilwell', 'Chelsea', '35', 'LB'),
('H', 'Ziyech', 'Chelsea', '45', NULL),
('C', 'Gallagher', 'Chelsea', '30', NULL),
('R', 'James', 'Chelsea', '40', NULL),
('K', 'Koulibaly', 'Chelsea', '30', NULL),
('K', 'Havertz', 'Chelsea', '30', NULL),
('W', 'Fofana', 'Chelsea', '30', NULL),
(NULL, 'Alisson', 'Liverpool', '40', NULL),
('J', 'Gomez', 'Liverpool', '20', NULL),
(NULL, 'Fabinho', 'Liverpool', '30', NULL),
('V', 'van Dijk', 'Liverpool', '50', NULL),
('I', 'Konate', 'Liverpool', '30', NULL),
(NULL, 'Thiago', 'Liverpool', '40', NULL),
('J', 'Milner', 'Liverpool', '15', NULL),
('N', 'Keita', 'Liverpool', '30', 'LM'),
('R', 'Firmino', 'Liverpool', '35', NULL),
('M', 'Salah', 'Liverpool', '70', 'RF'),
(NULL, 'Adrian', 'Liverpool', '15', NULL),
('J', 'Henderson', 'Liverpool', '25', NULL),
('A', 'Oxlade-Chamberlain', 'Liverpool', '20', NULL),
('C', 'Jones', 'Liverpool', '30', NULL),
('H', 'Elliott', 'Liverpool', '20', NULL),
('D', 'Jota', 'Liverpool', '45', NULL),
('K', 'Tsimikas', 'Liverpool', '25', NULL),
('L', 'Diaz', 'Liverpool', '60', NULL),
('A', 'Robertson', 'Liverpool', '30', NULL),
('D', 'Nunez', 'Liverpool', '60', NULL),
('J', 'Matip', 'Liverpool', '20', 'RCB'),
('T', 'Alexander-Arnold', 'Liverpool', '50', NULL)
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
