-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 20. 09 2017 kl. 20:34:56
-- Serverversion: 10.1.26-MariaDB
-- PHP-version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmbiograf`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Animation'),
(2, 'Adventure'),
(3, 'Drama'),
(4, 'Action');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE `images` (
  `img_id` int(11) NOT NULL,
  `img_path` text NOT NULL,
  `img_feature` int(11) NOT NULL,
  `fk_movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`img_id`, `img_path`, `img_feature`, `fk_movie_id`) VALUES
(1, 'bee_movie_poster.jpg', 1, 1),
(2, 'golden_compass_poster.jpg', 1, 2),
(3, 'things_we_lost_in_fire_poster.jpg', 1, 3),
(4, 'cassandras_dream_poster.jpg', 1, 4),
(5, 'alien_vs_predator_2_poster.jpg', 1, 5);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(255) NOT NULL,
  `movie_desc` text NOT NULL,
  `fk_genre_id` int(11) NOT NULL,
  `movie_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_desc`, `fk_genre_id`, `movie_rating`) VALUES
(1, 'Bee Movie', 'Bee Movie - Det store honningkomplot\' handler om en bikube hvor alle bier\r\nskal give et bidrag.\r\nLige så snart bien Barry er færdig med college, skal han begynde på et eller\r\nandet job i Honex-koncernen. Der er et rigt udvalg af stillinger, men de handler\r\nalle om honning.\r\nDet er der ikke rigtigt udfordringer i for Barry, der griber chancen, da han kan\r\nkomme på togt med pollen-piloterne. Verden uden for kuben er fascinerende,\r\nmen desværre kommer Barry på afveje og er lige ved at ende mellem en skosål\r\nog et bord.\r\nHeldigvis skrider blomsterhandleren Vanessa ind og redder Barry – og det\r\nbliver begyndelsen til et smukt venskab.\r\nBarry bryder nemlig biernes tusindårige tavshed over for menneskene ved at\r\ntale og sige tak til Vanessa.\r\nHun lærer ham om menneskenes mærkelige verden, men da han på en tur i\r\nsupermarkedet opdager, at mennesker spiser honning – at de rent faktisk\r\nstjæler den fra bierne – finder Barry sin mission i livet: Han vil lægge sag an\r\nmod menneskeheden for honningtyveri!\r\nJerry Seinfeld har skrevet \'Bee Movie\' og i den danske version er det Timm\r\nVladimir, Iben Hjejle, Laus Højby, Lars Mikkelsen og Mick Øgendahl der har\r\nindtalt de tilsvarende bi-roller.', 1, 0),
(2, 'Det Gyldne Kompas (The Golden Compass)', 'I \'Det Gyldne Kompas\' møder man den 12-årige Lyra Belacqua, der lever en\r\nsorgløs tilværelse som elev på et kollegium sammen med sin gode ven, Roger,\r\nog sin tro følgesvend, daimonen Pantalaimon. Men Lyras trygge tilværelse\r\ntrues snart...\r\nHendes onkel, Lord Asriel (Daniel Craig), er netop taget på en ekspedition til\r\nArktis for at se nærmere på et særligt fænomen, men det magtfulde magistrat\r\nder ønsker at opnå kontrol over menneskeheden, gør alt for at stoppe Asriels\r\nplaner.\r\nSamtidig forsvinder der på mystisk vis børn fra Oxford – og altid fra fattige\r\nforældre. En hemmelighedsfuld og smuk videnskabskvinde, Marisa Coulter\r\n(Nicole Kidman), dukker pludselig op.\r\nDet går op for Lyra at hun er i besiddelse af et gyldent kompas med magiske\r\nkræfter, som kan afsløre folks hemmeligheder og ændre fremtiden. Marisa\r\nCoulter er yderst opsat på at få fingre i kompasset, og Lyra mistænker hende\r\nfor at stå i ledtog med det ondsindede Magistrat.\r\nLyra vælger derfor at stikke af og rejse i sin onkels fodspor mod det kolde nord\r\nfor at finde Roger igen - og sætte en altafgørende stopper for magistrat.\r\nPå rejsen slår hun følgeskab med heksen Serafina Pekkala og piloten Lee\r\nScoresby, og sammen rejser de mod Arktis, hvor panserbjørnene og heksene\r\nhersker. En verden, der hidtil har været utilgængelig for mennesker...\r\n\'Det Gyldne Kompas\' er et fantastisk eventyr baseret på Philip Pullmans\r\nprisbelønnede trilogi af samme navn.', 2, 0),
(3, 'Things we lost in the fire', '\'Things We Lost in the Fire\' er Susanne Biers første amerikanske film.\r\nAudrey Burke (Halle Berry) har aldrig mødt Jerry (Benicio Del Toro), en falleret\r\nadvokat og narkoman, og hun har aldrig brudt sig om ham og den loyalitet som\r\nhendes mand, Brian (David Duchovny), altid har vist over for ham.\r\nMen da Brian bliver dræbt, bliver det afgørende for Audrey, at Jerry deltager i\r\nbegravelsen. Jerry repræsenterer en forbindelse til Brian, og da han – måske af\r\nrespekt for Brian – forsøger at komme ud af misbruget, træder Audrey til og\r\ntilbyder ham at bo i gæsteværelset i garagen.\r\nBåde Audrey og Jerry er sårede mennesker, der begge føler et stort savn og\r\nlangsomt begynder Jerry at glide ind i en rolle som manden i huset.\r\nSusanne Bier instruerer Hollywood-stjernerne Halle Berry og Benicio Del Toro i\r\n\'Things We Lost', 3, 0),
(4, 'Cassandras Dream', 'I \'Cassandra\'s Dream\' gambler den spillegale mekaniker Terry (Colin Farrell)\r\nmed sin beskedne indkomst i poker og bliver på én aften rippet for 90.000\r\npund, så han står i gæld til langt over sine snavsede hænder og ingen steder at\r\ntørre dem af.\r\nSammen med sin bror Ian (Ewan McGregor) forsøger han at udtænke en plan,\r\nder først får ben at gå på, da deres rige onkel Howard (Tom Wilkinson) melder\r\nsin ankomst.\r\nBrødrene spørger Howard om et midlertidig lån, men Howard er selv endt i en\r\npenibel klemme og har hårdt brug for sine nevøers hjælp.\r\nNoget for noget, mener onklen, der er villig til at give brødrene de penge Terry\r\nskylder, hvis de i tilgift slår den person ihjel, der afpresser Howard.\r\nWoody Allen har med \'Cassandra\'s Dream\' skabt endnu et højspændt og\r\nvelspillet drama i stil med \'Match Point\', hvor det handler om at sælge sin sjæl,\r\ntil at alt det man tror på.', 3, 0),
(5, 'Aliens vs. Predator: Requiem', 'Efter succesen med \'Alien vs. Predator\' i 2004 fortsætter den populære\r\nfranchise med \'Aliens vs. Predator 2\'.\r\nDe to ikoniske monstre fra to af de mest skræmmende filmserier nogensinde\r\nfører krig mod hinanden i den stille og rolige by Gunnison.\r\nEn ung sherif hjælper hjælper alle byens desperate indbyggere med at slippe\r\nvæk, da Aliens, en ”Predator-dræber” og en dødelig ny trussel pludselig er på\r\nvej til byen.\r\nDet kommer ikke til at gå stille af sig, når Aliens og Predators er tilbage på det\r\nstore lærred, hvor kun den stærkeste overlever.', 4, 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `offer`
--

CREATE TABLE `offer` (
  `offer_id` int(11) NOT NULL,
  `offer_text` text NOT NULL,
  `fk_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `offer`
--

INSERT INTO `offer` (`offer_id`, `offer_text`, `fk_role`) VALUES
(1, 'Titel: Cola og popkorn\r\nPris: kr 59,-\r\nBillede: tilbud_1.jpg', 0),
(2, 'Titel: 2 x Cola og 1 x Popkorn\r\nPris: kr 69,-', 0),
(3, 'Titel: 2 x billetter til søndagsforestilling\r\nPris: kr 100,-\r\nBillede: tilbud_2.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `fk_movieRat_id` int(11) DEFAULT NULL,
  `rating_total` int(11) DEFAULT NULL,
  `rating_votes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `review`
--

CREATE TABLE `review` (
  `rev_id` int(11) NOT NULL,
  `rev_text` text NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `confirmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `userroles`
--

CREATE TABLE `userroles` (
  `userrole_id` int(11) NOT NULL,
  `userrole_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(95) DEFAULT NULL,
  `password` varchar(125) DEFAULT NULL,
  `fk_userrole` int(11) DEFAULT NULL,
  `fk_favGenre` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `newsletter` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `fk_movie_id_idx` (`fk_movie_id`);

--
-- Indeks for tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `fk_genre_id_idx` (`fk_genre_id`);

--
-- Indeks for tabel `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`),
  ADD KEY `fk_role_idx` (`fk_role`);

--
-- Indeks for tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `fk_movieRat_id_idx` (`fk_movieRat_id`);

--
-- Indeks for tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`rev_id`),
  ADD KEY `fk_user_id_idx` (`fk_user_id`);

--
-- Indeks for tabel `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`userrole_id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_userrole_idx` (`fk_userrole`),
  ADD KEY `fk_favGenre_idx` (`fk_favGenre`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `userroles`
--
ALTER TABLE `userroles`
  MODIFY `userrole_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_movie_id` FOREIGN KEY (`fk_movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrænsninger for tabel `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_genre_id` FOREIGN KEY (`fk_genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrænsninger for tabel `offer`
--
ALTER TABLE `offer`
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`fk_role`) REFERENCES `userroles` (`userrole_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrænsninger for tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_movieRat_id` FOREIGN KEY (`fk_movieRat_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrænsninger for tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrænsninger for tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_favGenre` FOREIGN KEY (`fk_favGenre`) REFERENCES `genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userrole` FOREIGN KEY (`fk_userrole`) REFERENCES `userroles` (`userrole_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
