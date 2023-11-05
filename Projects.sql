-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2023 at 09:35 PM
-- Server version: 8.0.32-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `projectId` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `description_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `FullDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `description_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FullDescription_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`projectId`, `Name`, `description_fr`, `Photo`, `FullDescription`, `description_en`, `FullDescription_en`) VALUES
(1, 'Snake game (Mips)', 'Ce jeu Snake a été écrit en langage d\'assemblage MIPS. Le joueur contrôle un serpent qui se déplace sur une grille et mange de la nourriture pour grandir, tout en évitant de toucher les murs de la grille ou de heurter le corps du serpent. Le serpent se déplace dans une direction donnée jusqu\'à ce que le joueur change de direction en utilisant les touches fléchées.', 'photos/snake.jpg', '\"Snake\" est un jeu classique où le joueur contrôle un serpent qui doit manger des pommes pour grandir tout en évitant de se heurter aux murs ou à sa propre queue. Le joueur peut contrôler le serpent à l\'aide des touches fléchées pour diriger sa direction. Le but du jeu est de marquer des points en mangeant des pommes tout en évitant de mourir en heurtant les murs ou la queue du serpent.\r\n\r\nLe jeu affiche le score du joueur en temps réel ainsi que la longueur actuelle du serpent. Le jeu est écrit en assembleur MIPS pour une performance optimale, ce qui permet une expérience de jeu fluide et rapide. Les graphismes du jeu sont simples mais efficaces, avec un serpent représenté par une série de carrés et des pommes représentées par des cercles rouges.\r\n\r\nLe jeu offre différents niveaux de difficulté qui affectent la vitesse de déplacement du serpent et la fréquence à laquelle les pommes apparaissent. Le joueur peut choisir le niveau qui convient le mieux à son niveau de compétence.\r\n\r\nEn résumé, \"Snake\" est un jeu simple mais amusant qui offre une expérience de jeu classique et intemporelle. Avec des commandes faciles à comprendre et une jouabilité addictive, ce jeu est parfait pour les joueurs de tous les niveaux de compétence.', 'This Snake game was written in MIPS assembly language. The player controls a snake that moves on a grid and eats food to grow, while avoiding touching the walls of the grid or colliding with the snake\'s body. The snake moves in a given direction until the player changes direction using the arrow keys. ', '\"Snake\" is a classic game where the player controls a snake that must eat apples to grow while avoiding hitting the walls or its own tail. The player can control the snake using the arrow keys to direct its direction. The goal of the game is to score points by eating apples while avoiding dying by hitting the walls or the snake\'s tail.\r\n\r\nThe game displays the player\'s score in real-time as well as the current length of the snake. The game is written in MIPS assembly language for optimal performance, allowing for a smooth and fast gaming experience. The game\'s graphics are simple yet effective, with a snake represented by a series of squares and apples represented by red circles.\r\n\r\nThe game offers different levels of difficulty that affect the snake\'s movement speed and the frequency at which apples appear. The player can choose the level that best suits their skill level.\r\n\r\nIn summary, \"Snake\" is a simple but fun game that offers a classic and timeless gaming experience. With easy-to-understand controls and addictive gameplay, this game is perfect for players of all skill levels.'),
(2, 'Jeu de morpion', 'Le projet consiste en un jeu de morpion qui peut être joué par deux joueurs sur une fenêtre graphique en utilisant la bibliothèque Python Tkinter. Le programme permet à chaque joueur de sélectionner une case de la grille à tour de rôle en utilisant des boutons. Lorsqu\'un joueur aligne trois symboles (X ou O) dans une rangée horizontale, verticale ou diagonale, le programme affiche une boîte de dialogue indiquant que le joueur a gagné et ferme la fenêtre de jeu.', 'photos/tic.jpg', 'Le jeu est un morpion classique pour deux joueurs, qui utilise la bibliothèque Python Tkinter pour une interface graphique. Le but du jeu est de placer trois symboles identiques (X ou O) en ligne, que ce soit horizontalement, verticalement ou diagonalement, sur une grille de 3x3.\r\n\r\nLes joueurs peuvent sélectionner une case de la grille à tour de rôle en utilisant des boutons. Les boutons sont disposés en une grille de 3x3, et chaque case est initialement vide. Les joueurs alternent leurs tours jusqu\'à ce qu\'un joueur gagne en alignant trois symboles en ligne, ou que la grille soit pleine sans qu\'aucun joueur ne gagne.\r\n\r\nLe jeu utilise une boîte de dialogue pour indiquer le vainqueur et la fermeture de la fenêtre de jeu. Si le jeu est terminé sans vainqueur, une boîte de dialogue s\'affiche pour le signaler.\r\n\r\nLe jeu est facile à jouer et offre une expérience agréable pour les joueurs de tous niveaux de compétence. Les symboles X et O sont clairement différenciés, et la grille est organisée de manière intuitive pour permettre une sélection facile des cases.\r\n\r\nEn résumé, ce jeu de morpion en Python Tkinter offre une expérience de jeu amusante et interactive pour deux joueurs. Il est facile à utiliser et à comprendre, avec une interface graphique esthétique et bien présentée grâce à l\'utilisation de Tkinter.\r\n', 'The project is a tic-tac-toe game that can be played by two players on a graphical window using the Python Tkinter library. The program allows each player to select a square on the grid in turn using buttons. When a player lines up three symbols (X or O) in a horizontal, vertical, or diagonal row, the program displays a dialog box indicating that the player has won and closes the game window.', 'The game is a classic tic-tac-toe for two players that uses the Python Tkinter library for a graphical interface. The goal of the game is to place three identical symbols (X or O) in a row, whether horizontally, vertically, or diagonally, on a 3x3 grid.\r\n\r\nPlayers can select a grid square in turn using buttons. The buttons are arranged in a 3x3 grid, and each square is initially empty. Players take turns until one player wins by aligning three symbols in a row, or the grid is full without any player winning.\r\n\r\nThe game uses a dialogue box to indicate the winner and closing of the game window. If the game ends without a winner, a dialogue box is displayed to indicate this.\r\n\r\nThe game is easy to play and offers a pleasant experience for players of all skill levels. The X and O symbols are clearly differentiated, and the grid is intuitively organized to allow for easy selection of squares.\r\n\r\nIn summary, this Python Tkinter tic-tac-toe game offers a fun and interactive gaming experience for two players. It is easy to use and understand, with an aesthetic and well-presented graphical interface thanks to the use of Tkinter.'),
(3, 'Jeu de la vie ', 'Le Jeu de la Vie (ou Game of Life en anglais) est un automate cellulaire inventé par le mathématicien britannique John Conway en 1970. Il s\'agit d\'un modèle mathématique composé d\'une grille bidimensionnelle de cellules, qui évolue à travers des règles simples et déterministes. Le jeu consiste à créer une configuration initiale de cellules vivantes et mortes, puis observer l\'évolution de la grille selon les règles de naissance, de survie ou de mort de chaque cellule. Le Jeu de la Vie est connu pour son caractère imprévisible et ses configurations complexes qui émergent de règles simples.', 'photos/jeu.jpg', 'Le jeu de la vie (ou \"Jeu de la vie de Conway\") est un automate cellulaire développé par le mathématicien britannique John Horton Conway en 1970. Il s\'agit d\'un jeu à zéro joueur dans lequel l\'évolution de chaque cellule dépend de l\'état de ses huit voisines.\r\n\r\nLe jeu de la vie se joue sur une grille bidimensionnelle de cellules, chacune pouvant être dans l\'un des deux états : vivante ou morte. À chaque tour, l\'état de chaque cellule est mis à jour en fonction des états de ses voisines. Les règles du jeu sont simples : une cellule morte avec exactement trois voisines vivantes devient elle-même une cellule vivante (naissance), tandis qu\'une cellule vivante avec deux ou trois voisines vivantes reste vivante, sinon elle meurt.\r\n\r\nLe jeu de la vie est intéressant en raison de sa capacité à générer des motifs complexes et imprévisibles à partir de règles simples. Il est également utilisé dans la recherche scientifique pour simuler des systèmes naturels complexes, tels que les populations d\'animaux et les systèmes écologiques.', 'The Game of Life is a cellular automaton invented by the British mathematician John Conway in 1970. It is a mathematical model consisting of a two-dimensional grid of cells that evolves through simple and deterministic rules. The game involves creating an initial configuration of live and dead cells, and then observing the evolution of the grid according to the rules of birth, survival, or death of each cell. The Game of Life is known for its unpredictable nature and complex configurations that emerge from simple rules.', 'The Game of Life (or \"Conway\'s Game of Life\") is a cellular automaton developed by British mathematician John Horton Conway in 1970. It is a zero-player game in which the evolution of each cell depends on the state of its eight neighbors.\r\n\r\nThe Game of Life is played on a two-dimensional grid of cells, each of which can be in one of two states: alive or dead. At each turn, the state of each cell is updated based on the states of its neighbors. The rules of the game are simple: a dead cell with exactly three live neighbors becomes a live cell (birth), while a live cell with two or three live neighbors remains alive, otherwise it dies.\r\n\r\nThe Game of Life is interesting due to its ability to generate complex and unpredictable patterns from simple rules. It is also used in scientific research to simulate complex natural systems, such as animal populations and ecological systems.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`projectId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
  MODIFY `projectId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
