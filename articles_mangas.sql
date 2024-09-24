-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2024 at 05:05 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles_mangas`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id_article` int NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `Auteur` varchar(80) NOT NULL,
  `Date_Publi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Date_Post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id_article`, `title`, `content`, `image`, `Auteur`, `Date_Publi`, `Date_Post`) VALUES
(1, 'Astro Boy', 'Synopsis : Dans un futur où les robots coexistent avec les humains, Astro Boy, un robot doté de super-pouvoirs, est créé par le Dr. Tenma pour remplacer son fils décédé. Astro Boy lutte pour la justice tout en cherchant à comprendre son identité et sa place dans le monde', 'https://www.bing.com/th?id=OSK.9513e5b69a20290a76c164d5f92cde49&pid=cdx&w=107&h=128&c=7', 'Osamu Tezuka', '1952', '0000-00-00 00:00:00'),
(2, 'Dragon Ball', 'Synopsis : Suivez les aventures de Son Goku, un jeune garçon doté d’une force surhumaine, qui part à la recherche des sept boules de cristal légendaires, les Dragon Balls. Ces boules permettent d’invoquer un dragon qui exauce les vœux. Goku rencontre de nombreux amis et ennemis au cours de son périple', 'https://www.bing.com/th?id=OSK.a595316e872d318c0383e1bd0e9b91dc&pid=cdx&w=200&h=57&c=7', ' Akira Toriyama', '1984', '0000-00-00 00:00:00'),
(4, 'One Piece', 'Synopsis : Monkey D. Luffy, un jeune pirate au corps élastique grâce à un fruit du démon, part à la recherche du One Piece, le trésor légendaire laissé par le Roi des Pirates. Avec son équipage, il navigue sur les mers, affrontant divers adversaires et découvrant des mystères pour réaliser son rêve de devenir le Roi des Pirates', 'https://www.bing.com/th?id=OSK.35e1ed56778699f827ba5740f6c3354f&pid=cdx&w=200&h=80&c=7', 'Eiichiro Oda\r\n', '1997', '0000-00-00 00:00:00'),
(5, 'fullmetal Alchemist', 'Synopsis : Les frères Edward et Alphonse Elric utilisent l’alchimie pour tenter de ressusciter leur mère, mais l’expérience tourne mal. Edward perd un bras et une jambe, tandis qu’Alphonse perd tout son corps, son âme étant scellée dans une armure. Ensemble, ils cherchent la Pierre Philosophale pour restaurer leurs corps', 'https://www.bing.com/th?id=OSK.d75ed9c3b5956a4162d63f35eeeda9bd&pid=cdx&w=200&h=87&c=7', 'Hiromu Arakawa', '2001', '0000-00-00 00:00:00'),
(6, 'Death Note', 'Synopsis : Light Yagami, un lycéen brillant, découvre un carnet surnaturel qui permet de tuer toute personne dont le nom est écrit dedans. Il décide de l’utiliser pour éliminer les criminels et devenir le “dieu” d’un nouveau monde, mais il est rapidement traqué par le détective L', 'https://www.bing.com/th?id=OSK.ebf10df0ff775d88722b253bd02ad82b&pid=cdx&w=200&h=128&c=7&rs=1', 'Tsugumi Ohba et Takeshi Obata', '2003', '0000-00-00 00:00:00'),
(7, 'Berserk', 'Synopsis : Guts, un mercenaire solitaire, lutte pour sa survie dans un monde médiéval sombre et brutal. Il cherche à se venger de Griffith, son ancien ami et leader des Band of the Hawk, qui l’a trahi de manière impitoyable', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL9tSdVKa8ElX0c2eIo3PwfxxabhRtqmZnpg&s', 'Kentaro Miura', '1989', '0000-00-00 00:00:00'),
(8, 'Vinland Saga', 'Dans un monde médiéval inspiré de l\'Europe du Nord, Thorfinn, un jeune garçon islandais, rêve de vengeance après avoir assisté au massacre de sa famille par le mercenaire Askeladd. Il se joint à l\'équipage d\'Askeladd et se lance dans une quête sanglante pour affronter son ennemi juré. Au fil de ses aventures, Thorfinn va découvrir la cruauté de la guerre et remettre en question ses propres valeurs.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGUB2J8ocugstz7YtIRPgpu9wqDqoe5wlrXQ&s', 'Makoto Yukimura', '2005', '2024-09-18 22:11:26'),
(9, 'Vagabond', 'Inspiré de la vie de Miyamoto Musashi, l\'un des plus grands épéistes de l\'histoire du Japon, Vagabond raconte l\'ascension d\'un jeune homme violent et impulsif qui va devenir un maître de l\'art du combat. Musashi va devoir surmonter de nombreux obstacles et affronter de redoutables adversaires pour atteindre son but', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy9n2Cu2AjOwso1n7u5uVZZNIgKgTbQBq-eA&s', 'Takehiko Inoue', '1998', '2024-09-18 22:18:21'),
(10, 'Oyasumi Punpun', 'Punpun Onodera est un jeune garçon qui traverse une adolescence difficile. Il doit faire face à la violence de son père, à la solitude et à l\'amour impossible. À travers le regard de Punpun, nous découvrons un monde cruel et absurde, où les adultes sont souvent aussi perdus que les enfants.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqrDvgndj0WyC5i9wuvuBVT9X4Yqb0LhHMBA&s', 'Inio Asano', '2007', '2024-09-18 22:09:46'),
(11, 'A Silent Voice', 'Shoya Ishida, un jeune homme rongé par le remords, tente de renouer avec Shoko Nishimiya, une ancienne camarade de classe sourde qu\'il a harcelée dans son enfance. Shoya va devoir affronter les conséquences de ses actes et apprendre à vivre avec les autres.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREU2C_N1keSivmQvdQWCQeiPSLyH2z_vmjmg&s', 'Yoshitoki Ōima', '2007', '2024-09-18 22:10:22'),
(12, '20th Century Boys', 'Un groupe d\'amis d\'enfance se retrouve confronté à une mystérieuse organisation qui menace de détruire le monde. Cette organisation, connue sous le nom de \"Les Enfants du XXe siècle\", a été créée par l\'un d\'entre eux dans le but de mettre en œuvre un plan machiavélique. Les héros vont devoir déjouer leurs plans et sauver l\'humanité.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU6Sr4X_Sjseg07xaDVOCQcV7FbANqCHLjCg&s', 'Naoki Urasawa', '1999', '2024-09-18 22:17:27'),
(13, 'Pluto', 'Ce manga est un remake du célèbre robot Astro Boy, créé par Osamu Tezuka. L\'histoire se concentre sur Gesicht, un robot détective chargé d\'enquêter sur une série de meurtres visant des robots humanoïdes. Au cours de son enquête, Gesicht va découvrir une conspiration visant à exterminer les robots.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUjDQbS4fXNfQr5HGmcRN9WMJ9nEAb73FM3w&s', 'Naoki Urasawa', '2003', '2024-09-18 22:12:07'),
(14, 'Uzumaki', 'Dans une petite ville japonaise, d\'étranges phénomènes liés à des spirales commencent à se produire. Les habitants sont peu à peu transformés en créatures monstrueuses et la ville entière semble être prise dans un vortex de folie.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtvG70rJrQbJ5PT1q9swOOLE7XQ4LqVAqeyg&s', 'Junji Ito', '1998', '2024-09-18 22:20:10'),
(15, 'Tomie', 'Tomie est une jeune femme d\'une beauté envoûtante, mais aussi d\'une cruauté sans limite. Elle a le pouvoir de se multiplier et de manipuler les hommes pour assouvir ses désirs. Chaque histoire de Tomie explore les thèmes de la beauté, de l\'obsession et de la mort.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiRGxvUX5KVkq6egumRECzqAhUEJEwcjIjdw&s', 'Junji Ito', '1987', '2024-09-18 22:24:09'),
(16, 'Monster', 'Le Dr Kenzo Tenma, un brillant neurochirurgien, sauve la vie d\'un jeune garçon gravement blessé. Mais il va vite regretter sa décision lorsque ce garçon, Johan Liebert, se révèle être un psychopathe manipulateur, responsable d\'une série de meurtres en Europe. Poursuivi par la police et hanté par son passé, Tenma va devoir affronter Johan dans une lutte sans merci.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkDdNytLA4W5OasaSUkpvw8pUGi--FbrY6dw&s', 'Naoki Urasawa', '1994', '2024-09-18 22:24:41'),
(17, 'Claymore', 'Dans un monde médiéval ravagé par des créatures monstrueuses appelées Yoma, des jeunes filles aux capacités surhumaines, les Claymore, sont chargées de les exterminer. Yûki, une nouvelle recrue, va devoir affronter les dangers de ce monde cruel tout en luttant contre sa propre nature.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrnpPugAQ-4ErArZKyXlh3mpr4c8VVxZtxPQ&s', 'Norihiro Yagi', '2001', '2024-09-18 22:14:09'),
(19, 'Blame!', 'Dans un futur lointain, l\'humanité s\'est réfugiée dans une méga-structure gigantesque, le Netsphere. Killy, un homme amnésique, erre dans ce labyrinthe à la recherche d\'un moyen de sauver l\'humanité.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSADzf7gZci6TsULdNlzDU72GkyzwoEyQlVWA&s', 'Tsutomu Nihei', '1998', '2024-09-18 22:20:59'),
(20, 'Akira', 'Tokyo, 2019. Une expérience scientifique tourne mal et libère des pouvoirs psychiques dévastateurs. Kaneda, un jeune motard, et son ami Tetsuo, doté de pouvoirs extraordinaires, sont entraînés dans une lutte pour le contrôle de ces forces', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTevwcXzIMwE4r7ZRCi6jAfuf6N8fUbMM6dbQ&s', 'Katsuhiro Otomo', '1982', '2024-09-18 22:25:20'),
(21, 'Nana', 'Nana Osaki, une chanteuse rock, et Nana Komatsu, une jeune fille à la recherche de l\'amour, se rencontrent dans un train et deviennent rapidement inséparables. Leurs vies vont se mêler et elles vont devoir faire face aux difficultés de la vie adulte à Tokyo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeL8exSe5boqt27oEOCGBW9nhjM7gQkV5NRg&s', 'Ai Yazawa', '2000', '2024-09-18 22:15:56'),
(22, 'Fruits Basket', 'Tohru Honda, une lycéenne orpheline, se retrouve à vivre avec la famille Souma, dont les membres se transforment en animaux du zodiaque lorsqu\'ils sont émus. Tohru va découvrir les secrets de cette famille et nouer des liens très forts avec ses nouveaux compagnons.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEzdOOD1PM4BuJ4C4EbK_u75hlfIQ5Ia8leQ&s', 'Natsuki Takaya', '1998', '2024-09-18 22:19:12'),
(23, 'parasyte', 'Des parasites envahissent la Terre et prennent possession du corps des humains. Shinichi Izumi, un lycéen, parvient à maintenir le contrôle de son parasite, Migi, et doit apprendre à vivre avec cette nouvelle créature qui fait désormais partie de lui.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR88GnvyabA9-t16wFNOSUONIZjrSxA9Wdbhw&s', 'Hitoshi Iwaaki', '1988', '2024-09-18 22:27:53'),
(24, 'Ghost in the Shell', 'Dans un futur proche, la ligne entre l\'homme et la machine est de plus en plus floue. Major Motoko Kusanagi, une cyborg, enquête sur des affaires de cybercriminalité et se pose des questions sur sa propre identité.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfqafXdyqldLD2GvV4xRZqgoi1F0t-E6HYrw&s', 'Masamune Shirow', '1989', '2024-09-18 22:28:45'),
(26, 'Your Lie in April', 'Kôsei Arima, un jeune prodige du piano qui a cessé de jouer après la mort de sa mère, rencontre Kaori Miyazono, une violoniste excentrique qui va l\'aider à retrouver sa passion pour la musique.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyplXtBOvtwoZ-0Ge-eHSKWOqmTb0USVGhlQ&s', 'Naoshi Arakawa', '2011', '2024-09-18 22:08:42'),
(27, 'Orange', 'Naho Takamiya reçoit une lettre d\'elle-même, écrite dix ans dans le futur, qui lui révèle un événement tragique qui va bouleverser sa vie. Elle décide de changer le cours du destin et d\'aider un nouvel élève, Kakeru Naruse, à surmonter ses difficultés.', 'https://assets.bubblebd.com/art/images/medium/11418.jpeg', 'Ichigo Takano', '2012', '0000-00-00 00:00:00'),
(28, 'Hunter x Hunter', 'Gon Freecss part à la recherche de son père, un célèbre Hunter, et découvre un monde rempli de dangers et de mystères. Il va devoir passer de difficiles épreuves pour devenir lui-même un Hunter et ainsi retrouver son père.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCWMU3zn01UKiyq9ZMTZscF-8beiKBbxjuVQ&s', 'Yoshihiro Togashi', '1998', '2024-09-18 22:04:42'),
(29, 'Trigun', 'Vash the Stampede, un homme doté d\'une force surhumaine, est recherché par les chasseurs de primes à cause de la destruction qu\'il sème sur son passage. Pourtant, Vash est un pacifiste qui tente par tous les moyens d\'éviter les conflits.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBqKMeakG-zyBMUSbdOpXrBJ-O2OC3slOuvQ&s', 'Yasuhiro Nightow', '1997', '2024-09-18 22:23:13'),
(30, 'Jujutsu Kaisen', 'Un lycéen ordinaire se retrouve mêlé au monde des sorciers et doit apprendre à maîtriser ses nouveaux pouvoirs pour combattre des créatures maléfiques. Une série dynamique avec des combats spectaculaires et une intrigue riche.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqeOvf92Znd0eUFx-_U5NUg5kiBsiAfEhMTw&s', 'Gege Akutami', '2018', '2024-09-18 22:03:50'),
(31, 'My Hero Academia', 'Dans un monde où la plupart des gens possèdent des super-pouvoirs, Izuku Midoriya rêve de devenir un héros malgré son absence de pouvoir. Une série inspirante sur l\'amitié, la persévérance et le dépassement de soi.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToOH4Jo4bEZM1_8XHp7MrmWfLDcYVxxy3K8g&s', 'Kohei Horikoshi', '2014', '2024-09-18 22:06:17'),
(32, 'Chainsaw Man', 'Un jeune homme désespéré fusionne avec un démon pour devenir Chainsaw Man, un chasseur de démons. Une série violente et déjantée qui explore les thèmes de la corruption et de la rédemption.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy88SiVaMP-M_vDAwnCrl6M8FSGhpDks8hEQ&s', 'Tatsuki Fujimoto', '2018', '2024-09-18 22:02:31'),
(33, 'Kaiju n°8', 'Un jeune homme rêve de devenir membre de l\'Agence de défense contre les Kaiju, mais il est rejeté en raison de son âge et de sa condition physique. Il va alors découvrir un moyen de se transformer en Kaiju pour réaliser son rêve.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPO38jBFGPSBU58JGQbFKsY8vSYGIw0VUkyQ&s', 'Naoya Matsumoto', '2020', '2024-09-18 21:37:41'),
(34, 'Spy x Family', 'Un espion, une tueuse à gages et une jeune fille aux pouvoirs psychiques forment une famille pour mener à bien une mission secrète. Une comédie romantique pleine d\'humour et de rebondissements.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJFh-4jHfCxvGpSDeXeJkE-YJV068hgLdz3g&s', 'Tatsuya Endo', '2019', '2024-09-18 22:01:08'),
(35, 'Horimiya', 'Hori, une lycéenne populaire au caractère doux, et Miyamura, un lycéen timide au look de bad boy, cachent tous les deux une facette de leur personnalité à leurs camarades. Une histoire d\'amour douce-amère qui explore les relations amicales et amoureuses.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6UhUa7JLpxEWv3LfcfQ2pBdnf4WAeMK4IJQ&s', 'Hiroki Adachi', '2011', '2024-09-18 22:07:21'),
(37, 'Dorohedoro', 'Dans un monde post-apocalyptique, un homme-lézard amnésique cherche à retrouver sa mémoire et à se venger de ceux qui l\'ont transformé. Une série violente et déjantée avec un univers visuel unique.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy_3tZC19b28bfl3U0NVEKnW8Kmms7ACkFKA&s', 'Q Hayashida', '2000', '2024-09-18 22:15:04'),
(38, 'Mirumo', 'les aventures de Kaede qui est amoureuse de Yuki. Pour l\'aider dans son amour va apparaître un petit génie du nom de Mirumo... Mais il n\'est pas le seul dans son genre.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT554kTWeSHb-_KGLULg7_LwHsFtdKQhYSDLQ&s', 'Hiromu Shinozuka', '2001', '2024-09-18 22:12:57'),
(39, 'Da da da', 'Miyu va cohabiter avec Kanata, le fils d\'un ami de ses parents, pendant que ceux-ci iront à l\'étranger. Un soir, une soucoupe volante s\'écrase et un bébé accompagné de sa nourrice (un chat) en sortent. Miyu et Kanata vont prendre soin de lui, en attendant qu\'il retrouve ses parents.', 'https://images-na.ssl-images-amazon.com/images/I/61W4N3JE8GL._SX195_.jpg', 'Mika Kawamura', '1981', '2024-09-18 18:14:43'),
(40, 'Shugo Chara', 'Les Shugo Chara représentent les rêves et les personnalités des enfants. Très peu sont en mesure de les voir, ils se cachent au plus profond d\'eux. Notre héroïne, Amu, ne sait pas encore quelle voit choisir, aussi est-elle surprise lorsque 3 oeufs de Shugo Chara apparaissent, sortis de nulle part... Un shojo/kodomo vraiment sympathique ', 'https://www.babelio.com/couv/CVT_Shugo-Chara-tome-1_6465.jpg', 'Peach-Pit', '2006', '2024-09-18 18:16:40'),
(41, 'Doraemon', 'Doraemon est un robot-chat venu du futur pour aider Nobita, un garçon paresseux et maladroit, à améliorer sa vie. Avec des gadgets futuristes, ils vivent des aventures drôles et éducatives.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq3maLEE16PYaRhDYSOHbjVto9MuUsMXz7gA&s', 'Fujiko F. Fujio', '1969', '2024-09-18 18:20:28'),
(42, 'Anpanman', ' Anpanman, un super-héros avec une tête en pain de haricot rouge, protège les gens contre les forces du mal, notamment contre le méchant Baikinman. Chaque épisode véhicule des leçons de gentillesse et de courage.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY1lYv03UDvKRO6fC2OV6_eR71zR_VQ4q2fA&s', 'Takashi Yanase', '1973', '2024-09-18 18:22:13'),
(43, 'Hamtaro', 'Hamtaro est un hamster curieux et plein d\'énergie qui, avec ses amis hamsters, vit des aventures dans leur petite ville. Ils découvrent le monde humain et apprennent des leçons sur l\'amitié.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvtmeCd43Wwka9SUBqaMoSjDLQaevOXBCx3w&s', 'Ritsuko Kawai', '1997', '2024-09-18 18:23:58'),
(44, 'Chi’s Sweet Home', 'Chi est un petit chaton qui se perd et est recueilli par une famille. Ses aventures quotidiennes montrent son adaptation à la vie domestique, pleine d’humour et d\'émotions.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKh0LzUbhMmvLL67JbY2hLE7rpG7lrrMRgcQ&s', 'Konami Kanata', '2004', '2024-09-18 18:25:35'),
(45, ' Pokemon Adventures (Special)', 'Suivant les aventures de Red, un jeune dresseur de Pokémon, cette série enseigne aux jeunes lecteurs l\'importance de l’amitié et de la persévérance tout en combattant pour devenir un maître Pokémon.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkzln4Nj0fuADBPoI6sEyWwOcjyK7wMJD9yw&s', 'Hidenori Kusaka', '1997', '2024-09-18 18:27:38'),
(46, 'Obake no Q-Taro', 'Q-Taro est un fantôme qui aime jouer des tours aux humains, mais il est plus drôle qu’effrayant. Les aventures humoristiques de Q-Taro incluent souvent des situations comiques avec les humains.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlwv9CQpQ0eZOmxVsaBLrmfGBMKO2WEpCXSw&s', 'Fujiko Fujio', '1964', '2024-09-18 18:28:59'),
(47, 'Naruto', 'l\'histoire d\'un mec qui ne change jamais de fringue et qui vas devenir un grand Ninjaaa avec son petit renard a 18 queues.', 'https://media.senscritique.com/media/000016049698/300/naruto.jpg', 'Masashi Kishimoto', '2002', '2024-09-18 18:43:19'),
(48, 'Bleach', 'l\'histoire de itchigo kurosaki jeune lycéen qui peut voire les esprits , sa vie va basculer le jour ou il rencontre une connasse qu\'il vas devoir sauver', 'https://media.senscritique.com/media/000006484232/300/bleach.jpg', 'Tite Kubo', '2004', '2024-09-18 18:46:51'),
(49, 'Fairy Tail', 'Lucy, une jeune fille, rêve de devenir magicienne( malgré son manque de talent flagrant ). Un jour, elle rencontre Natsu, un magicien maîtrisant le feu(le vrai personnage principal et happy son chat volant trop mignon ), ce dernier l\'invite alors à rejoindre sa guilde. Il s\'agit de la célèbre Fairy Tail, le sujet de tous les rêves de Lucy. Mais celle-ci est bien mystérieuse et semble être à l\'origine de nombreux scandales.(Makarof on avais dis pas les jeunes filles , on vas devoir le foutre a l\'ehpad ).', 'https://media.senscritique.com/media/000006493951/300/fairy_tail.jpg', 'Hiro Mashima', '2009', '2024-09-18 18:54:15'),
(50, 'One-Punch Man', 'un mec qui devient fort , tres tres fort , ah mais par contre il et devenu chauve le pauvre :(', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS96mwHXeLWY0ViOx5H-hDYni1pHk-ZUFMLjQ&s', 'Yusuke Murata', '2009', '2024-09-18 19:01:49'),
(51, 'GTO', 'L\'histoire d\'un ancien voyou qui devient prof d\'une classe difficile , GRAND CLASSIQUE a voir absolument ', 'https://cdn1.booknode.com/book_cover/65/mod0/gto_tome_1-64681-264-432.jpg', 'Tôru Fujisawa', '1997', '2024-09-18 19:04:21'),
(52, 'Food Wars !', 'si tu aimes la bouffe au point d\'en avoir des orgasmes ce manga est fait pour toi', 'https://cdn1.booknode.com/book_cover/492/mod0/food_wars_tome_1-491588-264-432.jpg', 'Yuuto Tsukuda', '2012', '2024-09-18 19:06:32'),
(53, 'Seven Deadly Sins', 'Les Seven Deadly Sins* ...\r\n\r\nHéros ou bandits ?\r\n\r\nLa princesse Elizabeth est prête à tout pour retrouver cette légendaire bande de mercenaires. Ce sont les seuls à pouvoir arracher le royaume de Britannia des mains des surpuissants Chevaliers Sacrés. Sa rencontre avec Meliodas, un garçon à la force exceptionnelle, va marquer le début d\'une aventure riche en rebondissement, où magie et combats sont au rendez-vous !', 'https://cdn1.booknode.com/book_cover/343/mod0/seven_deadly_sins_tome_1-343358-264-432.jpg', 'Nakaba Suzuki', '2011', '2024-09-18 19:08:55'),
(54, 'Beelzebub', 'Tatsumi Oga, surnommé \"le fou furieux\", est une redoutable petite frappe du lycée Ishiyama, de sinistre réputation. Sa vie est bouleversée quand il découvre dans une rivière un homme moustachu dont le corps s\'ouvre en deux et révèle un bébé ; ce denier s\'avérant n\'être rien moins que ... Le Diable !', 'https://cdn1.booknode.com/book_cover/4138/mod0/beelzebub_tome_1-4137633-264-432.jpg', 'Beelzebub', '2009', '2024-09-18 19:10:31'),
(55, 'Demon Slayer', 'Le Japon, début du XXᵉ siècle. Tanjiro, un jeune marchand de charbon, mène une vie sans histoire dans les montagnes. Un jour, après une courte absence, il retrouve les habitants de son village et sa famille massacrés par un ogre. La seule survivante de cette tragédie est sa jeune sœur Nezuko. Hélas, au contact de la bête, elle s\'est métamorphosée en monstre. Afin de renverser le processus et de venger sa famille, Tanjiro part en quête de vérité. Pour le jeune héros et sa sœur, c\'est une longue et redoutable aventure qui commence !', 'https://cdn1.booknode.com/book_cover/1242/mod0/demon_slayer_tome_1-1241605-264-432.jpg', 'Koyoharu Gotouge', '2019', '2024-09-18 19:11:44'),
(56, 'The Promised Neverland', 'Emma et ses amis, tous orphelins, ont été placés dans un établissement spécialisé lorsqu\'ils étaient tout jeune. Bien que leur liberté soit limitée et que les règles soient parfois un peu strictes, ils mènent une vie agréable tous ensemble et la femme qui s\'occupe d\'eux est généreuse. Cependant, une question anime Emma et tous les autres : pourquoi n\'ont-ils pas le droit de sortir de l\'orphelinat ?', 'https://cdn1.booknode.com/book_cover/1382/mod0/the_promised_neverland_tome_1_grace_field_house-1381847-264-432.jpg', 'Kaiu Shirai', '2016', '2024-09-18 19:13:10'),
(57, 'Shaman King', 'Shamans possess mysterious powers that allow them to commune with gods, spirits, and even the dead…and Manta Oyamada\'s about to learn all about them, because his class just welcomed a new transfer student: Yoh Asakura, a boy from way off in Izumo…and a shaman in training!', 'https://cdn1.booknode.com/book_cover/33/mod0/shaman_king_tome_1-33141-264-432.jpg', 'Hiroyuki Takei', '2000', '2024-09-18 19:15:20'),
(58, 'Les Chevaliers du Zodiaque', 'L\'histoire commence en Grèce : un couple de touriste japonais visite Athène et les anciens vestiges grecs. Quand soudain, il découvre un jeune homme gravement blessé, qui redoute le retour d\'une ennemie. Tout à coup, cette ennemie apparaît, le couple de touristes s’enfuit en courant. Cette ennemie n\'est autre que Marine l\'instructeur du jeune Seiya qui lui reproche la dureté de son entraînement et ce dit prêt à ce battre contre son adversaire, le cruel Cassios.', 'https://cdn1.booknode.com/book_cover/149/mod0/les_chevaliers_du_zodiaque_tome_1-149004-264-432.jpg', 'Masami Kurumada', '1997', '2024-09-18 19:17:24'),
(60, 'Solo leveling', 'Dix ans auparavant, des portails ont commencé à apparaître un peu partout dans le monde. Ces portails ont la particularité de connecter le monde à d\'autres dimensions, donjons ou mondes parallèles. En même temps, certaines personnes ont développé des capacités afin de pouvoir chasser ces portails. On appelle ceux qui reçoivent un Éveil, des Chasseurs.\r\n\r\nSung Jin Woo est considéré comme le plus faible des Chasseurs de rang E... Autrement dit le plus faible parmi les faibles. Il est tellement faible qu\'il est surnommé par ses confrères, le « Faible ». Avec une équipe de Chasseurs, il se rend dans un donjon de rang D. Malheureusement, l\'équipe se retrouve piégée dans une salle avec des monstres qui ne sont pas du tout du niveau du donjon... S\'en suit un massacre... Et Sung Jin Woo, aux portes de la mort arrive à acquérir une capacité pour le moins étrange...\r\n\r\nSung Jin Woo va-t-il réussir à devenir le plus puissant des Chasseurs tout en surmontant les épreuves et conspirations ?', 'https://www.nautiljon.com/images/manga/00/85/mini/solo_leveling_9758.webp?11726062345', 'Chu Gong', '2021', '2024-09-23 01:09:17'),
(61, 'Shangri-La Frontier', 'Sunraku est un passionné de jeux vidéo un peu particulier, qui voue sa vie à s\'essayer aux pires \"bouses\" : scénario bancal, bugs dans tous les sens... il se délecte à déjouer tous ces pièges ! Mais lorsqu\'il décide pour une fois de s\'attaquer au MMORPG Shangri-La Frontier, un Greatest Of All Time aux trente millions de membres inscrits, il ne se doute pas qu\'il devra faire preuve de tous ses talents pour venir à bout d\'une épreuve encore plus corsée. Et tout ceci, affublé d\'un masque ridicule !', 'https://www.nautiljon.com/images/manga/00/50/mini/shangri-la_frontier_17705.webp?11717261638', 'Fuji Ryosuke', '2020', '2024-09-23 11:52:27'),
(62, 'Steins;Gate', 'Rintaro Okabe est un étudiant à l\'imagination débridée. Savant fou autoproclamé, il passe ses journées avec deux de ses amis à inventer des objets farfelus dans son \"Laboratoire des gadgets futuristes\". Lorsqu\'ils branchent un téléphone portable sur un micro-ondes, ils découvrent avec stupeur qu\'ils ont la possibilité d\'envoyer des messages dans le passé !', 'https://www.nautiljon.com/images/manga/00/96/mini/steins_gate_4169.webp?11616181877', 'Sarachi Yomi', '2020', '2024-09-23 14:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `article_categorie`
--

CREATE TABLE `article_categorie` (
  `article_id` int NOT NULL,
  `categorie_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `article_categorie`
--

INSERT INTO `article_categorie` (`article_id`, `categorie_id`) VALUES
(2, 1),
(4, 1),
(5, 1),
(8, 1),
(9, 1),
(12, 1),
(17, 1),
(19, 1),
(20, 1),
(23, 1),
(24, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(37, 1),
(45, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(53, 1),
(54, 1),
(58, 1),
(60, 1),
(11, 2),
(21, 2),
(22, 2),
(26, 2),
(27, 2),
(35, 2),
(38, 2),
(39, 2),
(40, 2),
(52, 2),
(53, 2),
(1, 8),
(2, 8),
(4, 8),
(7, 8),
(8, 8),
(16, 8),
(17, 8),
(28, 8),
(29, 8),
(30, 8),
(32, 8),
(34, 8),
(43, 8),
(45, 8),
(47, 8),
(48, 8),
(49, 8),
(53, 8),
(55, 8),
(56, 8),
(57, 8),
(58, 8),
(61, 8),
(4, 9),
(5, 9),
(6, 9),
(8, 9),
(9, 9),
(10, 9),
(11, 9),
(12, 9),
(14, 9),
(16, 9),
(17, 9),
(21, 9),
(22, 9),
(26, 9),
(27, 9),
(28, 9),
(29, 9),
(30, 9),
(37, 9),
(48, 9),
(56, 9),
(57, 9),
(62, 9),
(7, 10),
(14, 10),
(15, 10),
(20, 10),
(23, 10),
(32, 10),
(33, 10),
(37, 10),
(56, 10),
(32, 11),
(5, 12),
(6, 12),
(12, 12),
(16, 12),
(27, 12),
(30, 12),
(56, 12),
(62, 12),
(6, 13),
(10, 13),
(11, 13),
(14, 13),
(16, 13),
(17, 13),
(20, 13),
(24, 13),
(37, 13),
(5, 14),
(6, 14),
(12, 14),
(15, 14),
(17, 14),
(20, 14),
(27, 14),
(28, 14),
(30, 14),
(31, 14),
(32, 14),
(37, 14),
(40, 14),
(46, 14),
(48, 14),
(50, 14),
(53, 14),
(55, 14),
(56, 14),
(6, 15),
(12, 15),
(16, 15),
(23, 15),
(7, 16),
(16, 16),
(30, 16),
(2, 17),
(4, 17),
(5, 17),
(10, 17),
(21, 17),
(22, 17),
(28, 17),
(29, 17),
(31, 17),
(33, 17),
(34, 17),
(35, 17),
(37, 17),
(39, 17),
(40, 17),
(41, 17),
(42, 17),
(43, 17),
(44, 17),
(46, 17),
(47, 17),
(48, 17),
(49, 17),
(50, 17),
(51, 17),
(52, 17),
(53, 17),
(54, 17),
(57, 17),
(4, 18),
(6, 18),
(7, 18),
(30, 18),
(39, 18),
(45, 18),
(53, 18),
(55, 18),
(58, 18),
(60, 18),
(61, 18),
(11, 19),
(22, 19),
(27, 19),
(30, 19),
(31, 19),
(35, 19),
(38, 19),
(40, 19),
(51, 19),
(52, 19),
(54, 19),
(47, 20),
(49, 21),
(51, 21),
(52, 21),
(17, 22),
(22, 22),
(23, 22),
(28, 22),
(38, 22),
(42, 22),
(49, 22),
(10, 23),
(11, 23),
(21, 23),
(26, 23),
(27, 23),
(35, 23),
(41, 23),
(44, 23),
(46, 23),
(8, 24),
(9, 24),
(16, 24),
(55, 24),
(58, 24),
(51, 25),
(13, 26),
(19, 26),
(20, 26),
(23, 26),
(24, 26),
(29, 26),
(33, 26),
(50, 26),
(57, 26),
(62, 26),
(61, 27),
(41, 28);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_categorie`, `name`) VALUES
(1, 'Action'),
(2, 'Romance'),
(8, 'Aventure'),
(9, 'Drame'),
(10, 'Horreur'),
(11, 'Mature'),
(12, 'Mystère'),
(13, 'Psychologique'),
(14, 'Surnaturel'),
(15, 'Thriller'),
(16, 'Tragique'),
(17, 'Comédie'),
(18, 'Fantastique'),
(19, 'School Life'),
(20, 'Nekketsu'),
(21, 'Ecchi(pervers :o )'),
(22, 'Fantasy'),
(23, 'Slice of Life'),
(24, 'Historique'),
(25, 'Furyo'),
(26, 'Science-fiction'),
(27, 'Isekai'),
(28, 'Histoires courtes'),
(29, 'Biographique');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `content` varchar(255) NOT NULL,
  `article_id` int NOT NULL,
  `Date_Post` timestamp NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`content`, `article_id`, `Date_Post`, `user_id`) VALUES
('trooop coool', 1, '2024-09-18 22:42:29', 21),
('Une seule chose a dire , Surprenant !', 54, '2024-09-22 19:50:43', 23),
('cool !!', 33, '2024-09-23 00:49:35', 23),
('trop court', 12, '2024-09-23 00:51:04', 23),
('trop cute !', 34, '2024-09-23 02:03:37', 26),
('a voir absolument !', 33, '2024-09-23 02:04:01', 26),
('c pas faux !', 34, '2024-09-23 07:31:44', 23),
('tuturu !', 62, '2024-09-23 14:58:17', 26),
('<3', 62, '2024-09-23 16:27:57', 27);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `username`, `message`, `created_at`) VALUES
(1, 27, 'Anonyme', 'hello world', '2024-09-23 17:10:56'),
(2, 23, 'Anonyme', 'salut', '2024-09-23 17:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `article_id`, `user_id`, `rating`, `created_at`) VALUES
(1, 60, 26, 9, '2024-09-23 14:46:32'),
(2, 62, 26, 10, '2024-09-23 14:58:21'),
(3, 61, 26, 10, '2024-09-23 15:12:14'),
(4, 7, 26, 9, '2024-09-23 16:25:17'),
(5, 55, 26, 8, '2024-09-23 16:26:49'),
(6, 50, 26, 9, '2024-09-23 16:27:15'),
(7, 60, 27, 10, '2024-09-23 16:27:40'),
(8, 62, 27, 10, '2024-09-23 16:28:11'),
(9, 1, 23, 6, '2024-09-23 17:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_Role` int NOT NULL,
  `Nom_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_Role`, `Nom_role`) VALUES
(4, 'admin'),
(5, 'utilisateur');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `id_role` int NOT NULL,
  `id_utilisateur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `id_role`, `id_utilisateur`) VALUES
('utilisateur1', 'utilisateur@util.com', '$2y$10$tg5KIYNln2Nu3wy5uTaXPe3Y9v2RbJ8YLuRKMZ/zKNpAiqkOfjWim', 5, 21),
('test1', 'test1@test.com', '$2y$10$iX/5Fpg/BDQDFHPs8jc2sOXEswK.jpKHRgqOcDLxiwhNdA14SQSUO', 5, 23),
('fandemangas12', 'fandemangas@gmail.com', '$2y$10$NeAX2QHnZ2nbqNOkERCOT.4CoskmGJEGQeCf.THyhsV3oTiF4gmOe', 5, 24),
('fandemangas13', 'fandemangas13@gmail.com', '$2y$10$FwAeHls5gWAy/7dSGGo4VOySZkGq99uWP9fuRs5uJ7i.fzRE6CtUG', 5, 26),
('admin', 'admin@admin.com', '$2y$10$stIS0aucZl67Ly5crGRlFeI13.ryfmhapqSiLEYP0HanUJ8n.xABS', 4, 27);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `article_categorie`
--
ALTER TABLE `article_categorie`
  ADD PRIMARY KEY (`article_id`,`categorie_id`),
  ADD KEY `FK_categorie` (`categorie_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_Role`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_Role` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_categorie`
--
ALTER TABLE `article_categorie`
  ADD CONSTRAINT `FK_article` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id_article`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_categorie` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id_categorie`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id_article`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `comments_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_utilisateur`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id_article`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_utilisateur`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_role` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_Role`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `articles` (`id_article`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
