DROP DATABASE IF EXISTS Libros;

CREATE DATABASE IF NOT EXISTS Libros;
USE Libros;

CREATE TABLE libro (
    lib_id INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único para cada libro
    lib_nombre VARCHAR(255),               -- Nombre del libro
    lib_editorial VARCHAR(255),            -- Editorial del libro
    lib_fecha_lan DATE,                    -- Fecha de lanzamiento del libro
    lib_genero VARCHAR(100),               -- Género del libro
    aut_nombre VARCHAR(255),               -- Nombre del autor
    aut_apellido VARCHAR(255),             -- Apellido del autor
    ISBN VARCHAR(20) UNIQUE,               -- Número ISBN del libro, único para cada libro
    descripcion TEXT,                      -- Descripción breve del libro
    INDEX (aut_nombre, aut_apellido),      -- Índice compuesto para optimizar las búsquedas por autor
    INDEX (lib_nombre),                    -- Índice para optimizar las búsquedas por nombre de libro
    INDEX (lib_editorial)                  -- Índice para optimizar las búsquedas por editorial
);



INSERT INTO libro (lib_nombre, lib_editorial, lib_fecha_lan, lib_genero, aut_nombre, aut_apellido, ISBN, descripcion) VALUES
('Blindness', 'Harcourt', '1995-08-01', 'Ficción distópica', 'José', 'Saramago', '978-0151002510', 'Un brote de ceguera blanca sacude una ciudad, y los afectados son colocados en cuarentena.'),
('La ridícula idea de no volver a verte', 'Seix Barral', '2013-05-20', 'Memorias', 'Rosa', 'Montero', '978-8432215486', 'Una reflexión sobre el duelo y la pérdida tras la muerte del esposo de la autora.'),
('La fiesta del chivo', 'Alfaguara', '2000-03-03', 'Historia', 'Mario', 'Vargas Llosa', '978-8420405711', 'Novela histórica que explora la tiranía de Trujillo en la República Dominicana.'),
('Middlesex', 'Farrar, Straus, and Giroux', '2002-09-04', 'Epopeya', 'Jeffrey', 'Eugenides', '978-0374199692', 'La saga de una familia griega y su hijo intersexual en América.'),
('El Aleph', 'Emecé', '1949-01-01', 'Cuentos', 'Jorge Luis', 'Borges', '978-9500427310', 'Colección de cuentos cortos que exploran conceptos de infinito y universos paralelos.'),
('La ciudad y los perros', 'Seix Barral', '1962-01-01', 'Drama', 'Mario', 'Vargas Llosa', '978-8408045072', 'La historia de un grupo de cadetes en una escuela militar en Lima.'),
('Ocho lugares que me recuerdan a ti', 'Planeta', '2016-05-01', 'Romance', 'Alberto', 'Villarreal', '978-6070731734', 'Una historia de amor juvenil y la búsqueda de identidad.'),
('Bajo la misma estrella', 'Dutton Books', '2012-01-10', 'Drama juvenil', 'John', 'Green', '978-0525478812', 'Dos adolescentes con cáncer se enamoran después de conocerse en un grupo de apoyo.'),
('Los detectives salvajes', 'Anagrama', '1998-01-01', 'Aventura', 'Roberto', 'Bolaño', '978-8433966633', 'Una narrativa que sigue a un grupo de poetas en busca de una misteriosa escritora.'),
('Gone Girl', 'Crown Publishing Group', '2012-06-05', 'Thriller', 'Gillian', 'Flynn', '978-0307588364', 'Un hombre se convierte en el sospechoso principal de la desaparición de su esposa.'),
('La sombra del viento', 'Planeta', '2001-06-01', 'Misterio', 'Carlos', 'Ruiz Zafón', '978-8408081186', 'Un niño descubre un libro que lo lleva a desenterrar los secretos más oscuros de Barcelona.'),
('El juego de Ender', 'Tor Books', '1985-01-01', 'Ciencia ficción', 'Orson Scott', 'Card', '978-0312932084', 'Un niño genio es entrenado mediante juegos para defender la Tierra de una invasión alienígena.'),
('La casa de los espíritus', 'Aguilar', '1982-10-01', 'Realismo mágico', 'Isabel', 'Allende', '978-8403095560', 'La historia de varias generaciones de una familia en Chile, marcada por amores, sueños y tragedias.'),
('Las intermitencias de la muerte', 'Alfaguara', '2005-11-11', 'Sátira', 'José', 'Saramago', '978-8420469457', 'En un país donde la gente deja de morir, la muerte decide enviar cartas.'),
('1984', 'Penguin Books', '1950-06-01', 'Distopía', 'George', 'Orwell', '978-0140126716', 'Una representación oscura del futuro donde el gobierno controla cada aspecto de la vida humana.'),
('Crimen y castigo', 'The Russian Messenger', '1866-01-01', 'Psicológica', 'Fyodor', 'Dostoevsky', '978-0679734505', 'El dilema moral de un joven pobre que decide asesinar y robar a una anciana.'),
('Pedro Páramo', 'Fondo de Cultura Económica', '1955-01-01', 'Realismo mágico', 'Juan', 'Rulfo', '978-9681603206', 'Un hombre va en busca de su padre en un pueblo habitado por fantasmas.'),
('El principito', 'Reynal & Hitchcock', '1943-04-06', 'Fábula', 'Antoine', 'de Saint-Exupéry', '978-0156012195', 'Un pequeño príncipe explora el universo, descubriendo la diversidad de la vida y la naturaleza humana.'),
('Los hombres que no amaban a las mujeres', 'Norstedts Förlag', '2005-08-01', 'Misterio', 'Stieg', 'Larsson', '978-0307269751', 'Una periodista y un hacker investigan una desaparición ocurrida cuarenta años atrás.'),
('Vida y destino', 'Liberty Publishing House', '1980-01-01', 'Histórica', 'Vasily', 'Grossman', '978-1595581653', 'La vida de una familia rusa durante la Batalla de Stalingrado en la Segunda Guerra Mundial.'),
('La noche en que Frankenstein leyó el Quijote', 'Planeta', '2012-11-06', 'Ensayo', 'Santiago', 'Posteguillo', '978-8408030694', 'Curiosidades literarias y momentos clave en la historia de la literatura.'),
('Shantaram', 'Scribe Publications', '2003-10-01', 'Aventura', 'Gregory David', 'Roberts', '978-1920769005', 'La historia de un fugitivo australiano que encuentra una nueva vida en los bajos fondos de Bombay.'),
('El código Da Vinci', 'Doubleday', '2003-03-18', 'Misterio', 'Dan', 'Brown', '978-0385504201', 'Un simbólogo descifra un misterio que involucra una sociedad secreta y la obra de Leonardo Da Vinci.'),
('El guardián entre el centeno', 'Little, Brown and Company', '1951-07-16', 'Novela', 'J.D.', 'Salinger', '978-0316769488', 'Un adolescente huye de su escuela prepatoria y pasa tres días en Nueva York.'),
('Las venas abiertas de América Latina', 'Siglo XXI Editores', '1971-04-01', 'Ensayo', 'Eduardo', 'Galeano', '978-9682313158', 'Un análisis de la historia de la explotación de América Latina desde la colonización hasta el siglo XX.'),
('La muerte de Artemio Cruz', 'Fondo de Cultura Económica', '1962-06-01', 'Novela', 'Carlos', 'Fuentes', '978-9681604777', 'Un poderoso hombre recuerda los momentos clave de su vida mientras yace en su lecho de muerte.'),
('Memorias de mis putas tristes', 'Diana', '2004-10-01', 'Romántica', 'Gabriel', 'García Márquez', '978-1400095803', 'Un anciano celebra su cumpleaños noventa con una joven prostituta, lo que le lleva a recordar su pasado.'),
('La naranja mecánica', 'William Heinemann', '1962-01-01', 'Distopía', 'Anthony', 'Burgess', '978-0434021512', 'La historia de un joven delincuente y los métodos extremos del gobierno para reformarlo.'),
('Rebelión en la granja', 'Secker & Warburg', '1945-08-17', 'Sátira política', 'George', 'Orwell', '978-0141036132', 'Una fábula sobre los animales de una granja que se rebelan contra su dueño.'),
('El túnel', 'Sur', '1948-01-01', 'Psicológica', 'Ernesto', 'Sabato', '978-9871156343', 'Un pintor obsesionado relata su pasión y posterior asesinato de la mujer que ama.');


INSERT INTO libro (lib_nombre, lib_editorial, lib_fecha_lan, lib_genero, aut_nombre, aut_apellido, ISBN, descripcion) VALUES
('El hombre en busca de sentido', 'Herder', '1946-01-01', 'Memorias', 'Viktor', 'Frankl', '978-0807014295', 'Relato de las experiencias del autor en un campo de concentración nazi y su teoría psicológica resultante.'),
('Cazadores de sombras: Ciudad de hueso', 'Margaret K. McElderry Books', '2007-03-27', 'Fantasía urbana', 'Cassandra', 'Clare', '978-1416914280', 'Una adolescente se ve arrastrada al mundo de los cazadores de sombras, guerreros dedicados a liberar la Tierra de demonios.'),
('Pachinko', 'Grand Central Publishing', '2017-02-07', 'Histórica', 'Min Jin', 'Lee', '978-1455563937', 'Una saga familiar multi-generacional sobre coreanos exiliados que viven en Japón.'),
('La chica que soñaba con una cerilla y un bidón de gasolina', 'Destino', '2006-01-01', 'Thriller', 'Stieg', 'Larsson', '978-8423349838', 'La segunda novela de la serie Millennium, con Lisbeth Salander enfrentando su oscuro pasado.'),
('Dioses americanos', 'Rocabolsillo', '2005-09-30', 'Fantasía', 'Neil', 'Gaiman', '978-8496940611', 'Shadow Moon se ve envuelto en una batalla entre los viejos dioses mitológicos y los nuevos dioses de la tecnología.'),
('Sapiens: De animales a dioses', 'Harper', '2014-05-01', 'No ficción', 'Yuval Noah', 'Harari', '978-0062316097', 'Una breve historia de la humanidad, desde el desarrollo de especies arcaicas hasta el presente.'),
('El sol y sus flores', 'Andrews McMeel Publishing', '2017-10-03', 'Poesía', 'Rupi', 'Kaur', '978-1449486792', 'Una colección de poesía y prosa sobre el crecimiento y la curación.'),
('Ángeles y demonios', 'Pocket Books', '2000-05-23', 'Thriller', 'Dan', 'Brown', '978-0743412391', 'El simbólogo Robert Langdon descubre la resurrección de una antigua hermandad llamada Illuminati.'),
('El camino de los reyes', 'Tor Books', '2010-08-31', 'Fantasía épica', 'Brandon', 'Sanderson', '978-0765326355', 'La primera novela de la serie Archivo de las Tormentas, situada en el tumultuoso mundo de Roshar.'),
('La luz que no puedes ver', 'Scribner', '2014-05-06', 'Histórica', 'Anthony', 'Doerr', '978-1476746586', 'Las vidas paralelas de un niño alemán y una niña ciega francesa durante la Segunda Guerra Mundial.'),
('Yo antes de ti', 'Penguin Books', '2012-01-05', 'Romance', 'Jojo', 'Moyes', '978-0718157838', 'Una joven cuidadora forma un vínculo inesperado con un hombre paralizado al que está cuidando.'),
('Matar a un ruiseñor', 'J.B. Lippincott & Co.', '1960-07-11', 'Drama', 'Harper', 'Lee', '978-0446310789', 'Una niña en Alabama durante la Gran Depresión observa a su padre defender a un hombre negro acusado injustamente de violación.'),
('La ladrona de libros', 'Knopf', '2005-09-01', 'Histórica', 'Markus', 'Zusak', '978-0375842207', 'Durante la Segunda Guerra Mundial en Alemania, una niña encuentra consuelo en robar libros y compartirlos con otros.'),
('Cien años de soledad', 'Editorial Sudamericana', '1967-05-05', 'Realismo mágico', 'Gabriel', 'García Márquez', '978-8437604947', 'La historia épica de la familia Buendía a lo largo de siete generaciones en el pueblo de Macondo.'),
('La historia del amor', 'W. W. Norton & Company', '2005-05-17', 'Romance', 'Nicole', 'Krauss', '978-0393328622', 'Un libro perdido conecta a varias personas de manera profunda y misteriosa.'),
('Breve historia del tiempo', 'Bantam Dell Publishing Group', '1988-04-01', 'Ciencia', 'Stephen', 'Hawking', '978-0553380163', 'Una explicación accesible de los conceptos complejos como los agujeros negros, la teoría de cuerdas y el espacio-tiempo.'),
('El poder del ahora', 'New World Library', '1997-08-19', 'Espiritual', 'Eckhart', 'Tolle', '978-1577314806', 'Guía práctica para alcanzar la iluminación y vivir en el presente.'),
('El guardián entre el centeno', 'Little, Brown and Company', '1951-07-16', 'Novela', 'J.D.', 'Salinger', '978-1316769488', 'Un adolescente de Nueva York, Holden Caulfield, narra su vida y sus experiencias después de ser expulsado de la escuela preparatoria.'),
('Outlander', 'Delacorte Press', '1991-06-01', 'Histórica', 'Diana', 'Gabaldon', '978-0385302302', 'Una enfermera de la Segunda Guerra Mundial viaja en el tiempo hasta la Escocia del siglo XVIII.'),
('El cuento de la criada', 'Houghton Mifflin Harcourt', '1985-08-17', 'Distopía', 'Margaret', 'Atwood', '978-0385490818', 'En un futuro distópico, las mujeres son subyugadas y forzadas a servir en roles domésticos y reproductivos.'),
('La vida invisible de Addie LaRue', 'Tor Books', '2020-10-06', 'Fantasía', 'V.E.', 'Schwab', '978-0765387561', 'Una joven en Francia hace un trato para vivir eternamente, pero será olvidada por todos los que conozca.'),
('Las viudas de los jueves', 'Alfaguara', '2005-06-01', 'Thriller', 'Claudia', 'Piñeiro', '978-9870401368', 'En un barrio cerrado de Buenos Aires, la vida perfecta de sus habitantes oculta secretos oscuros.'),
('El museo de la inocencia', 'Knopf', '2008-08-29', 'Romance', 'Orhan', 'Pamuk', '978-0307266768', 'En Estambul, un hombre colecciona objetos relacionados con su amor no correspondido.'),
('La elegancia del erizo', 'Europa Editions', '2006-09-02', 'Ficción', 'Muriel', 'Barbery', '978-1933372600', 'La vida de una portera parisina y una niña prodigio se entrelazan de maneras inesperadas.'),
('Desayuno en Tiffany’s', 'Random House', '1958-10-01', 'Novela', 'Truman', 'Capote', '978-0679745655', 'Una joven neoyorquina persigue sus sueños y un estilo de vida glamoroso en los años 40.'),
('El ruiseñor', 'St. Martin’s Press', '2015-02-03', 'Histórica', 'Kristin', 'Hannah', '978-0312577223', 'Dos hermanas francesas enfrentan la ocupación nazi de diferentes maneras durante la Segunda Guerra Mundial.'),
('La sombra del viento', 'Planeta', '2001-06-01', 'Misterio', 'Carlos', 'Ruiz Zafón', '978-8408081176', 'En la Barcelona de posguerra, un joven descubre un libro que cambiará el curso de su vida.'),
('La noche de Tlatelolco', 'Era', '1971-10-02', 'Documental', 'Elena', 'Poniatowska', '978-9684114739', 'Testimonios sobre la masacre estudiantil de 1968 en México.'),
('El Hobbit', 'George Allen & Unwin', '1937-09-21', 'Fantasía', 'J.R.R.', 'Tolkien', '978-0345339683', 'La aventura de Bilbo Baggins, un hobbit que se une a un grupo de enanos para recuperar un tesoro robado.'),
('La fiesta del chivo', 'Alfaguara', '2000-03-03', 'Histórica', 'Mario', 'Vargas Llosa', '978-8420475711', 'Una dramática recreación de la dictadura y caída de Rafael Trujillo en la República Dominicana.');

