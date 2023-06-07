-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 03:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duration` int(11) NOT NULL,
  `director` varchar(255) NOT NULL,
  `poster_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `description`, `duration`, `director`, `poster_url`) VALUES
(680, 'Pulp Fiction', 'A burger-loving hit man, his philosophical partner, a drug-addled gangster\'s moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.', 154, 'Quentin Tarantino', 'https://image.tmdb.org/t/p/w342/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg'),
(283995, 'Guardians of the Galaxy Vol. 2', 'The Guardians must fight to keep their newfound family together as they unravel the mysteries of Peter Quill\'s true parentage.', 137, 'James Gunn', 'https://image.tmdb.org/t/p/w342/y4MBh0EjBlMuOzv9axM4qJlmhzz.jpg'),
(298618, 'The Flash', 'When his attempt to save his family inadvertently alters the future, Barry Allen becomes trapped in a reality in which General Zod has returned and there are no Super Heroes to turn to. In order to save the world that he is in and return to the future that he knows, Barry\'s only hope is to race for his life. But will making the ultimate sacrifice be enough to reset the universe?', 144, 'Andy Muschietti', 'https://image.tmdb.org/t/p/w342/67PmbAViFCW3obXxr5Utm9wArIP.jpg'),
(315162, 'Puss in Boots: The Last Wish', 'Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.', 103, 'Joel Crawford', 'https://image.tmdb.org/t/p/w342/kuf6dutpsT0vSVehic3EZIqkOBt.jpg'),
(324552, 'John Wick: Chapter 2', 'John Wick is forced out of retirement by a former associate looking to seize control of a shadowy international assassins’ guild. Bound by a blood oath to aid him, Wick travels to Rome and does battle against some of the world’s most dangerous killers.', 122, 'Chad Stahelski', 'https://image.tmdb.org/t/p/w342/hXWBc0ioZP3cN4zCu6SN3YHXZVO.jpg'),
(361743, 'Top Gun: Maverick', 'After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.', 131, 'Joseph Kosinski', 'https://image.tmdb.org/t/p/w342/62HCnUTziyWcpDaBO2i1DX17ljH.jpg'),
(384018, 'Fast & Furious Presents: Hobbs & Shaw', 'Ever since US Diplomatic Security Service Agent Hobbs and lawless outcast Shaw first faced off, they just have traded smack talk and body blows. But when cyber-genetically enhanced anarchist Brixton\'s ruthless actions threaten the future of humanity, they join forces to defeat him.', 137, 'David Leitch', 'https://image.tmdb.org/t/p/w342/qRyy2UmjC5ur9bDi3kpNNRCc5nc.jpg'),
(385128, 'F9', 'Dominic Toretto and his crew battle the most skilled assassin and high-performance driver they\'ve ever encountered: his forsaken brother.', 143, 'Justin Lin', 'https://image.tmdb.org/t/p/w342/bOFaAXmWWXC3Rbv4u4uM9ZSzRXP.jpg'),
(385448, 'The Little Mermaid', 'A young reporter and his niece discover a beautiful and enchanting creature they believe to be the real little mermaid.', 98, 'Chris Bouchard', 'https://image.tmdb.org/t/p/w342/7Ax9O1wlFL0Cjl8YLwuXDGthovf.jpg'),
(385687, 'Fast X', 'Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they\'ve ever faced: A terrifying threat emerging from the shadows of the past who\'s fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.', 142, 'Louis Leterrier', 'https://image.tmdb.org/t/p/w342/1E5baAaEse26fej7uHcjOgEE2t2.jpg'),
(436270, 'Black Adam', 'Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods—and imprisoned just as quickly—Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.', 124, 'Jaume Collet-Serra', 'https://image.tmdb.org/t/p/w342/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg'),
(447277, 'The Little Mermaid', 'The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.', 135, 'Rob Marshall', 'https://image.tmdb.org/t/p/w342/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg'),
(447365, 'Guardians of the Galaxy Vol. 3', 'Peter Quill, still reeling from the loss of Gamora, must rally his team around him to defend the universe along with protecting one of their own. A mission that, if not completed successfully, could quite possibly lead to the end of the Guardians as we know them.', 150, 'James Gunn', 'https://image.tmdb.org/t/p/w342/r2J02Z2OpNTctfOSN1Ydgii51I3.jpg'),
(458156, 'John Wick: Chapter 3 - Parabellum', 'Super-assassin John Wick returns with a $14 million price tag on his head and an army of bounty-hunting killers on his trail. After killing a member of the shadowy international assassin’s guild, the High Table, John Wick is excommunicado, but the world’s most ruthless hit men and women await his every turn.', 131, 'Chad Stahelski', 'https://image.tmdb.org/t/p/w342/ziEuG1essDuWuC5lpWUaw1uXY2O.jpg'),
(458220, 'Palmer', 'After 12 years in prison, former high school football star Eddie Palmer returns home to put his life back together—and forms an unlikely bond with Sam, an outcast boy from a troubled home. But Eddie\'s past threatens to ruin his new life and family.', 110, 'Fisher Stevens', 'https://image.tmdb.org/t/p/w342/xSDdRAjxKAGi8fUBLOqSrBhJmF0.jpg'),
(493529, 'Dungeons & Dragons: Honor Among Thieves', 'A charming thief and a band of unlikely adventurers undertake an epic heist to retrieve a lost relic, but things go dangerously awry when they run afoul of the wrong people.', 134, 'John Francis Daley', 'https://image.tmdb.org/t/p/w342/A7AoNT06aRAc4SV89Dwxj3EYAgC.jpg'),
(502356, 'The Super Mario Bros. Movie', 'While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.', 92, 'Michael Jelenic', 'https://image.tmdb.org/t/p/w342/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg'),
(505642, 'Black Panther: Wakanda Forever', 'Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.', 162, 'Ryan Coogler', 'https://image.tmdb.org/t/p/w342/sv1xJUazXeYqALzczSZ3O6nkH75.jpg'),
(507086, 'Jurassic World Dominion', 'Four years after Isla Nublar was destroyed, dinosaurs now live—and hunt—alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators ona planet they now share with history\'s most fearsome creatures.', 147, 'Colin Trevorrow', 'https://image.tmdb.org/t/p/w342/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg'),
(507250, 'Dead Shot', 'In the 1970s, a member of the IRA takes over an Active Service Unit in London after his wife is accidentally shot dead in Ireland. The unit\'s mission is to cause chaos and destruction, while his personal aim is to hunt down his wife’s killer — an SAS captain, who is also hunting him.', 87, 'Charles Guard', 'https://image.tmdb.org/t/p/w342/s0Qx9YL1JSpYKm1hu0Ovj0IJ1SN.jpg'),
(536554, 'M3GAN', 'A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll\'s programming works too well, she becomes overprotective of her new friend with terrifying results.', 102, 'Gerard Johnstone', 'https://image.tmdb.org/t/p/w342/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg'),
(552688, 'The Mother', 'A deadly female assassin comes out of hiding to protect the daughter that she gave up years before, while on the run from dangerous men.', 115, 'Niki Caro', 'https://image.tmdb.org/t/p/w342/vnRthEZz16Q9VWcP5homkHxyHoy.jpg'),
(569094, 'Spider-Man: Across the Spider-Verse', 'After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.', 140, 'Joaquim Dos Santos', 'https://image.tmdb.org/t/p/w342/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg'),
(594767, 'Shazam! Fury of the Gods', 'Billy Batson and his foster siblings, who transform into superheroes by saying \"Shazam!\", are forced to get back into action and fight the Daughters of Atlas, who they must stop from using a weapon that could destroy the world.', 130, 'David F. Sandberg', 'https://image.tmdb.org/t/p/w342/A3ZbZsmsvNGdprRi2lKgGEeVLEH.jpg'),
(603692, 'John Wick: Chapter 4', 'With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', 170, 'Chad Stahelski', 'https://image.tmdb.org/t/p/w342/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg'),
(605886, 'To Catch a Killer', 'Baltimore. New Year\'s Eve. A talented but troubled police officer is recruited by the FBI\'s chief investigator to help profile and track down a mass murderer.', 119, 'Damián Szifron', 'https://image.tmdb.org/t/p/w342/mFp3l4lZg1NSEsyxKrdi0rNK8r1.jpg'),
(616037, 'Thor: Love and Thunder', 'After his retirement is interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods, Thor Odinson enlists the help of King Valkyrie, Korg, and ex-girlfriend Jane Foster, who now wields Mjolnir as the Mighty Thor. Together they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher’s vengeance and stop him before it’s too late.', 119, 'Taika Waititi', 'https://image.tmdb.org/t/p/w342/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg'),
(620705, 'Crater', 'After the death of his father, a boy growing up on a lunar mining colony takes a trip to explore a legendary crater, along with his four best friends, prior to being permanently relocated to another planet.', 104, 'Kyle Patrick Alvarez', 'https://image.tmdb.org/t/p/w342/n8ZpMwYT02XjpQHpSxn1eJw5Zpz.jpg'),
(631842, 'Knock at the Cabin', 'While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.', 100, 'M. Night Shyamalan', 'https://image.tmdb.org/t/p/w342/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg'),
(634649, 'Spider-Man: No Way Home', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', 148, 'Jon Watts', 'https://image.tmdb.org/t/p/w342/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg'),
(638974, 'Murder Mystery 2', 'After starting their own detective agency, Nick and Audrey Spitz land a career-making case when their billionaire pal is kidnapped from his wedding.', 91, 'Jeremy Garelick', 'https://image.tmdb.org/t/p/w342/s1VzVhXlqsevi8zeCMG9A16nEUf.jpg'),
(640146, 'Ant-Man and the Wasp: Quantumania', 'Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope\'s parents Janet van Dyne and Hank Pym, and Scott\'s daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.', 125, 'Peyton Reed', 'https://image.tmdb.org/t/p/w342/qnqGbB22YJ7dSs4o6M7exTpNxPz.jpg'),
(646389, 'Plane', 'After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.', 107, 'Jean-François Richet', 'https://image.tmdb.org/t/p/w342/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg'),
(649609, 'Renfield', 'Having grown sick and tired of his centuries as Dracula\'s lackey, Renfield finds a new lease on life — and maybe even redemption — when he falls for feisty, perennially angry traffic cop Rebecca Quincy.', 93, 'Chris McKay', 'https://image.tmdb.org/t/p/w342/p6yUjhvNGQpFZilKwOKbxQ1eHlo.jpg'),
(663712, 'Terrifier 2', 'After being resurrected by a sinister entity, Art the Clown returns to Miles County where he must hunt down and destroy a teenage girl and her younger brother on Halloween night.  As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art\'s evil intent.', 138, 'Damien Leone', 'https://image.tmdb.org/t/p/w342/8gLhu8UFPZfH2Hv11JhTZkb9CVl.jpg'),
(667538, 'Transformers: Rise of the Beasts', 'A \'90s globetrotting adventure that introduces the Maximals, Predacons, and Terrorcons to the existing battle on earth between Autobots and Decepticons.', 127, 'Steven Caple Jr.', 'https://image.tmdb.org/t/p/w342/gPbM0MK8CP8A174rmUwGsADNYKD.jpg'),
(675353, 'Sonic the Hedgehog 2', 'After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.', 122, 'Jeff Fowler', 'https://image.tmdb.org/t/p/w342/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg'),
(676547, 'Prey for the Devil', 'In response to a global rise in demonic possessions, the Catholic Church reopens exorcism schools to train priests in the Rite of Exorcism. On this spiritual battlefield, an unlikely warrior rises: a young nun, Sister Ann. Thrust onto the spiritual frontline with fellow student Father Dante, Sister Ann finds herself in a battle for the soul of a young girl and soon realizes the Devil has her right where he wants her.', 93, 'Daniel Stamm', 'https://image.tmdb.org/t/p/w342/iCvgemXf2Kpr2LvpDmt5J9NhjKM.jpg'),
(676710, 'The Amazing Maurice', 'Maurice is a streetwise ginger cat who comes up with a money-making scam by befriending a group of self-taught talking rats. When Maurice and the rodents meet a bookworm called Malicia, their little con soon goes down the drain.', 93, 'Toby Genkel', 'https://image.tmdb.org/t/p/w342/ydhZeUjbzVEFclUpMhLfDZSavUY.jpg'),
(677179, 'Creed III', 'After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damian Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damian — a fighter who has nothing to lose.', 116, 'Michael B. Jordan', 'https://image.tmdb.org/t/p/w342/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg'),
(700391, '65', '65 million years ago, the only 2 survivors of a spaceship from Somaris that crash-landed on Earth must fend off dinosaurs and reach the escape vessel in time before an imminent asteroid strike threatens to destroy the planet.', 92, 'Scott Beck', 'https://image.tmdb.org/t/p/w342/rzRb63TldOKdKydCvWJM8B6EkPM.jpg'),
(702621, 'Lullaby', 'A new mother discovers a lullaby in an ancient book and soon regards the song as a blessing. But her world transforms into a nightmare when the lullaby brings forth the ancient demon Lilith.', 86, 'John R. Leonetti', 'https://image.tmdb.org/t/p/w342/vmE4gZ9vy8ammgS2UsEh0Z1OCia.jpg'),
(713704, 'Evil Dead Rise', 'Three siblings find an ancient vinyl that gives birth to bloodthirsty demons that run amok in a Los Angeles apartment building and thrusts them into a primal battle for survival as they face the most nightmarish version of family imaginable.', 96, 'Lee Cronin', 'https://image.tmdb.org/t/p/w342/5ik4ATKmNtmJU6AYD0bLm56BCVM.jpg'),
(727340, 'Hunt', 'After a high-ranking North Korean official requests asylum, KCIA Foreign Unit chief Park Pyong-ho and Domestic Unit chief Kim Jung-do are tasked with uncovering a North Korean spy, known as Donglim, who is deeply embedded within their agency. When the spy begins leaking top secret intel that could jeopardize national security, the two units are each assigned to investigate each other.', 131, 'Lee Jung-jae', 'https://image.tmdb.org/t/p/w342/tDe5eLxAbeK7sYckUn5aH3ngWnn.jpg'),
(736790, 'Chupa', 'While visiting family in Mexico, a lonely boy befriends a mythical creature hiding on his grandfather\'s ranch and embarks on the adventure of a lifetime.', 98, 'Jonás Cuarón', 'https://image.tmdb.org/t/p/w342/ra3xm8KFAkwK0CdbPRkfYADJYTB.jpg'),
(758009, 'Shotgun Wedding', 'Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.', 101, 'Jason Moore', 'https://image.tmdb.org/t/p/w342/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg'),
(758323, 'The Pope\'s Exorcist', 'Father Gabriele Amorth, Chief Exorcist of the Vatican, investigates a young boy\'s terrifying possession and ends up uncovering a centuries-old conspiracy the Vatican has desperately tried to keep hidden.', 103, 'Julius Avery', 'https://image.tmdb.org/t/p/w342/4IjRR2OW2itjQWQnmlUzvwLz9DQ.jpg'),
(785084, 'The Whale', 'A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.', 116, 'Darren Aronofsky', 'https://image.tmdb.org/t/p/w342/jQ0gylJMxWSL490sy0RrPj1Lj7e.jpg'),
(799379, 'Project Wolf Hunting', 'While under heavily armed guard, the dangerous convicts aboard a cargo ship unite in a coordinated escape attempt that soon escalates into a bloody, all-out riot. But as the fugitives continue their brutal campaign of terror, they soon discover that not even the most vicious among them is safe from the horror they unknowingly unleashed from the darkness below deck.', 122, 'Kim Hong-sun', 'https://image.tmdb.org/t/p/w342/dniWicB6fa7NvpGbguxWlNPMc5f.jpg'),
(804150, 'Cocaine Bear', 'Inspired by a true story, an oddball group of cops, criminals, tourists and teens converge in a Georgia forest where a 500-pound black bear goes on a murderous rampage after unintentionally ingesting cocaine.', 96, 'Elizabeth Banks', 'https://image.tmdb.org/t/p/w342/gOnmaxHo0412UVr1QM5Nekv1xPi.jpg'),
(811948, 'Demon Slayer: Kimetsu no Yaiba the Hashira Meeting Arc', 'Tanjiro and his sister Nezuko have been apprehended by the Demon Slayer Hashira, a group of extremely skilled swordfighters. Tanjiro undergoes trial for violating the Demon Slayer code, specifically smuggling Nezuko, a Demon, onto Mt. Natagumo. A recap film of Kimetsu no Yaiba, covering episodes 22-26 with some new footage and special ending credits.', 106, 'Haruo Sotozaki', 'https://image.tmdb.org/t/p/w342/j1FpReEQXp8JsgNQZcfGvzeXNoI.jpg'),
(816904, 'Mummies', 'Through a series of unfortunate events, three mummies end up in present-day London and embark on a wacky and hilarious journey in search of an old ring belonging to the Royal Family, stolen by ambitious archaeologist Lord Carnaby.', 88, 'Juan Jesús García Galocha', 'https://image.tmdb.org/t/p/w342/qVdrYN8qu7xUtsdEFeGiIVIaYd.jpg'),
(840326, 'Sisu', 'Deep in the wilderness of Lapland, Aatami Korpi is searching for gold but after he stumbles upon Nazi patrol, a breathtaking and gold-hungry chase through the destroyed and mined Lapland wilderness begins.', 91, 'Jalmari Helander', 'https://image.tmdb.org/t/p/w342/ygO9lowFMXWymATCrhoQXd6gCEh.jpg'),
(842675, 'The Wandering Earth II', 'A prequel to The Wandering Earth.', 173, 'Frant Gwo', 'https://image.tmdb.org/t/p/w342/pR858ihc6Ls9xohpdRJVjV787ml.jpg'),
(842945, 'Supercell', 'Good-hearted teenager William always lived in hope of following in his late father’s footsteps and becoming a storm chaser. His father’s legacy has now been turned into a storm-chasing tourist business, managed by the greedy and reckless Zane Rogers, who is now using William as the main attraction to lead a group of unsuspecting adventurers deep into the eye of the most dangerous supercell ever seen.', 100, 'Herbert James Winterstern', 'https://image.tmdb.org/t/p/w342/gbGHezV6yrhua0KfAgwrknSOiIY.jpg'),
(868759, 'Ghosted', 'Salt-of-the-earth Cole falls head over heels for enigmatic Sadie — but then makes the shocking discovery that she’s a secret agent. Before they can decide on a second date, Cole and Sadie are swept away on an international adventure to save the world.', 120, 'Dexter Fletcher', 'https://image.tmdb.org/t/p/w342/liLN69YgoovHVgmlHJ876PKi5Yi.jpg'),
(869626, 'Marcel the Shell with Shoes On', 'Marcel is an adorable one-inch-tall shell who ekes out a colorful existence with his grandmother Connie and their pet lint, Alan. Once part of a sprawling community of shells, they now live alone as the sole survivors of a mysterious tragedy. But when a documentary filmmaker discovers them amongst the clutter of his Airbnb, the short film he posts online brings Marcel millions of passionate fans, as well as unprecedented dangers and a new hope at finding his long-lost family.', 90, 'Dean Fleischer Camp', 'https://image.tmdb.org/t/p/w342/jaYmP4Ct8YLnxWAW2oYkUjeXtzm.jpg'),
(876792, 'That Time I Got Reincarnated as a Slime the Movie: Scarlet Bond', 'A long-running conspiracy is swirling over a mysterious power wielded by the Queen in Raja, a small country west of Tempest. When a slime who evolved into a Demon Lord named Rimuru Tempest crosses paths with Hiiro, a survivor of the Ogre race, an incredible adventure packed with new characters begins. The power of bonds will be put to the test!', 108, 'Yasuhito Kikuchi', 'https://image.tmdb.org/t/p/w342/xITip9n9uMAUA0TU6niMXU2tbh0.jpg'),
(879444, 'Accident Man: Hitman\'s Holiday', 'The Accident Man is back, and this time he must best the top assassins in the world to protect the ungrateful son of a mafia boss, save the life of his only friend and rekindle his relationship with his maniacal father figure.', 96, 'Harry Kirby', 'https://image.tmdb.org/t/p/w342/npW9nfL7F3ZVpaCpabqo98KTLw6.jpg'),
(882569, 'Guy Ritchie\'s The Covenant', 'During the war in Afghanistan, a local interpreter risks his own life to carry an injured sergeant across miles of grueling terrain.', 123, 'Guy Ritchie', 'https://image.tmdb.org/t/p/w342/kVG8zFFYrpyYLoHChuEeOGAd6Ru.jpg'),
(890771, 'The Black Demon', 'Oilman Paul Sturges\' idyllic family vacation turns into a nightmare when they encounter a ferocious megalodon shark that will stop at nothing to protect its territory. Stranded and under constant attack, Paul and his family must somehow find a way to get his family back to shore alive before it strikes again in this epic battle between humans and nature.', 100, 'Adrian Grünberg', 'https://image.tmdb.org/t/p/w342/uiFcFIjig0YwyNmhoxkxtAAVIL2.jpg'),
(893712, 'Sword Art Online the Movie -Progressive- Scherzo of Deep Night', 'Over a month has passed since 10,000 users were trapped inside the \"Sword Art Online\" world. Asuna, who cleared the first floor of the floating iron castle of Aincrad, joined up with Kirito and continued her journey to reach the top floor. With the support of female Information Broker Argo, clearing the floors seemed to be progressing smoothly, but conflict erupts between two major guilds who should be working together – the top player groups ALS (the Aincrad Liberation Squad) and DKB (the Dragon Knights Brigade). And meanwhile, behind the scenes exists a mysterious figure pulling the strings…', 100, 'Ayako Kono', 'https://image.tmdb.org/t/p/w342/2lEyzOq6ILNgBpLLpTRckQhbNNt.jpg'),
(916224, 'Suzume', 'Suzume, 17, lost her mother as a little girl. On her way to school, she meets a mysterious young man. But her curiosity unleashes a calamity that endangers the entire population of Japan, and so Suzume embarks on a journey to set things right.', 123, 'Makoto Shinkai', 'https://image.tmdb.org/t/p/w342/vIeu8WysZrTSFb2uhPViKjX9EcC.jpg'),
(920125, 'White Men Can\'t Jump', 'Seemingly opposite street hoopers, Jeremy, an injury prone former star, and Kamal, a has-been prodigy, team up to take one final shot at living out their dreams.', 101, 'Calmatic', 'https://image.tmdb.org/t/p/w342/7MUQMSncjUSYeNx0ZAgFCxhlPhv.jpg'),
(931935, 'The Extortion', 'An experienced commercial pilot is forced to collaborate with his country\'s intelligence services to avoid being punished for a serious fault he committed on the job. He is quickly plunged into an underworld of intrigue and extortion that will put his life at risk and he will pay a very high price to escape from it.', 105, 'Martino Zaidelis', 'https://image.tmdb.org/t/p/w342/vgdoS9ZK46J8YwPjblMSdMK3QBn.jpg'),
(934433, 'Scream VI', 'Following the latest Ghostface killings, the four survivors leave Woodsboro behind and start a fresh chapter.', 123, 'Matt Bettinelli-Olpin', 'https://image.tmdb.org/t/p/w342/wDWwtvkRRlgTiUr6TyLSMX8FCuZ.jpg'),
(943788, 'From Black', 'A young mother who\'s crushed by guilt and shame after the disappearance of her young son five years previously, is offered a bizarre opportunity to learn the truth and set things right. Is she willing to pay the terrifying price for a chance to hold her boy again?', 110, 'Thomas Marchese', 'https://image.tmdb.org/t/p/w342/9DG2g1Gl1ENAxFONIxxb5FMH99f.jpg'),
(943822, 'Prizefighter: The Life of Jem Belcher', 'At the turn of the 19th century, Pugilism was the sport of kings and a gifted young boxer fought his way to becoming champion of England.', 107, 'Daniel Graham', 'https://image.tmdb.org/t/p/w342/x3PIk93PTbxT88ohfeb26L1VpZw.jpg'),
(946310, 'Pirates Down the Street II: The Ninjas from Across', 'The pirates feel right at home in Sandborough, but the atmosphere cools right down when the ninjas come to live in the street. After all, pirates and ninjas are sworn enemies!  While pirate captain Hector Blunderbuss struggles to get rid of his new neighbours, son Billy and ninja daughter Yuka become friends. The pirates challenge the ninjas to the ultimate battle at the village\'s annual hexathlon. Who will win the match? Ninjas are faster and more agile of course, but pirates are the best cheats in all of the seven seas...', 89, 'Pim van Hoeve', 'https://image.tmdb.org/t/p/w342/uDsvma9dAwnDPVuCFi99YpWvBk0.jpg'),
(948713, 'The Last Kingdom: Seven Kings Must Die', 'In the wake of King Edward\'s death, Uhtred of Bebbanburg and his comrades adventure across a fractured kingdom in the hopes of uniting England at last.', 111, 'Edward Bazalgette', 'https://image.tmdb.org/t/p/w342/qcNDxDzd5OW9wE3c8nWxCBQoBrM.jpg'),
(977223, 'Polite Society', 'Martial artist-in-training Ria Khan believes she must save her older sister Lena from her impending marriage. After enlisting the help of her friends, Ria attempts to pull off the most ambitious of all wedding heists in the name of independence and sisterhood.', 103, 'Nida Manzoor', 'https://image.tmdb.org/t/p/w342/lv1WqAo2ulQy9aSOG7ikR44p8RR.jpg'),
(980078, 'Winnie the Pooh: Blood and Honey', 'Christopher Robin is headed off to college and he has abandoned his old friends, Pooh and Piglet, which then leads to the duo embracing their inner monsters.', 84, 'Rhys Frake-Waterfield', 'https://image.tmdb.org/t/p/w342/ewF3IlGscc7FjgGEPcQvZsAsgAW.jpg'),
(981324, 'Island of the Dolls', 'A group of people go to the legendary Island of the Dolls to learn the deadly truth.', 78, 'Jack E. Bell', 'https://image.tmdb.org/t/p/w342/sqfMynwPxlgPzba8JsAHphx8pXS.jpg'),
(985939, 'Fall', 'For best friends Becky and Hunter, life is all about conquering fears and pushing limits. But after they climb 2,000 feet to the top of a remote, abandoned radio tower, they find themselves stranded with no way down. Now Becky and Hunter’s expert climbing skills will be put to the ultimate test as they desperately fight to survive the elements, a lack of supplies, and vertigo-inducing heights', 107, 'Scott Mann', 'https://image.tmdb.org/t/p/w342/v28T5F1IygM8vXWZIycfNEm3xcL.jpg'),
(997776, 'Justice League x RWBY: Super Heroes & Huntsmen, Part One', 'Superman, Batman, Wonder Woman, Flash, Cyborg, Green Lantern and Vixen are transported to the strange world of Remnant and find themselves turned into teenagers. Meanwhile, Remnant heroes Ruby, Weiss, Blake and Yang must combine forces with the Justice League to uncover why their planet has been mysteriously altered before a superpowered Grimm destroys everything.', 83, 'Kerry Shawcross', 'https://image.tmdb.org/t/p/w342/sjBFnG8DpouuWi161KbjbAER235.jpg'),
(1003579, 'Batman: The Doom That Came to Gotham', 'Explorer Bruce Wayne accidentally unleashes an ancient evil, and returns to Gotham after being away for two decades. There, Batman battles Lovecraftian supernatural forces and encounters allies and enemies such as Green Arrow, Ra\'s al Ghul, Mr. Freeze, Killer Croc, Two-Face and James Gordon.', 86, 'Sam Liu', 'https://image.tmdb.org/t/p/w342/hrATQE8ScQceohwInaMluluNEaf.jpg'),
(1016121, 'Beautiful Disaster', 'Bad-boy Travis is exactly what college freshman Abby needs and wants to avoid. He spends his nights fighting in underground boxing matches, and his days as the ultimate college campus charmer. But Abby wants nothing to do with Travis. Intrigued by Abby’s resistance, Travis offers her a simple bet: if he loses his next fight, he must remain sex-free for a month. If he wins, Abby must live in his apartment for the same amount of time. Either way, Travis has no idea that Abby’s dark past is about to emerge, and he may have finally met his match.', 96, 'Roger Kumble', 'https://image.tmdb.org/t/p/w342/bwdLflvCcOCRPqb1x13KPuYIzVx.jpg'),
(1020696, 'Play Dead', 'Criminology student Chloe fakes her own death to break into a morgue, in order to retrieve a piece of evidence that ties her younger brother to a crime gone wrong. Once inside, she discovers that a sadistic coroner is using the corpses for his sick and twisted business, and when he realises that Chloe still has a pulse, a terrifying game of cat and mouse ensues.', 106, 'Patrick Lussier', 'https://image.tmdb.org/t/p/w342/h5bwT8fuE6VIaOslRezwDiL2DxK.jpg'),
(1033219, 'Attack on Titan', 'As viable water is depleted on Earth, a mission is sent to Saturn\'s moon Titan to retrieve sustainable H2O reserves from its alien inhabitants. But just as the humans acquire the precious resource, they are attacked by Titan rebels, who don\'t trust that the Earthlings will leave in peace.', 93, 'Noah Luke', 'https://image.tmdb.org/t/p/w342/qNz4l8UgTkD8rlqiKZ556pCJ9iO.jpg'),
(1037644, 'Battle for Saipan', 'On July 7, 1944, a U.S. Army hospital on the remote island of Saipan is overrun by Japanese forces during a relentless attack. Outgunned and surrounded by the enemy, a lone medic puts it all on the line to lead a band of wounded soldiers to safety.', 94, 'Brandon Slagle', 'https://image.tmdb.org/t/p/w342/9N3KwhzBCcqmFcqHpPCsjqfym9M.jpg'),
(1041513, 'Encanto at the Hollywood Bowl', 'A taped performance of the Encanto Live-to-Film Concert Experience at the Hollywood Bowl. The original cast puts on a miracle of a concert as they sing the favorite songs, accompanied by a full orchestra and 50 person ensemble, and the Hollywood Bowl transforms into Casita!', 45, 'Chris Howe', 'https://image.tmdb.org/t/p/w342/sa3Ku5yNVjp8NloWxJoI9dQjvOi.jpg'),
(1048300, 'Adrenaline', 'A female FBI agent holidaying in Eastern Europe with her family gets her life upside down when her daughter is kidnapped. She has to team up with a criminal on the run to save her daughter before time runs out.', 75, 'Massimiliano Cerchi', 'https://image.tmdb.org/t/p/w342/mSgqZlz7umts77mEhmEhv9piUKv.jpg'),
(1064517, 'Fist of the Condor', 'A group of martial artists from around the world search for a book that contains the ancient secrets of how to overcome the limits of the human body.', 85, 'Ernesto Díaz Espinoza', 'https://image.tmdb.org/t/p/w342/odpaGY2lG32NG4GL2PuGPt7UUTy.jpg'),
(1070777, 'One Day as a Lion', 'Jackie Powers will stop at nothing to prevent his son from following him into a life of crime. With his mob employer in pursuit, a chance encounter at a roadside diner charts a new path.', 87, 'John Swab', 'https://image.tmdb.org/t/p/w342/cxSKca4dNlk7O7PMiEYT203vlIw.jpg'),
(1073140, 'The Three Musketeers', 'France is in turmoil and a new, naive King finds himself manipulated by the evil Cardinal Richelieu. With a corrupt commander of the royal guard by his side the Cardinal employs the expertise of the devious and wicked Milady de Winter in a plot to bring down the monarchy and drag the country into war. As France burns the Cardinal will take control. All that stands between them and victory are the remnants of an elite group who wore loyalty to crown and country. Above all else The Musketeers will stand against the odds to foil this deadly plot.', 94, 'Bill Thomas', 'https://image.tmdb.org/t/p/w342/l72yy6rPzsH8eHhEOknxlipkV95.jpg'),
(1074178, 'Extras For Chasing The Dragon', 'Legendary heroes, lame-rich rises, dragons fight tigers, wealth and danger', 95, 'Venus Keung', 'https://image.tmdb.org/t/p/w342/clAzJXKTRXOfmLovb8vyJsixB1H.jpg'),
(1076364, 'Carl\'s Date', 'Carl Fredricksen reluctantly agrees to go on a date with a lady friend—but admittedly has no idea how dating works these days. Ever the helpful friend, Dug steps in to calm Carl\'s pre-date jitters and offer some tried-and-true tips for making friends—if you\'re a dog.', 8, 'Bob Peterson', 'https://image.tmdb.org/t/p/w342/wakoF2UgsEE3fGs5KpuwMWsaNr2.jpg'),
(1087771, 'Nada que ver', 'After Carlos is tasked to care for Paola, both characters must work out their differences to make their time together more pleasant. As time goes on, they are faced with lessons about trust, mutual respect, and perhaps love.', 90, 'Kenya Marquez', 'https://image.tmdb.org/t/p/w342/ofnOwcG9l1DuGl7vB45JHsfSlR6.jpg'),
(1094319, 'The Best Man', 'Mercenaries seize control of a remote resort hotel during a wedding and it\'s up to the best man, the groom and their drunken best friend to stop the terrorists and save the hostages.', 93, 'Shane Dax Taylor', 'https://image.tmdb.org/t/p/w342/c9f6mFZqkyz4AD0sxGmynE1pe0v.jpg'),
(1102776, 'AKA', 'A steely special ops agent finds his morality put to the test when he infiltrates a crime syndicate and unexpectedly bonds with the boss\' young son.', 122, 'Morgan S. Dalibert', 'https://image.tmdb.org/t/p/w342/3BSxAjiporlwQTWzaHZ9Yrl5C9D.jpg'),
(1105803, 'Snag', 'An Australian lone wolf\'s quiet existence is shattered when he learns that the woman he once loved and thought was dead is alive and held captive by ruthless gangsters. Now, to take on this dangerous criminal organization, he must seek out allies and storm into a world of violence to rescue the love of his life in this gritty, modern day violent fairytale.', 87, 'Ben Milliken', 'https://image.tmdb.org/t/p/w342/nhj4Q39qMSk6X5Ly9j9Yqyjrg5A.jpg'),
(1107872, 'Mother\'s Day', 'Nina, a former NATO special operations agent living in hiding, has to use all her deadly skills to rescue her son who has been kidnapped by ruthless gangsters. Finding Max is a double opportunity for her. A chance to feel the adrenaline rush again, and an opportunity to get back into the life of the son she had to abandon years ago.', 94, 'Mateusz Rakowicz', 'https://image.tmdb.org/t/p/w342/wws9Z90DdZ7D0n3gdzFSZ6cntJi.jpg'),
(1111140, 'Two Sinners and a Mule', 'Kicked out of a small Western town for sinful behavior, free-spirited Alice and Nora set out for Virginia City to pursue their dream of opening a restaurant. Out on the prairie, they come across an injured bounty hunter named Elden. Hoping to share in the reward, they nurse Elden back to health and help him stalk his prey, Grimes. But as Nora and Alice both develop feelings for Elden, no one notices that Grimes is now on their tail, and the hunters become the hunted…', 97, 'Raliegh Wilson', 'https://image.tmdb.org/t/p/w342/icL1zn5z1L5ULIpxkuOLjeUgURY.jpg'),
(1118203, 'The Swan Princess: A Fairytale Is Born', 'Before becoming queen, Uberta lived a humble life with her husband Maximillian when she is suddenly thrust into royalty. Through triumph and tragedy, she learns the lessons needed to become a beloved Queen, all while raising the next generation of rulers. When it\'s time for Uberta to pass the royal scepter to Odette and Derek, rival Queen Wixom has plans of her own to ruin the kingdom\'s greatest coronation.', 88, 'Richard Rich', 'https://image.tmdb.org/t/p/w342/2axXVpi3dKfESWzgncbakLB7o7f.jpg'),
(1121116, 'Maggie Simpson in \"Rogue Not Quite One\"', 'On their way to daycare, Homer loses track of Maggie who hops in Grogu’s hovering pram for a hyperspace-hopping adventure across the galaxy. Facing a squadron of Imperial TIE fighters, Maggie brings the battle to Springfield in this epic short celebrating all things Star Wars.', 5, 'David Silverman', 'https://image.tmdb.org/t/p/w342/gmTOhwzcSbEGG3xKRfQwwS2BTXD.jpg'),
(1121316, 'Where the Tracks End', 'Georgina is a teacher determined to make a difference in the lives of the children she educates in the classroom of a wagon school in rural Mexico.', 95, 'Ernesto Contreras', 'https://image.tmdb.org/t/p/w342/8Tf7bBXpLQjgFI0a5KJ1eHrxHTw.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `screenings`
--

CREATE TABLE `screenings` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `screening_date` date NOT NULL,
  `screening_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `screenings`
--

INSERT INTO `screenings` (`id`, `movie_id`, `screening_date`, `screening_time`) VALUES
(0, 324552, '2023-06-11', '21:00:00'),
(1, 324552, '2023-06-24', '15:00:00'),
(2, 324552, '2023-06-30', '21:00:00'),
(3, 447277, '2023-06-08', '12:30:00'),
(4, 447277, '2023-06-24', '19:00:00'),
(5, 447277, '2023-06-27', '17:00:00'),
(6, 447277, '2023-07-03', '20:00:00'),
(7, 447277, '2023-06-10', '19:00:00'),
(8, 447277, '2023-06-10', '16:00:00'),
(9, 458156, '2023-06-16', '17:00:00'),
(10, 458156, '2023-06-26', '20:00:00'),
(11, 458156, '2023-06-15', '16:30:00'),
(12, 458156, '2023-06-09', '20:00:00'),
(13, 458156, '2023-06-30', '18:30:00'),
(14, 458156, '2023-07-06', '15:30:00'),
(15, 507250, '2023-06-22', '14:00:00'),
(16, 507250, '2023-06-12', '14:00:00'),
(17, 507250, '2023-06-20', '09:00:00'),
(18, 507250, '2023-06-26', '11:00:00'),
(19, 507250, '2023-07-01', '10:00:00'),
(20, 507250, '2023-06-09', '12:00:00'),
(21, 507250, '2023-07-04', '14:30:00'),
(22, 507250, '2023-06-11', '16:30:00'),
(23, 507250, '2023-06-29', '14:00:00'),
(24, 536554, '2023-07-04', '10:30:00'),
(25, 536554, '2023-06-11', '18:30:00'),
(26, 536554, '2023-06-13', '11:30:00'),
(27, 536554, '2023-06-30', '18:00:00'),
(28, 536554, '2023-06-12', '10:00:00'),
(29, 536554, '2023-06-23', '14:30:00'),
(30, 536554, '2023-07-04', '21:30:00'),
(31, 631842, '2023-06-24', '17:00:00'),
(32, 631842, '2023-06-25', '21:00:00'),
(33, 631842, '2023-06-27', '09:00:00'),
(34, 631842, '2023-06-19', '17:00:00'),
(35, 631842, '2023-07-05', '12:00:00'),
(36, 631842, '2023-06-13', '10:00:00'),
(37, 631842, '2023-06-30', '21:00:00'),
(38, 631842, '2023-06-25', '19:00:00'),
(39, 631842, '2023-06-22', '12:00:00'),
(40, 631842, '2023-06-14', '10:00:00'),
(41, 634649, '2023-06-13', '10:00:00'),
(42, 634649, '2023-06-13', '13:00:00'),
(43, 634649, '2023-06-15', '21:30:00'),
(44, 634649, '2023-06-13', '14:00:00'),
(45, 634649, '2023-06-20', '14:30:00'),
(46, 634649, '2023-06-23', '12:30:00'),
(47, 634649, '2023-06-24', '11:00:00'),
(48, 634649, '2023-07-02', '13:00:00'),
(49, 649609, '2023-06-27', '21:00:00'),
(50, 649609, '2023-06-11', '10:00:00'),
(51, 649609, '2023-06-18', '18:00:00'),
(52, 649609, '2023-06-26', '19:00:00'),
(53, 649609, '2023-06-14', '09:30:00'),
(54, 649609, '2023-06-16', '14:30:00'),
(55, 675353, '2023-07-01', '09:30:00'),
(56, 675353, '2023-06-20', '10:30:00'),
(57, 675353, '2023-06-20', '17:00:00'),
(58, 675353, '2023-06-19', '21:30:00'),
(59, 676710, '2023-06-10', '10:30:00'),
(60, 676710, '2023-06-16', '21:00:00'),
(61, 676710, '2023-07-02', '10:30:00'),
(62, 676710, '2023-06-20', '17:00:00'),
(63, 676710, '2023-06-21', '09:00:00'),
(64, 700391, '2023-06-20', '14:30:00'),
(65, 700391, '2023-06-12', '21:00:00'),
(66, 700391, '2023-06-14', '13:00:00'),
(67, 700391, '2023-06-09', '13:00:00'),
(68, 700391, '2023-06-25', '13:30:00'),
(69, 700391, '2023-07-04', '18:00:00'),
(70, 702621, '2023-06-09', '21:00:00'),
(71, 702621, '2023-06-20', '14:30:00'),
(72, 702621, '2023-06-10', '20:30:00'),
(73, 713704, '2023-06-18', '20:30:00'),
(74, 713704, '2023-06-10', '11:30:00'),
(75, 713704, '2023-07-05', '14:00:00'),
(76, 758009, '2023-07-01', '10:00:00'),
(77, 758009, '2023-06-22', '16:30:00'),
(78, 758009, '2023-06-18', '14:00:00'),
(79, 758323, '2023-06-08', '20:00:00'),
(80, 758323, '2023-06-15', '09:00:00'),
(81, 758323, '2023-06-17', '19:00:00'),
(82, 758323, '2023-06-08', '09:30:00'),
(83, 758323, '2023-07-05', '13:00:00'),
(84, 785084, '2023-06-26', '15:00:00'),
(85, 785084, '2023-06-18', '19:30:00'),
(86, 785084, '2023-07-06', '13:30:00'),
(87, 804150, '2023-06-17', '20:00:00'),
(88, 804150, '2023-06-30', '18:30:00'),
(89, 804150, '2023-06-23', '12:00:00'),
(90, 804150, '2023-06-11', '16:30:00'),
(91, 804150, '2023-06-08', '09:00:00'),
(92, 804150, '2023-06-13', '12:00:00'),
(93, 816904, '2023-06-11', '15:30:00'),
(94, 816904, '2023-06-30', '17:00:00'),
(95, 816904, '2023-06-09', '13:30:00'),
(96, 842675, '2023-07-04', '14:30:00'),
(97, 842675, '2023-06-12', '18:30:00'),
(98, 842675, '2023-06-09', '12:30:00'),
(99, 842675, '2023-06-23', '19:30:00'),
(100, 842675, '2023-06-23', '10:00:00'),
(101, 842675, '2023-06-18', '09:00:00'),
(102, 842675, '2023-06-23', '09:00:00'),
(103, 842675, '2023-06-15', '12:30:00'),
(104, 842675, '2023-06-30', '13:00:00'),
(105, 842675, '2023-07-02', '10:00:00'),
(106, 842945, '2023-06-29', '18:00:00'),
(107, 842945, '2023-06-20', '10:00:00'),
(108, 842945, '2023-06-28', '21:00:00'),
(109, 842945, '2023-06-25', '10:00:00'),
(110, 842945, '2023-06-13', '18:00:00'),
(111, 842945, '2023-06-14', '16:30:00'),
(112, 876792, '2023-07-05', '09:30:00'),
(113, 876792, '2023-06-28', '10:00:00'),
(114, 876792, '2023-06-09', '12:30:00'),
(115, 876792, '2023-06-19', '16:00:00'),
(116, 876792, '2023-06-26', '16:30:00'),
(117, 876792, '2023-06-09', '18:00:00'),
(118, 876792, '2023-06-21', '10:00:00'),
(119, 876792, '2023-06-30', '14:00:00'),
(120, 876792, '2023-06-27', '15:00:00'),
(121, 876792, '2023-06-19', '10:30:00'),
(122, 879444, '2023-06-16', '21:30:00'),
(123, 879444, '2023-06-30', '13:00:00'),
(124, 879444, '2023-06-08', '20:30:00'),
(125, 879444, '2023-06-25', '09:30:00'),
(126, 879444, '2023-06-30', '13:30:00'),
(127, 882569, '2023-06-08', '13:00:00'),
(128, 882569, '2023-06-15', '18:30:00'),
(129, 882569, '2023-06-24', '15:30:00'),
(130, 882569, '2023-06-19', '11:00:00'),
(131, 882569, '2023-06-14', '11:00:00'),
(132, 882569, '2023-06-22', '15:30:00'),
(133, 882569, '2023-06-26', '18:30:00'),
(134, 882569, '2023-06-23', '11:30:00'),
(135, 882569, '2023-06-23', '13:30:00'),
(136, 882569, '2023-07-06', '13:30:00'),
(137, 943822, '2023-06-19', '09:30:00'),
(138, 943822, '2023-06-12', '14:30:00'),
(139, 943822, '2023-07-02', '17:30:00'),
(140, 943822, '2023-07-02', '15:00:00'),
(141, 943822, '2023-06-13', '09:00:00'),
(142, 943822, '2023-06-27', '20:30:00'),
(143, 943822, '2023-06-13', '18:00:00'),
(144, 943822, '2023-06-17', '13:00:00'),
(145, 943822, '2023-06-29', '12:30:00'),
(146, 943822, '2023-06-24', '19:00:00'),
(147, 946310, '2023-06-23', '17:30:00'),
(148, 946310, '2023-06-08', '16:00:00'),
(149, 946310, '2023-06-27', '10:00:00'),
(150, 946310, '2023-06-12', '17:00:00'),
(151, 946310, '2023-07-01', '10:30:00'),
(152, 946310, '2023-07-01', '17:30:00'),
(153, 946310, '2023-06-13', '16:30:00'),
(154, 946310, '2023-06-14', '09:30:00'),
(155, 946310, '2023-06-23', '11:00:00'),
(156, 948713, '2023-06-25', '19:00:00'),
(157, 948713, '2023-06-09', '10:00:00'),
(158, 948713, '2023-07-06', '13:00:00'),
(159, 948713, '2023-06-27', '21:00:00'),
(160, 948713, '2023-06-20', '13:30:00'),
(161, 948713, '2023-06-27', '18:30:00'),
(162, 948713, '2023-06-12', '19:30:00'),
(163, 948713, '2023-06-15', '17:30:00'),
(164, 981324, '2023-06-23', '17:00:00'),
(165, 981324, '2023-06-13', '21:30:00'),
(166, 981324, '2023-06-12', '09:30:00'),
(167, 1003579, '2023-06-11', '13:00:00'),
(168, 1003579, '2023-06-17', '10:00:00'),
(169, 1003579, '2023-06-20', '21:30:00'),
(170, 1003579, '2023-06-16', '11:00:00'),
(171, 1003579, '2023-06-17', '16:00:00'),
(172, 1003579, '2023-06-20', '10:00:00'),
(173, 1037644, '2023-06-14', '18:30:00'),
(174, 1037644, '2023-07-04', '09:00:00'),
(175, 1037644, '2023-06-14', '10:30:00'),
(176, 1121116, '2023-06-24', '21:30:00'),
(177, 1121116, '2023-06-09', '12:00:00'),
(178, 1121116, '2023-07-01', '09:00:00'),
(179, 1121116, '2023-06-17', '19:30:00'),
(180, 1121116, '2023-06-13', '11:30:00'),
(181, 1121116, '2023-06-24', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', '$2y$10$o2cZL7RdZzD6DAmax5M7cuMCVJhobHeKzSsDQGPNqUOUmG13CAK..');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screenings`
--
ALTER TABLE `screenings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
