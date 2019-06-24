-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 24. 06 2019 kl. 08:27:28
-- Serverversion: 5.6.24
-- PHP-version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `armor`
--

CREATE TABLE IF NOT EXISTS `armor` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `defense_physical` varchar(45) NOT NULL,
  `defense_elemental` varchar(45) NOT NULL,
  `resistance` varchar(45) NOT NULL,
  `poise` int(11) NOT NULL,
  `durability` int(11) NOT NULL,
  `weight` float NOT NULL,
  `armor_slot` int(11) NOT NULL,
  `notes` text,
  `picture` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `armor`
--

INSERT INTO `armor` (`id`, `name`, `defense_physical`, `defense_elemental`, `resistance`, `poise`, `durability`, `weight`, `armor_slot`, `notes`, `picture`) VALUES
(1, 'Helm of the Wise', '18/17.1/20.7/18', '12/13/10', '11/7/18', 8, 500, 5.1, 1, NULL, 'armors\\helm-of-the-wise.png'),
(2, 'Armor of the Glorious', '47/44.6/54.1/47', '31/34/25', '28/19/24', 20, 500, 13.3, 2, NULL, 'armors\\armor-of-the-glorious.png'),
(3, 'Gauntlets Of The Vanquisher	', '11/10.5/12.7/11', '7/7/6', '6/5/4', 4, 500, 3, 3, NULL, 'armors\\gauntlets-of-the-vanquisher.png'),
(4, 'Boots Of The Explorer', '14/13.3/16.1/14', '10/11/7', '8/6/5', 6, 500, 4, 4, NULL, 'armors\\boots-of-the-explorer.png'),
(5, 'Crown of Dusk', '5/5/5/5', '11/2/6', '5/5/20', 0, 150, 0.4, 1, 'Boosts spell damage by 20%, but takes 30% additional damage from magic attacks', 'armors\\crown-of-dusk.png'),
(6, 'Antiquated Dress', '14/14/14/14', '33/6/19', '14/14/26', 0, 150, 1, 2, NULL, 'armors\\antiquated-dress.png'),
(7, 'Antiquated Gloves', '8/8/8/8', '19/3/11', '8/8/16', 0, 150, 0.6, 3, NULL, 'armors\\antiquated-gloves.png'),
(8, 'Antiquated Skirt', '15/15/15/15', '35/17/21', '20/20/52', 0, 150, 3, 4, NULL, 'armors\\antiquated-skirt.png'),
(9, 'Balder Helm', '14/13.7/17.1/13.4', '6/8/6', '8/6/0', 6, 450, 4.2, 1, NULL, 'armors\\balder-helm.png'),
(10, 'Balder Armor', '37/36.3/45.1/35.5', '15/18/15', '20/16/0', 16, 450, 10.9, 2, NULL, 'armors\\balder-armor.png'),
(11, 'Balder Gauntlets', '12/11.8/14.6/11.5', '7/8/5', '6/5/0', 5, 450, 3.5, 3, NULL, 'armors\\balder-gauntlets.png'),
(12, 'Balder Leggings', '22/21.6/26.8/21.1', '12/14/9', '14/12/0', 9, 405, 6.4, 4, NULL, 'armors\\balder-leggings.png'),
(13, 'Brigand Hood', '9/9.9/9/8.1', '8/5/6', '8/8/0', 0, 200, 1.2, 1, NULL, 'armors\\brigand-hood.png'),
(14, 'Brigand Armor', '23/25.3/23/20.7', '20/13/17', '20/20/0', 0, 200, 3.1, 2, NULL, 'armors\\brigand-armor.png'),
(15, 'Brigand Gauntlets', '14/15.4/14/12.6', '12/8/10', '12/12/0', 0, 200, 1.8, 3, NULL, 'armors\\brigand-gauntlets.png'),
(16, 'Brigand Trousers', '14/15.4/14/12.6', '12/8/10', '12/12/0', 0, 200, 1.8, 4, NULL, 'armors\\brigand-trousers.png'),
(17, 'Big Hat', '14/15.4/15.4/12.6', '43/7/17', '13/13/0', 0, 250, 3, 1, NULL, 'armors\\big-hat.png'),
(18, 'Sage Robe', '41/43.3/42.6/41', '28/29/35', '49/49/0', 0, 250, 4, 2, NULL, 'armors\\sage-robe.png'),
(19, 'Traveling Gloves', '12/13/12.5/12', '16/8/10', '14/14/0', 0, 250, 1.6, 3, NULL, 'armors\\traveling-gloves.png'),
(20, 'Traveling Boots', '12/13/12.5/12', '16/8/10', '14/14/0', 0, 250, 1.6, 4, NULL, 'armors\\traveling-boots.png'),
(21, 'Black Iron Helm', '27/25.7/31.1/27', '11/19/8', '17/10/5', 12, 600, 6, 1, NULL, 'armors\\black-iron-helm.png'),
(22, 'Black Iron Armor', '68/64.6/78.2/68', '30/51/21', '43/25/13', 31, 600, 15.6, 2, NULL, 'armors\\black-iron-armor.png'),
(23, 'Black Iron Gauntlets', '40/38/46/40', '17/30/13', '25/14/8', 18, 600, 9.2, 3, NULL, 'armors\\black-iron-gauntlets.png'),
(24, 'Black Iron Leggings', '40/38/46/40', '17/30/13', '25/14/8', 18, 600, 9.2, 4, NULL, 'armors\\black-iron-leggings.png'),
(25, 'Black Knight Helm', '21/19.9/23.7/20.6', '11/18/6', '12/6/0', 8, 550, 5, 1, NULL, 'armors\\black-knight-helm.png'),
(26, 'Black Knight Armor', '57/54.2/64.4/55.9', '29/48/17', '32/15/0', 21, 550, 13, 2, NULL, 'armors\\black-knight-armor.png'),
(27, 'Black Knight Gauntlets', '26/24.7/29.4/25.5', '14/23/8', '15/8/0', 10, 550, 6, 3, NULL, 'armors\\black-knight-gauntlets.png'),
(28, 'Black Knight Leggings', '30/28.5/33.9/29.4', '15/26/9', '17/9/0', 11, 550, 7, 4, NULL, 'armors\\black-knight-leggings.png'),
(29, 'Mask of Velka', '12/13.1/12/12', '12/10/7', '9/9/20', 0, 400, 2.5, 1, NULL, 'armors\\mask-of-velka.png'),
(30, 'Black Cleric Robe', '23/25.1/23/23', '29/25/19', '22/22/13', 0, 400, 3.9, 2, NULL, 'armors\\black-cleric-robe.png'),
(31, 'Black Manchette', '11/12/11/11', '14/11/9', '10/10/5', 0, 400, 1.8, 3, NULL, 'armors\\black-manchette.png'),
(32, 'Black Tights', '16/17.4/16/16', '22/17/13', '15/15/9', 0, 400, 2.8, 4, NULL, 'armors\\black-tights.png'),
(33, 'Black Sorcerer Hat', '5/5.1/5.5/5', '11/8/8', '12/12/2', 0, 200, 0.7, 1, NULL, 'armors\\black-sorcerer-hat.png'),
(34, 'Black Sorcerer Cloak', '13/13.4/14.2/13', '28/21/21', '31/31/4', 0, 200, 1.8, 2, NULL, 'armors\\black-sorcerer-cloak.png'),
(35, 'Black Sorcerer Gauntlets', '8/8.2/8.7/8', '17/12/12', '18/18/2', 0, 200, 1, 3, NULL, 'armors\\black-sorcerer-gauntlets.png'),
(36, 'Black Sorcerer Boots', '8/8.2/8.7/8', '17/12/12', '18/18/2', 0, 200, 1, 4, NULL, 'armors\\black-sorcerer-boots.png'),
(37, 'Brass Helm', '18/17.3/20.3/18', '12/11/11', '11/9/6', 8, 600, 5.1, 1, NULL, 'armors\\brass-helm.png'),
(38, 'Brass Armor', '37/35.5/41.8/37', '27/25/25', '24/20/11', 16, 600, 10.9, 2, NULL, 'armors\\brass-armor.png'),
(39, 'Brass Gauntlets', '19/18.2/21.5/19', '14/12/12', '12/10/6', 8, 600, 5.4, 3, NULL, 'armors\\brass-gauntlets.png'),
(40, 'Brass Leggings', '23/22.1/26/23', '16/15/15', '14/12/7', 9, 600, 6.4, 4, NULL, 'armors\\brass-leggings.png'),
(41, 'Catarina Helm', '22/21.8/25.3/22', '12/13/7', '13/9/0', 8, 400, 4.5, 1, NULL, 'armors\\catarina-helm.png'),
(42, 'Catarina Armor', '57/56.4/65.5/57', '31/37/19', '34/24/0', 21, 400, 11.7, 2, NULL, 'armors\\catarina-armor.png'),
(43, 'Catarina Gauntlets', '34/33.7/39.1/34', '18/21/12', '21/13/0', 13, 400, 6.9, 3, NULL, 'armors\\catarina-gauntlets.png'),
(44, 'Catarina Leggings', '34/33.7/39.1/34', '18/21/12', '21/13/0', 13, 400, 6.9, 4, NULL, 'armors\\catarina-leggings.png'),
(45, 'Chain Helm', '12/12/14.4/11.6', '10/8/3', '10/6/0', 5, 300, 3, 1, NULL, 'armors\\chain-helm.png'),
(46, 'Chain Armor', '30/30/36/29.1', '21/16/7', '20/12/0', 9, 300, 6, 2, NULL, 'armors\\chain-armor.png'),
(47, 'Leather Gauntlets', '12/12/14.4/11.6', '10/8/4', '12/7/0', 5, 300, 3.6, 3, NULL, 'armors\\leather-gauntlets.png'),
(48, 'Chain Leggings', '18/18/21.6/17.5', '14/12/5', '15/9/0', 7, 300, 4.6, 4, NULL, 'armors\\chain-leggings.png'),
(49, 'Snickering Top Hat', '12/16.2/12/12', '13/9/12', '19/14/0', 0, 300, 2, 1, NULL, 'armors\\snickering-top-hat.png'),
(50, 'Chester''s Long Coat', '27/36.5/27/27', '30/21/28', '44/32/0', 0, 300, 4.5, 2, NULL, 'armors\\chester-s-long-coat.png'),
(51, '	Chester''s Gloves', '10/13.5/10/10', '10/7/10', '15/11/0', 0, 300, 1.5, 3, NULL, 'armors\\chesters-gloves.png'),
(52, 'Chester''s Trousers', '19/25.6/19/19', '21/15/20', '31/23/0', 0, 300, 3.2, 4, NULL, 'armors\\chester-s-trousers.png'),
(53, 'Cleric Helm', '15/15/17.3/15', '9/8/6', '9/6/0', 8, 500, 4.8, 1, NULL, 'armors\\cleric-helm.png'),
(54, 'Cleric Armor', '40/40/46/40', '23/21/15', '23/16/0', 20, 500, 12.5, 2, NULL, 'armors\\cleric-armor.png'),
(55, 'Cleric Gauntlets', '24/24/27.6/24', '13/12/9', '14/9/0', 12, 500, 7.4, 3, NULL, 'armors\\cleric-gauntlets.png'),
(56, 'Cleric Leggings', '24/24/27.6/24', '13/12/9', '25/9/0', 12, 500, 7.4, 4, NULL, 'armors\\cleric-leggings.png'),
(57, 'Mask of the Sealer', '12/13.2/12/12', '12/7/9', '8/8/8', 0, 400, 1.5, 1, NULL, 'armors\\mask-of-the-sealer.png'),
(58, 'Crimson Robe', '32/35.2/32/32', '33/19/24', '21/21/21', 0, 400, 3.9, 2, NULL, 'armors\\crimson-robe.png'),
(59, 'Crimson Gloves', '7/7.7/7/7', '7/4/5', '4/4/4', 0, 400, 0.8, 3, NULL, 'armors\\crimson-gloves.png'),
(60, 'Crimson Waistcloth', '29/31.9/29/29', '29/17/21', '19/19/19', 0, 400, 3.5, 4, NULL, 'armors\\crimson-waistcloth.png'),
(61, 'Crystalline Helm', '25/21.3/28.8/25', '8/6/2', '6/0/0', 6, 150, 4.2, 1, NULL, 'armors\\crystalline-helm.png'),
(62, 'Crystalline Armor', '59/50.1/67.9/59', '21/15/7', '15/0/0', 16, 150, 10.9, 2, NULL, 'armors\\crystalline-armor.png'),
(63, 'Crystalline Gauntlets', '37/31.5/42.6/37', '12/9/4', '9/0/0', 9, 150, 6.4, 3, NULL, 'armors\\crystalline-gauntlets.png'),
(64, 'Crystalline Leggings', '37/31.5/42.6/37', '12/9/4', '9/0/0', 9, 150, 6.4, 4, NULL, 'armors\\crystalline-leggings.png'),
(65, 'Dark Mask', '18/18/19.8/16.9', '12/12/10', '12/8/0', 6, 300, 3.8, 1, NULL, 'armors\\dark-mask.png'),
(66, 'Dark Armor', '45/45/49.5/42.3', '30/31/27', '30/21/0', 16, 300, 9.8, 2, NULL, 'armors\\dark-armor.png'),
(67, 'Dark Gauntlets', '27/27/29.7/25.4', '18/18/15', '18/12/0', 9, 300, 5.8, 3, NULL, 'armors\\dark-gauntlets.png'),
(68, 'Dark Leggings', '27/27/29.7/25.4', '18/18/15', '18/12/0', 9, 300, 5.8, 4, NULL, 'armors\\dark-leggings.png'),
(69, 'Dingy Hood', '6/7.5/6/6', '8/5/6', '9/7/9', 0, 150, 0.8, 1, NULL, 'armors\\dingy-hood.png'),
(70, 'Dingy Robe', '23/28.8/23/23', '33/19/25', '35/26/35', 0, 150, 3, 2, NULL, 'armors\\dingy-robe.png'),
(71, 'Dingy Gloves', '9/11.3/9/9', '13/8/10', '14/10/14', 0, 150, 1.2, 3, NULL, 'armors\\dingy-gloves.png'),
(72, 'Blood-Stained Skirt', '13/16.3/13/13', '27/16/21', '29/22/29', 0, 150, 2.5, 4, NULL, 'armors\\blood-stained-skirt.png'),
(73, 'Eastern Helm', '17/16.2/21.1/16.5', '6/12/7', '15/11/0', 8, 450, 4.7, 1, NULL, 'armors\\eastern-helm.png'),
(74, 'Eastern Armor', '45/42.7/55.8/43.6', '15/33/18', '38/28/0', 20, 450, 12.3, 2, NULL, 'armors\\eastern-armor.png'),
(75, 'Eastern Gauntlets', '6/5.7/7.4/5.8', '1/4/2', '5/4/0', 2, 450, 1.5, 3, NULL, 'armors\\eastern-gauntlets.png'),
(76, 'Eastern Leggings', '15/14.2/18.6/14.5', '5/11/6', '12/10/0', 6, 450, 4, 4, NULL, 'armors\\eastern-leggings.png'),
(77, 'Elite Knight Helm', '15/14.5/17.4/15', '7/8/6', '9/6/0', 8, 450, 4.5, 1, NULL, 'armors\\elite-knight-helm.png'),
(78, 'Elite Knight Armor', '39/37.8/45.2/39', '17/18/15', '23/16/0', 20, 450, 11.7, 2, NULL, 'armors\\elite-knight-armor.png'),
(79, 'Elite Knight Gauntlets', '18/17.5/20.9/18', '7/8/5', '7/5/0', 6, 450, 3.7, 3, NULL, 'armors\\elite-knight-gauntlets.png'),
(80, 'Elite Knight Leggings', '23/22.3/26.7/23', '11/11/9', '14/9/0', 12, 450, 6.9, 4, NULL, 'armors\\elite-knight-leggings.png'),
(81, 'Giant Helm', '27/24.8/30.5/27', '13/19/13', '13/8/0', 14, 600, 6.3, 1, NULL, 'armors\\giant-helm.png'),
(82, 'Giant Armor', '72/66.2/81.4/72', '32/48/33', '32/19/0', 35, 600, 16.4, 2, NULL, 'armors\\giant-armor.png'),
(83, 'Giant Gauntlets', '41/37.7/46.3/41', '19/29/19', '19/11/0', 21, 600, 9.7, 3, NULL, 'armors\\giant-gauntlets.png'),
(84, 'Giant Leggings', '41/37.7/46.3/41', '19/29/19', '19/11/0', 21, 600, 9.7, 4, NULL, 'armors\\giant-leggings.png'),
(85, 'Gold-Hemmed Black Hood', '11/11.8/11/11', '15/22/8', '16/36/0', 0, 400, 1.4, 1, NULL, 'armors\\gold-hemmed-black-hood.png'),
(86, 'Gold-Hemmed Black Cloak', '31/33.2/31/31', '38/58/21', '40/94/0', 0, 400, 3.5, 2, NULL, 'armors\\gold-hemmed-black-cloak.png'),
(87, 'Gold-Hemmed Black Gloves', '12/12.8/12/12', '13/24/8', '14/32/0', 0, 400, 1.2, 3, NULL, 'armors\\gold-hemmed-black-gloves.png'),
(88, 'Gold-Hemmed Black Skirt', '23/24.6/23/23', '27/49/17', '32/78/0', 0, 400, 3, 4, NULL, 'armors\\gold-hemmed-black-skirt.png'),
(89, 'Golem Helm', '35/32.2/40.9/35', '17/16/6', '17/12/0', 13, 700, 6.3, 1, NULL, 'armors\\golem-helm.png'),
(90, 'Golem Armor', '91/83.7/106.5/91', '45/41/17', '45/31/0', 33, 700, 16.4, 2, NULL, 'armors\\golem-armor.png'),
(91, 'Golem Gauntlets', '54/49.7/63.2/54', '25/23/10', '27/17/0', 20, 700, 9.7, 3, NULL, 'armors\\golem-gauntlets.png'),
(92, 'Golem Leggings', '54/49.7/63.2/54', '25/23/10', '27/17/0', 20, 700, 9.7, 4, NULL, 'armors\\golem-leggings.png'),
(93, 'Guardian Helm', '41/38.5/47.1/41', '23/19/23', '17/6/0', 15, 800, 7.2, 1, NULL, 'armors\\guardian-helm.png'),
(94, 'Guardian Armor', '86/80.8/98.9/86', '50/42/50', '42/14/0', 37, 800, 17, 2, NULL, 'armors\\guardian-armor.png'),
(95, 'Guardian Gauntlets', '54/50.8/62.1/54', '33/27/33', '27/10/0', 23, 800, 10.4, 3, NULL, 'armors\\guardian-gauntlets.png'),
(96, 'Guardian Leggings', '54/50.8/62.1/54', '33/27/33', '27/10/0', 23, 800, 10.4, 4, NULL, 'armors\\guardian-leggings.png'),
(97, 'Havel''s Helm', '36/30.6/41.4/36', '22/22/18', '18/4/9', 18, 900, 7.5, 1, NULL, 'armors\\havel-s-helm.png'),
(98, 'Havel''s Armor', '92/78.2/105.8/92', '56/54/49', '45/11/22', 47, 900, 19.5, 2, NULL, 'armors\\havel-s-armor.png'),
(99, 'Havel''s Gauntlets', '54/45.9/62.1/54', '32/32/29', '27/5/13', 28, 900, 11.5, 3, NULL, 'armors\\havels-gauntlets.png'),
(100, 'Havel''s Leggings', '54/45.9/62.1/54', '32/32/29', '27/5/13', 28, 900, 11.5, 4, NULL, 'armors\\havel-s-leggings.png'),
(101, 'Gough''s Helm', '25/25/26.2/23.8', '14/21/11', '11/6/0', 9, 450, 6.5, 1, NULL, 'armors\\gough-s-helm.png'),
(102, 'Gough''s Armor', '50/50/52.5/47.5', '28/41/21', '21/12/0', 19, 450, 13, 2, NULL, 'armors\\gough-s-armor.png'),
(103, 'Gough''s Gauntlets', '27/27/28.3/25.6', '15/22/11', '11/6/0', 12, 450, 7, 3, NULL, 'armors\\goughs-gauntlets.png'),
(104, 'Gough''s Leggings', '31/31/32.5/29.4', '17/25/13', '13/7/0', 13, 450, 8, 4, NULL, 'armors\\gough-s-leggings.png'),
(105, 'Hollow Soldier Helm', '10/10/11.1/8.8', '6/6/4', '7/5/0', 5, 200, 3, 1, NULL, 'armors\\hollow-soldier-helm.png'),
(106, 'Hollow Soldier Armor', '26/26/28.9/22.9', '16/17/10', '18/13/0', 12, 200, 7.8, 2, NULL, 'armors\\hollow-soldier-armor.png'),
(107, 'Hollow Soldier Waistcloth', '13/13/14.4/11.4', '8/8/6', '10/6/0', 7, 200, 1.5, 4, NULL, 'armors\\hollow-soldier-waistcloth.png'),
(108, 'Hollow Thief''s Hood', '8/8.7/8/8.3', '8/5/7', '6/11/0', 0, 250, 1.1, 1, NULL, 'armors\\hollow-thief-s-hood.png'),
(109, 'Hollow Thief''s Leather Armor', '21/22.9/21/21.8', '20/13/18', '15/29/0', 0, 250, 2.8, 2, NULL, 'armors\\hollow-thief-s-leather-armor.png'),
(110, 'Hollow Thief''s Tights', '12/13.1/12/12.5', '11/8/10', '9/17/0', 0, 250, 1.7, 4, NULL, 'armors\\hollow-thief-s-tights.png'),
(111, 'Hollow Warrior Helm', '10/9.7/10.3/9.5', '6/5/6', '5/5/0', 3, 250, 2.6, 1, NULL, 'armors\\hollow-warrior-helm.png'),
(112, 'Hollow Warrior Armor', '24/23.3/24.7/22.8', '16/12/17', '13/13/0', 8, 250, 6.6, 2, NULL, 'armors\\hollow-warrior-armor.png'),
(113, 'Hollow Warrior Waistcloth', '13/12.6/13.4/12.3', '8/6/8', '6/6/0', 5, 250, 1.4, 4, NULL, 'armors\\hollow-warrior-waistcloth.png'),
(114, 'Priest''s Hat', '8/9.4/8/8', '9/5/7', '9/8/0', 0, 350, 1.2, 1, NULL, 'armors\\priest-s-hat.png'),
(115, 'Holy Robe', '22/26/22/22', '23/14/19', '24/20/0', 0, 350, 4, 2, NULL, 'armors\\holy-robe.png'),
(116, 'Traveling Gloves', '5/5.9/5/5', '5/3/4', '5/4/0', 0, 350, 0.7, 3, NULL, 'armors\\traveling-gloves-logan.png'),
(117, 'Holy Trousers', '14/16.5/14/14', '15/8/12', '15/13/0', 0, 350, 2, 4, NULL, 'armors\\holy-trousers.png'),
(118, 'Pharis''s Hat', '7/7.4/7/7', '5/7/6', '6/5/0', 0, 250, 1.2, 1, NULL, 'armors\\pharis-s-hat.png'),
(119, 'Leather Armor', '24/25.4/24/24', '20/12/23', '21/20/0', 0, 250, 4.7, 2, NULL, 'armors\\leather-armor.png'),
(120, 'Leather Gloves', '12/12.7/12/12', '12/6/13', '13/12/0', 0, 250, 2.8, 3, NULL, 'armors\\leather-gloves.png'),
(121, 'Leather Boots', '12/12.7/12/12', '12/6/13', '13/12/0', 0, 250, 2.8, 4, NULL, 'armors\\leather-boots.png'),
(122, 'Iron Helm', '14/14/14/13.7', '10/10/9', '12/8/2', 8, 350, 4.5, 1, NULL, 'armors\\iron-helm.png'),
(123, 'Armor of the Sun', '35/35/35/34.3', '21/21/19', '23/16/10', 16, 350, 9, 2, NULL, 'armors\\armor-of-the-sun.png'),
(124, 'Iron Bracelet', '17/17/17/16.7', '10/10/9', '11/7/2', 7, 350, 4.3, 3, NULL, 'armors\\iron-bracelet.png'),
(125, 'Iron Leggings', '21/21/21/20.6', '12/12/11', '14/9/2', 9, 350, 5.3, 4, NULL, 'armors\\iron-leggings.png'),
(126, 'Knight Helm', '14/13.3/16.2/13.7', '6/8/5', '9/6/0', 8, 400, 4.2, 1, NULL, 'armors\\knight-helm.png'),
(127, 'Knight Armor', '37/35.1/42.9/36.3', '16/18/13', '23/16/0', 20, 400, 10.9, 2, NULL, 'armors\\knight-armor.png'),
(128, 'Knight Gauntlets', '17/16.2/19.7/16.7', '7/8/4', '8/5/0', 6, 400, 3.5, 3, NULL, 'armors\\knight-gauntlets.png'),
(129, 'Knight Leggings', '22/20.9/25.5/21.6', '10/11/8', '14/9/0', 12, 400, 6.4, 4, NULL, 'armors\\knight-leggings.png'),
(130, 'Porcelain Mask', '13/13/13.6/14.3', '10/12/8', '11/19/11', 3, 250, 2.5, 1, NULL, 'armors\\porcelain-mask.png'),
(131, 'Lord''s Blade Robe', '34/34/35.7/37.4', '26/32/20', '28/49/25', 8, 250, 6.4, 2, NULL, 'armors\\lord-s-blade-robe.png'),
(132, 'Lord''s Blade Gloves', '15/15/15.7/16.7', '11/14/9', '12/22/11', 3, 250, 2.8, 3, NULL, 'armors\\lords-blade-gloves.png'),
(133, 'Lord''s Blade Waistcloth', '27/27/28.3/29.7', '20/25/16', '22/38/20', 6, 250, 5, 4, NULL, 'armors\\lord-s-blade-waistcloth.png'),
(134, 'Maiden Hood', '7/8.2/7/7', '8/5/6', '9/7/3', 0, 150, 0.8, 1, NULL, 'armors\\maiden-hood.png'),
(135, 'Maiden Robe', '19/22.2/19/19', '22/13/17', '23/18/8', 0, 150, 2, 2, NULL, 'armors\\maiden-robe.png'),
(136, 'Maiden Gloves', '11/12.9/11/11', '13/8/10', '14/10/5', 0, 150, 1.2, 3, NULL, 'armors\\maiden-gloves.png'),
(137, 'Maiden Skirt', '14/16.4/14/14', '27/16/21', '29/22/10', 0, 150, 2.5, 4, NULL, 'armors\\maiden-skirt.png'),
(138, 'Crown of the Dark Sun', '12/12/12/12', '12/6/6', '9/9/12', 0, 300, 3, 1, 'Boosts spell damage by 10%', 'armors\\crown-of-the-dark-sun.png'),
(139, 'Moonlight Robe', '20/20/20/20', '31/17/17', '23/23/31', 0, 80, 3.1, 2, NULL, 'armors\\moonlight-robe.png'),
(140, 'Moonlight Gloves', '3/3/3/3', '5/3/3', '4/4/5', 0, 80, 0.5, 3, NULL, 'armors\\moonlight-gloves.png'),
(141, 'Moonlight Waistcloth', '12/12/12/12', '18/10/10', '14/14/18', 0, 80, 1.8, 4, NULL, 'armors\\moonlight-waistcloth.png'),
(142, 'Ornstein''s Helm', '32/30.4/36.2/32', '16/22/18', '18/8/8', 9, 700, 5.5, 1, NULL, 'armors\\ornstein-s-helm.png'),
(143, 'Ornstein''s Armor', '70/66.5/79.1/70', '36/46/40', '38/18/18', 19, 700, 12, 2, NULL, 'armors\\ornstein-s-armor.png'),
(144, 'Ornstein''s Gauntlets', '29/27.6/32.8/29', '12/16/14', '12/6/6', 6, 700, 4, 3, NULL, 'armors\\ornsteins-gauntlets.png'),
(145, 'Ornstein''s Leggings', '40/38/45.2/40', '20/28/24', '22/12/12', 11, 700, 7, 4, NULL, 'armors\\ornstein-s-leggings.png'),
(146, 'Painting Guardian Hood', '3.0/3.6/3.0/3.0', '31.0/11.0/8.0', '12.0/30.0/6.0', 0, 150, 0.6, 1, NULL, 'armors\\painting-guardian-hood.png'),
(147, 'Painting Guardian Robe', '9.0/10.8/9.0/9.0', '34.0/29.0/21.0', '32.0/78.0/16.0', 0, 150, 1.6, 2, NULL, 'armors\\painting-guardian-robe.png'),
(148, 'Painting Guardian Gloves', '6.0/7.2/6.0/6.0', '22.0/17.0/12.0', '18.0/46.0/10.0', 0, 150, 0.9, 3, NULL, 'armors\\painting-guardian-gloves.png'),
(149, 'Painting Guardian Waistcloth', '22.0/26.4/22.0/22.0', '30.0/22.0/21.0', '21.0/51.0/10.0', 0, 150, 4, 4, NULL, 'armors\\painting-guardian-waistcloth.png'),
(150, 'Paladin Helm', '22/20.9/25.3/22', '12/13/7', '13/9/22', 8, 500, 5, 1, NULL, 'armors\\paladin-helm.png'),
(151, 'Paladin Armor', '59/56.1/67.9/59', '31/37/19', '34/24/57', 20, 500, 12.9, 2, NULL, 'armors\\paladin-armor.png'),
(152, 'Paladin Gauntlets', '35/33.3/40.3/35', '19/21/12', '21/13/34', 12, 500, 7.6, 3, NULL, 'armors\\paladin-gauntlets.png'),
(153, 'Paladin Leggings', '35/33.3/40.3/35', '19/21/12', '21/13/34', 12, 500, 7.6, 4, NULL, 'armors\\paladin-leggings.png'),
(154, 'Tattered Cloth Hood', '8.0/8.9/8.0/8.0', '9/12/6', '9/23/1', 0, 400, 1.1, 1, NULL, 'armors\\tattered-cloth-hood.png'),
(155, 'Tattered Cloth Robe', '21.0/23.3/21.0/21.0', '23/30/17', '23/59/2', 0, 400, 2.7, 2, NULL, 'armors\\tattered-cloth-robe.png'),
(156, 'Tattered Cloth Manchette', '12.0/13.3/12.0/12.0', '14/18/10', '14/35/1', 0, 400, 1.6, 3, NULL, 'armors\\tattered-cloth-manchette.png'),
(157, 'Heavy Boots', '12.0/13.3/12.0/12.0', '14/18/10', '14/35/1', 0, 400, 1.6, 4, NULL, 'armors\\heavy-boots.png'),
(158, 'Helm of Artorias', '18/16.2/20.7/18.9', '9/19/9', '9/9/9', 6, 600, 4.2, 1, NULL, 'armors\\helm-of-artorias.png'),
(159, 'Armor of Artorias', '42/37.8/48.3/44.1', '22/46/22', '22/22/20', 15, 600, 10.5, 2, NULL, 'armors\\armor-of-artorias.png'),
(160, 'Gauntlets Of Artorias', '20/18/23/21', '10/21/10', '10/10/9', 7, 600, 4.6, 3, NULL, 'armors\\gauntlets-of-artorias.png'),
(161, 'Leggings of Artorias', '23/20.7/26.4/24.1', '11/24/11', '11/11/10', 9, 600, 5.5, 4, NULL, 'armors\\leggings-of-artorias.png'),
(162, 'Helm of Favor', '18/17.1/20.9/18', '10/11/7', '11/8/8', 8, 500, 4.5, 1, NULL, 'armors\\helm-of-favor.png'),
(163, 'Embraced Armor of Favor', '48/45.6/55.7/48', '23/30/19', '28/22/22', 20, 500, 11.7, 2, NULL, 'armors\\embraced-armor-of-favor.png'),
(164, 'Gauntlets of Favor', '21/19.9/24.4/21', '10/12/8', '11/10/10', 8, 500, 5, 3, NULL, 'armors\\gauntlets-of-favor.png'),
(165, 'Leggings of Favor', '28/26.6/32.5/28', '14/18/11', '15/14/14', 11, 500, 6.9, 4, NULL, 'armors\\leggings-of-favor.png'),
(166, 'Helm of Thorns', '17/16.1/18.5/17', '10/12/8', '10/7/0', 6, 250, 4.1, 1, 'Adds a small amount of damage to your dodge rolls', 'armors\\helm-of-thorns.png'),
(167, 'Armor of Thorns', '45/42.7/49.1/45', '28/33/20', '26/18/0', 16, 250, 10.5, 2, 'Adds a small amount of damage to your dodge rolls', 'armors\\armor-of-thorns.png'),
(168, 'Gauntlets of Thorns', '26/24.7/28.3/26', '16/18/12', '16/10/0', 9, 250, 6.2, 3, 'Adds a small amount of damage to your dodge rolls', 'armors\\gauntlets-of-thorns.png'),
(169, 'Leggings of Thorns', '26/24.7/28.3/26', '16/18/12', '16/10/0', 9, 250, 6.2, 4, 'Adds a small amount of damage to your dodge rolls', 'armors\\leggings-of-thorns.png'),
(170, 'Six-Eyed Helm of the Channelers', '20/19.2/22.8/20', '18/17/13', '15/13/0', 5, 300, 3.9, 1, NULL, 'armors\\six-eyed-helm-of-the-channelers.png'),
(171, 'Robe of the Channelers', '53/50.9/60.4/53', '45/45/35', '38/33/0', 12, 300, 10.1, 2, NULL, 'armors\\robe-of-the-channelers.png'),
(172, 'Gauntlets of the Channelers', '17/16.3/19.4/17', '13/13/10', '0/0/0', 3, 300, 3, 3, NULL, 'armors\\gauntlets-of-the-channelers.png'),
(173, 'Waistcloth of the Channelers', '32/30.7/36.5/32', '27/27/20', '23/20/0', 7, 300, 6, 4, NULL, 'armors\\waistcloth-of-the-channelers.png'),
(174, 'Crown of the Great Lord', '16/17.3/18.4/14.7', '16/21/21', '15/8/20', 0, 800, 3, 1, NULL, 'armors\\crown-of-the-great-lord.png'),
(175, 'Robe of the Great Lord', '32/34.6/36.8/29.4', '32/41/41', '30/15/40', 0, 400, 6, 2, NULL, 'armors\\robe-of-the-great-lord.png'),
(176, 'Bracelet of the Great Lord', '15/16.2/17.3/13.8', '15/19/19', '14/7/18', 0, 400, 2.8, 3, NULL, 'armors\\bracelet-of-the-great-lord.png'),
(177, 'Anklet of the Great Lord', '15/16.2/17.3/13.8', '15/19/19', '14/7/18', 0, 400, 2.8, 4, NULL, 'armors\\anklet-of-the-great-lord.png'),
(178, 'Shadow Mask', '9/9.9/9/9', '5/6/6', '15/18/0', 0, 200, 0.9, 1, NULL, 'armors\\shadow-mask.png'),
(179, 'Shadow Garb', '23/25.5/23/23', '12/16/17', '39/47/0', 0, 200, 2.3, 2, NULL, 'armors\\shadow-garb.png'),
(180, 'Shadow Gauntlets', '13/14.3/13/13', '7/9/10', '23/28/0', 0, 200, 1.4, 3, NULL, 'armors\\shadow-gauntlets.png'),
(181, 'Shadow Leggings', '13/14.3/13/13', '7/9/10', '23/28/0', 0, 200, 1.4, 4, NULL, 'armors\\shadow-leggings.png'),
(182, 'Silver Knight Helm', '21/19.7/24.1/20.6', '10/11/14', '9/5/1', 8, 600, 4.8, 1, NULL, 'armors\\silver-knight-helm.png'),
(183, 'Silver Knight Armor', '52/48.9/59.8/51', '26/29/34', '24/12/2', 19, 600, 12, 2, NULL, 'armors\\silver-knight-armor.png'),
(184, 'Silver Knight Gauntlets', '25/23.5/28.7/24.5', '12/14/16', '11/6/1', 9, 600, 5.5, 3, NULL, 'armors\\silver-knight-gauntlets.png'),
(185, 'Silver Knight Leggings', '28/26.3/32.2/27.4', '15/16/19', '14/7/1', 11, 600, 6.5, 4, NULL, 'armors\\silver-knight-leggings.png'),
(186, 'Smough''s Helm', '40/34.8/46/40', '19/26/21', '21/12/5', 14, 700, 6.8, 1, NULL, 'armors\\smough-s-helm.png'),
(187, 'Smough''s Armor', '106/92.2/121.9/106', '52/66/59', '54/28/9', 35, 700, 17.5, 2, NULL, 'armors\\smough-s-armor.png'),
(188, 'Smough''s Gauntlets', '61/53.1/70.2/61', '31/40/33', '33/16/5', 21, 700, 10.4, 3, NULL, 'armors\\smoughs-gauntlets.png'),
(189, 'Smough''s Leggings', '61/53.1/70.2/61', '31/40/33', '33/16/5', 21, 700, 10.4, 4, NULL, 'armors\\smough-s-leggings.png'),
(190, 'Sorcerer Hat', '8/8.6/8.3/8', '10/5/6', '6/5/0', 0, 200, 0.9, 1, NULL, 'armors\\sorcerer-hat.png'),
(191, 'Sorcerer Cloak', '20/21.6/20.8/20', '27/13/17', '16/12/0', 0, 200, 2.3, 2, NULL, 'armors\\sorcerer-cloak.png'),
(192, 'Sorcerer Gauntlets	', '12/13/12.5/12', '16/8/10', '9/7/0', 0, 200, 1.4, 3, NULL, 'armors\\sorcerer-gauntlets.png'),
(193, 'Sorcerer Boots', '12/13/12.5/12', '16/8/10', '9/7/0', 0, 200, 1.4, 4, NULL, 'armors\\sorcerer-boots.png'),
(194, 'Steel Helm', '16/15/18.4/16', '8/8/5', '9/6/0', 9, 500, 5.4, 1, NULL, 'armors\\steel-helm.png'),
(195, 'Steel Armor', '42/39.5/48.3/42', '22/21/13', '23/16/0', 23, 500, 14, 2, NULL, 'armors\\steel-armor.png'),
(196, 'Steel Gauntlets', '25/23.5/28.8/25', '13/12/8', '14/9/0', 14, 500, 8.3, 3, NULL, 'armors\\steel-gauntlets.png'),
(197, 'Steel Leggings', '25/23.5/28.8/25', '13/12/8', '14/9/0', 14, 500, 8.3, 4, NULL, 'armors\\steel-leggings.png'),
(198, 'Stone Helm', '35/32.9/40.3/35', '17/21/21', '17/6/0', 15, 800, 6.8, 1, NULL, 'armors\\stone-helm.png'),
(199, 'Stone Armor', '91/85.5/104.7/91', '45/54/54', '45/16/0', 39, 800, 17.6, 2, NULL, 'armors\\stone-armor.png'),
(200, 'Stone Gauntlets', '54/50.8/62.1/54', '27/33/33', '27/10/0', 23, 800, 10.4, 3, NULL, 'armors\\stone-gauntlets.png'),
(201, 'Stone Leggings', '54/50.8/62.1/54', '27/33/33', '27/10/0', 23, 800, 10.4, 4, NULL, 'armors\\stone-leggings.png'),
(202, 'Thief Mask', '9/9.6/9/9', '8/5/6', '9/12/0', 0, 250, 1.2, 1, NULL, 'armors\\thief-mask.png'),
(203, 'Black Leather Armor', '23/24.6/23/23', '20/14/16', '23/31/0', 0, 250, 3.1, 2, NULL, 'armors\\black-leather-armor.png'),
(204, 'Black Leather Gloves', '13/13.9/13/13', '12/8/9', '14/18/0', 0, 250, 1.8, 3, NULL, 'armors\\black-leather-gloves.png'),
(205, 'Black Leather Boots', '12/12.8/12/12', '19/13/15', '23/31/0', 0, 250, 3, 4, NULL, 'armors\\black-leather-boots.png'),
(206, 'Wanderer Hood', '9/9.6/9.6/9', '8/10/9', '8/8/0', 0, 400, 1.4, 1, NULL, 'armors\\wanderer-hood.png'),
(207, 'Wanderer Coat', '23/24.6/24.6/23', '21/26/23', '21/21/0', 0, 400, 3.5, 2, NULL, 'armors\\wanderer-coat.png'),
(208, 'Wanderer Manchette', '14/15/15/14', '12/15/13', '13/13/0', 0, 400, 2.1, 3, NULL, 'armors\\wanderer-manchette.png'),
(209, 'Wanderer Boots', '14/15/15/14', '12/15/13', '13/13/0', 0, 400, 2.1, 4, NULL, 'armors\\wanderer-boots.png'),
(210, 'Standard Helm', '14/8/16/14', '8/8/3', '9/8/0', 5, 250, 3.5, 1, NULL, 'armors\\standard-helm.png'),
(211, 'Hard Leather Armor', '26/27.6/26/26', '20/13/23', '23/20/0', 0, 250, 5.9, 2, NULL, 'armors\\hard-leather-armor.png'),
(212, 'Hard Leather Gauntlets', '13/13.8/13/13', '12/7/13', '14/12/0', 0, 250, 3.5, 3, NULL, 'armors\\hard-leather-gauntlets.png'),
(213, 'Hard Leather Boots', '13/13.8/13/13', '12/7/13', '14/12/0', 0, 250, 3.5, 4, NULL, 'armors\\hard-leather-boots.png'),
(214, 'Witch Hat', '9/10/9/9', '12/6/7', '10/10/11', 0, 250, 1.1, 1, NULL, 'armors\\witch-hat.png'),
(215, 'Witch Cloak', '33/36.6/33/33', '43/20/26', '36/36/12', 0, 250, 4, 2, NULL, 'armors\\witch-cloak.png'),
(216, 'Witch Gloves', '14/15.5/14/14', '18/9/11', '16/16/6', 0, 250, 1.7, 3, NULL, 'armors\\witch-gloves.png'),
(217, 'Witch Skirt', '17/18.9/17/17', '27/12/17', '23/28/8', 0, 250, 2.5, 4, NULL, 'armors\\witch-skirt.png'),
(218, 'Xanthous Crown', '18/27.7/18/15.3', '15/3/8', '8/11/35', 0, 400, 5, 1, NULL, 'armors\\xanthous-crown.png'),
(219, 'Xanthous Overcoat', '32/35.8/32/29.1', '37/7/23', '22/29/0', 0, 400, 3.9, 2, NULL, 'armors\\xanthous-overcoat.png'),
(220, 'Xanthous Gloves', '18/20.2/18/16.4', '22/4/14', '12/18/0', 0, 400, 2.3, 3, NULL, 'armors\\xanthous-gloves.png'),
(221, 'Xanthous Waistcloth', '32/35.8/32/29.1', '39/7/23', '22/30/0', 0, 400, 4, 4, NULL, 'armors\\xanthous-waistcloth.png'),
(222, 'Bloated Head', '17/17/17/17', '17/9/11', '16/32/10', 0, 150, 2.5, 1, NULL, 'armors\\bloated-head.png'),
(223, 'Bloated Sorcerer Head', '14/14/14/14', '22/9/13', '8/38/15', 0, 150, 2.2, 1, NULL, 'armors\\bloated-sorcerer-head.png'),
(224, 'Fang Boar Helm', '26/23.4/31.2/26', '5/4/4', '13/8/0', 12, 600, 8, 1, NULL, 'armors\\fang-boar-helm.png'),
(225, 'Gargoyle Helm', '15/12.3/19.1/13.7', '15/15/15', '22/19/0', 8, 500, 3.5, 1, NULL, 'armors\\gargoyle-helm.png'),
(226, 'Mask of the Child', '6/6/6/6', '10/8/10', '6/0/0', 0, 200, 1.2, 1, 'Increases stamina regeneration by about 10 per second', 'armors\\mask-of-the-child.png'),
(227, 'Mask of the Father', '6/6/6/6', '10/6/8', '6/0/0', 0, 200, 1.2, 1, 'Raises Maximum Equipment Load by 5%', 'armors\\mask-of-the-father.png'),
(228, 'Mask of the Mother', '6/6/6/6', '12/6/8', '10/0/0', 0, 200, 1.2, 1, 'Raises maximum HP by 10%', 'armors\\mask-of-the-mother.png'),
(229, 'Royal Helm', '16.0/13.9/16.0/16.0', '10.0/10.0/6.0', '16.0/12.0/0.0', 8, 500, 4.5, 1, NULL, 'armors\\royal-helm.png'),
(230, 'Sack', '6/10/6/5', '6/8/4', '12/10/0', 0, 150, 0.6, 1, NULL, 'armors\\sack.png'),
(231, 'Sunlight Maggot', '6/6/6/6', '5/24/13', '0/0/0', 0, 80, 1.4, 1, 'Wearing this helmet gives the player a permanent Cast Light effect until removed.', 'armors\\sunlight-maggot.png'),
(232, 'Symbol of Avarice', '21/10.9/21/21', '8/2/2', '10/0/0', 15, 0, 10, 1, 'Drains health at the rate of 5 HP/Second. Adds +200 to Item Discovery and increases soul drop by 20%.', 'armors\\symbol-of-avarice.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `armor_slots`
--

CREATE TABLE IF NOT EXISTS `armor_slots` (
  `id` int(11) NOT NULL,
  `slot_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `armor_slots`
--

INSERT INTO `armor_slots` (`id`, `slot_name`) VALUES
(1, 'Head'),
(2, 'Chest'),
(3, 'Hands'),
(4, 'Legs');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `position` int(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `position`) VALUES
(1, 'Frontpage', '/', 1),
(3, 'Profile', '/profile', 9),
(4, 'Weapons', '/weapons', 3),
(5, 'Shields', '/shields', 4),
(6, 'Spell Tools', '/spell_tools', 5),
(7, 'Armor', '/armor', 7),
(8, 'Rings', '/rings', 8),
(9, 'Spells', '/spells', 6),
(10, 'Create new item', '/new', 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `rank`
--

INSERT INTO `rank` (`id`, `name`, `desc`) VALUES
(1, 'Admin', 'Full accsess'),
(2, 'User', 'Can edit own creations');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `rings`
--

CREATE TABLE IF NOT EXISTS `rings` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `effect` text NOT NULL,
  `picture` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `rings`
--

INSERT INTO `rings` (`id`, `name`, `effect`, `picture`) VALUES
(1, 'Bellowing Dragoncrest Ring', 'Increases sorcery and pyromancy damage by 20%~24% depending on the spell.', 'rings/1561232498616_bellowing-dragoncrest-ring.png'),
(2, 'Bloodbite Ring', 'Boosts natural bleed resistance by 400%.', 'rings\\bloodbite-ring.png'),
(3, 'Blue Tearstone Ring', 'Boosts defense by 50% when health is under 20%.', 'rings\\blue-tearstone-ring.png'),
(4, 'Calamity Ring', 'Doubles damage taken by the wearer.', 'rings\\calamity-ring.png'),
(5, 'Cat Covenant Ring', 'When wearing this ring Alvina may summon you anytime from almost any place in your world into the world of another player to help her fend off human invaders in the Darkroot Garden.', 'rings\\cat-covenant-ring.png'),
(6, 'Cloranthy Ring', 'Increases rate of stamina regeneration by about 20 per second (~45% more than base) when equipped.', 'rings\\cloranthy-ring.png'),
(7, 'Covenant of Artorias', 'Traverse The Abyss, allowing you to fight The Four Kings.', 'rings\\covenant-of-artorias.png'),
(8, 'Covetous Gold Serpent Ring', 'Boosts wearer''s item discovery by 200.', 'rings\\covetous-gold-serpent-ring.png'),
(9, 'Covetous Silver Serpent Ring', 'Increases Souls from fallen enemies by 20%.', 'rings\\covetous-silver-serpent-ring.png'),
(10, 'Cursebite Ring', 'Increases Curse Resistance granted by player stats and Humanity by 400%.', 'rings\\cursebite-ring.png'),
(11, 'Darkmoon Blade Covenant Ring', 'Similar to the Cat Covenant Ring, equipping this ring allows you to be summoned to invade other players in darkened Anor Londo. Its use is restricted to members of the Blade of the Darkmoon covenant.', 'rings\\darkmoon-blade-covenant-ring.png'),
(12, 'Darkmoon Seance Ring', 'Grants additional attunement slot, similar to the White Seance Ring. Also removes the illusory wall (in the shape of Gwyn) at the bottom of the rotating bridge in Anor Londo, allowing you to join Blade of the Darkmoon without needing to kill Gwynevere. See the Covenant''s page for more details.', 'rings\\darkmoon-seance-ring.png'),
(13, 'Dark Wood Grain Ring', 'Changes the quick roll (0% to 25% Equip Burden) animation to a cartwheel that has several properties. Gives more invulnerability frames (14 frames, compared to normal 12), faster recovery (8 frames, compared to normal 12) and while flipping across lava you take (roughly) half as much damage from lava as you would when you would run.', 'rings\\dark-wood-grain-ring.png'),
(14, 'Dusk Crown Ring', 'Grants 50% more castings for Miracles, Sorceries and Pyromancies, but cuts Max HP in half.', 'rings\\dusk-crown-ring.png'),
(15, 'East Wood Grain Ring', 'Slows loss of weapon durability by half.', 'rings\\east-wood-grain-ring.png'),
(16, 'Flame Stoneplate Ring', 'Increases Flame Defense by 50.', 'rings\\flame-stoneplate-ring.png'),
(17, 'Havel''s Ring', 'Wearing the ring raises maximum equipment burden by 50%.', 'rings\\havel-s-ring.png'),
(18, 'Hawk Ring', 'Boosts bow and crossbow range by 50%. ', 'rings\\hawk-ring.png'),
(19, 'Hornet Ring', 'Boosts critical attacks by 30%.', 'rings\\hornet-ring.png'),
(20, 'Leo Ring', 'Further boosts Counter damage by 40%, for a total of ~67% additional damage.', 'rings\\leo-ring.png'),
(21, 'Lingering Dragoncrest Ring', 'Extends the duration of sorceries and pyromancies cast while this ring is equipped by 50%.', 'rings\\lingering-dragoncrest-ring.png'),
(22, 'Old Witch''s Ring', 'Allows the player to understand Quelaag''s Sister when equipped. It doesn''t have any other gameplay effects.', 'rings\\old-witch-s-ring.png'),
(23, 'Orange Charred Ring', 'Reduces 80% of lava damage. Adds a small amount of Fire damage to kicking attacks and damage to enemies from falling on them, without using a plunging attack.', 'rings\\orange-charred-ring.png'),
(24, 'Poisonbite Ring', 'Boosts poison resistance by 90 points.', 'rings\\poisonbite-ring.png'),
(25, 'Rare Ring of Sacrifice', 'With this ring equipped, the player will not be hollowed, lose any souls or humanity upon death and will not be cursed if a curse was the cause of death. The ring will then break.', 'rings\\rare-ring-of-sacrifice.png'),
(26, 'Red Tearstone Ring', 'Increase the attack power of the player by at least 50% when the player''s health is under 20%. This allegedly applies to every form of offense including spells etc.', 'rings\\red-tearstone-ring.png'),
(27, 'Ring of Favor and Protection', 'Increases max health, max stamina and max equip burden by 20%. Be aware that this ring is destroyed and removed from inventory if ever unequipped.', 'rings\\ring-of-favor-and-protection.png'),
(28, 'Ring of Fog', 'Turns body nearly invisible, reducing enemies'' visual range. Enemies also tend to forget about the character and ''de-aggro'' if the character stays outside of the reduced visual range.', 'rings\\ring-of-fog.png'),
(29, 'Ring of Sacrifice', 'Lose nothing upon death, but Ring breaks. Doesn''t work if you died from Curse.', 'rings\\ring-of-sacrifice.png'),
(30, 'Ring of Steel Protection', 'Raises physical defense against strike, slash, and thrust by 50.', 'rings\\ring-of-steel-protection.png'),
(31, 'Ring of the Evil Eye', 'Heals 30 HP from fallen enemies.', 'rings\\ring-of-the-evil-eye.png'),
(32, 'Ring of the Sun''s Firstborn', 'Increases offensive miracle damage by approximately 25%, depending on the spell.', 'rings\\ring-of-the-sun-princess.png'),
(33, 'Ring of the Sun Princess', 'Acts as a portable miracle resonance sign.', 'rings\\ring-of-the-sun-s-firstborn.png'),
(34, 'Rusted Iron Ring', 'Eliminates the speed penalty imposed by walking through water, swamp, or tar-pits.', 'rings\\rusted-iron-ring.png'),
(35, 'Slumbering Dragoncrest Ring', 'Silences all wearer''s movements.', 'rings\\slumbering-dragoncrest-ring.png'),
(36, 'Speckled Stoneplate Ring', 'Boosts your Magic, Fire, and Lightning defense by 25 each.', 'rings\\speckled-stoneplate-ring.png'),
(37, 'Spell Stoneplate Ring', 'Increases Magic defense by 50.', 'rings\\spell-stoneplate-ring.png'),
(38, 'Thunder Stoneplate Ring', 'Increases Lightning defense by 50.', 'rings\\thunder-stoneplate-ring.png'),
(39, 'Tiny Being''s Ring', 'Increases maximum hit points by 5%.', 'rings\\tiny-being-s-ring.png'),
(40, 'White Seance Ring', 'Grants a single additional Attunement slot, similar to the Darkmoon Seance Ring.', 'rings\\white-seance-ring.png'),
(41, 'Wolf Ring', 'Adds 40 Poise.', 'rings\\wolf-ring.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `shield_size`
--

CREATE TABLE IF NOT EXISTS `shield_size` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `shield_size`
--

INSERT INTO `shield_size` (`id`, `name`) VALUES
(1, 'Small Shield'),
(2, 'Normal Shield'),
(3, 'Large Shield'),
(4, 'Unique Shield'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `spells`
--

CREATE TABLE IF NOT EXISTS `spells` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `effect` text NOT NULL,
  `uses` int(11) NOT NULL,
  `slots` int(11) NOT NULL,
  `spell_type` varchar(45) NOT NULL,
  `faith_need` int(11) DEFAULT NULL,
  `int_need` int(11) DEFAULT NULL,
  `notes` text,
  `picture` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `spells`
--

INSERT INTO `spells` (`id`, `name`, `effect`, `uses`, `slots`, `spell_type`, `faith_need`, `int_need`, `notes`, `picture`) VALUES
(1, 'Aural Decoy', 'Fires a projectile which creates a sound wherever it collides with a surface. This attracts the attention of enemies.', 20, 1, '1', 0, 10, NULL, 'spells\\aural-decoy.png'),
(2, 'Cast Light', 'Creates a small orb of light over the player''s head that amplifies player''s light distance by approximately four times.', 3, 1, '1', 0, 14, NULL, 'spells\\cast-light.png'),
(3, 'Chameleon', 'Depending on current location, transforms the caster into a piece of scenery.', 11, 1, '1', 0, 14, NULL, 'spells\\chameleon.png'),
(4, 'Crystal Magic Weapon', 'Adds magic damage to right hand weapon. Magic damage added is catalyst''s MagAdjust * 1.4', 3, 1, '1', 0, 25, NULL, 'spells\\crystal-magic-weapon.png'),
(5, 'Crystal Soul Spear', 'Fires a large crystal spear projectile. Stronger version of Soul Spear. Magic damage is 3.2 * catalyst''s MagAdjust.', 4, 1, '1', 0, 44, NULL, 'spells\\crystal-soul-spear.png'),
(6, 'Dark Bead', 'This Dark sorcery fires seven projectiles at a 90° spread in front of the caster.', 6, 1, '1', 0, 16, 'The magic damage scales with the INT scaling of the equipped catalyst, and the physical damage scales with the STR and DEX scaling of the equipped catalyst.', 'spells\\dark-bead.png'),
(7, 'Dark Fog', 'This Dark sorcery creates an Area of Effect poison cloud on target. When infected, deals 4 HP/second.', 2, 1, '1', 0, 18, NULL, 'spells\\dark-fog.png'),
(8, 'Dark Orb', 'This spell is the Dark equivalent of Heavy Soul Arrow.', 12, 1, '1', 0, 16, 'The magic damage of dark sorceries scales with the INT scaling of the equipped catalyst, and the physical damage scales with the STR and DEX scaling of the equipped catalyst.', 'spells\\dark-orb.png'),
(9, 'Fall Control', 'Grants buff that removes damage and noise from fall.', 10, 1, '1', 0, 15, 'Does not prevent death from falls that would normally instantly kill the caster', 'spells\\fall-control.png'),
(10, 'Great Heavy Soul Arrow', 'Fires a large, purplish bolt of light at enemies. Stronger version of Heavy Soul Arrow. Magic damage is 2.2 * catalyst''s MagAdjust.', 8, 1, '1', 0, 16, NULL, 'spells\\great-heavy-soul-arrow.png'),
(11, 'Great Magic Weapon', 'Adds magic damage to right hand weapon. Magic damage added is catalyst''s MagAdjust * 1.1.', 3, 1, '1', 0, 15, NULL, 'spells\\great-magic-weapon.png'),
(12, 'Great Soul Arrow', 'Similar to Soul Arrow, fires a purple bolt of light at enemies. Magic damage is 1.3 * catalyst''s MagAdjust.', 20, 1, '1', 0, 14, NULL, 'spells\\great-soul-arrow.png'),
(13, 'Heavy Soul Arrow', 'Fires a large, blue bolt of light at enemies. Slower casting time than Soul Arrow/Great Soul Arrow, but deals higher damage. Magic damage is 1.8 * catalyst''s MagAdjust.', 12, 1, '1', 0, 12, NULL, 'spells\\heavy-soul-arrow.png'),
(14, 'Hidden Body', 'Turns body nearly invisible, reducing enemies'' visual range. Enemies also tend to forget about the character and ''de-aggro'' if the character stays outside of the reduced visual range.', 3, 1, '1', 0, 14, NULL, 'spells\\hidden-body.png'),
(15, 'Hidden Weapon', 'Makes weapon turn invisible. If the weapon has a sheath, the sheath will remain visible.', 3, 1, '1', 0, 14, NULL, 'spells\\hidden-weapon.png'),
(16, 'Homing Crystal Soulmass', 'Creates up to five powerful orbs of light that attack the nearest enemy.', 10, 1, '1', 0, 24, NULL, 'spells\\homing-crystal-soulmass.png'),
(17, 'Homing Soulmass', 'Creates up to five powerful orbs of light that attack the nearest enemy', 10, 1, '1', 0, 18, NULL, 'spells\\homing-soulmass.png'),
(18, 'Hush', 'Silences all caster''s movements.', 6, 1, '1', 0, 15, NULL, 'spells\\hush.png'),
(19, 'Magic Shield', 'Increases stability stat on left hand shield by 20% and cuts Magic damage taken through blocking by 70%.', 5, 1, '1', 0, 10, NULL, 'spells\\magic-shield.png'),
(20, 'Magic Weapon', 'Adds magic damage to right hand weapon. Magic damage added is catalyst''s MagAdjust * 0.8.', 5, 1, '1', 0, 10, NULL, 'spells\\magic-weapon.png'),
(21, 'Pursuers', 'This spell is the Dark equivalent of Homing Soulmass. The projectiles are also much slower but home-in very aggressively.', 3, 2, '1', 0, 32, 'The magic damage scales with the INT scaling of the equipped catalyst, and the physical damage scales with the STR and DEX scaling of the equipped catalyst.', 'spells\\pursuers.png'),
(22, 'Remedy', 'Reduces Bleed, Poison, and Toxic build-up. Removes Poison and Toxic status effects.', 4, 1, '1', 0, 16, NULL, 'spells\\remedy.png'),
(23, 'Repair', 'Repairs 150 durability to equipped weapons and armor. This does not repair any unequipped items.', 1, 1, '1', 0, 14, NULL, 'spells\\repair.png'),
(24, 'Resist Curse', 'Reduces curse build-up. Despite what the item description suggests, this spell cannot remove cursed status and using it does not actually cost Humanity.', 4, 1, '1', 0, 16, NULL, 'spells\\resist-curse.png'),
(25, 'Soul Arrow', 'Fires a blue bolt of light at enemies. Magic damage is 0.9 * catalyst''s MagAdjust.', 30, 1, '1', 0, 10, NULL, 'spells\\soul-arrow.png'),
(26, 'Soul Spear', 'Fires a large blue spearlike projectile. The projectile continues to travel through the first target, hitting any behind it. Magic damage is 2.7 * catalyst''s MagAdjust.', 4, 1, '1', 0, 36, NULL, 'spells\\soul-spear.png'),
(27, 'Strong Magic Shield', 'Increases stability on left hand shield by 50% and will negate all damage that is successfully blocked, often resulting in both no Stamina being consumed and no damage being taken.', 3, 1, '1', 0, 15, NULL, 'spells\\strong-magic-shield.png'),
(28, 'White Dragon Breath', 'Fires laser at 45° angle. On contact with the ground, will spawn crystal spikes that follow the terrain. The crystal spikes will travel up walls or trees, across ceilings, and down cliffs, though not very far.', 20, 1, '1', 0, 50, NULL, 'spells\\white-dragon-breath.png'),
(29, 'Bountiful Sunlight', 'Grants HP regeneration at the rate of 10 HP/Second to self and all party members in range.', 2, 2, '2', 36, 0, NULL, 'spells\\bountiful-sunlight.png'),
(30, 'Darkmoon Blade', 'Adds magic damage to right hand weapon. Magic damage scales with talisman''s MagAdjust and Blade of the Darkmoon''s covenant level.', 1, 1, '2', 30, 0, 'Requires being a member of the Blade of the Darkmoon covenant to be able to cast it. It can still be equipped by those who are not members of the covenant but they will not be able to use it.', 'spells\\darkmoon-blade.png'),
(31, 'Emit Force', 'Fires an orb of force that creates a shockwave on impact that causes damage, and can knock down or stun enemies.', 6, 1, '2', 18, 0, NULL, 'spells\\emit-force.png'),
(32, 'Force', 'Creates a non-damaging shockwave that can stun or knock down enemies.', 21, 1, '2', 12, 0, NULL, 'spells\\force.png'),
(33, 'Gravelord Greatsword Dance', 'Several swords will pierce the ground impaling enemies in the area. It is essentially, a more powerful version of Gravelord Sword Dance: the area of effect is expanded with increased damage. Deals 3.1*MagAdjust magic damage, plus 0.1*MagAdjust per Gravelord Servant rank (3.4*MagAdjust at +3).', 40, 1, '2', 0, 0, 'Each casting consumes 20 uses, meaning it can only be cast twice.', 'spells\\gravelord-greatsword-dance.png'),
(34, 'Gravelord Sword Dance', 'Several swords will pierce the ground impaling enemies in the area. Deals 2.5*MagAdjust magic damage, plus 0.1*MagAdjust per Gravelord Servant rank (2.8*MagAdjust at +3).', 40, 1, '2', 0, 0, 'Each casting consumes 20 uses, meaning it can only be cast twice.', 'spells\\gravelord-sword-dance.png'),
(35, 'Great Heal Excerpt', 'The middle variant of heal miracles. Heals like Great Heal, but only one use. Amount healed is 8 times the Talisman''s MagAdjust', 1, 1, '2', 14, 0, NULL, 'spells\\great-heal-excerpt.png'),
(36, 'Great Heal', 'The strongest variant of the heal miracles. Amount healed is 8 times the Talisman''s MagAdjust', 3, 1, '2', 24, 0, NULL, 'spells\\great-heal.png'),
(37, 'Great Lightning Spear', 'Deals 3 * talisman''s MagAdjust lightning damage.', 10, 1, '2', 30, 0, NULL, 'spells\\great-lightning-spear.png'),
(38, 'Great Magic Barrier', 'Stronger version of Magic Barrier. Reduces magic damage by 85-95% for 40 seconds.', 2, 1, '2', 24, 0, NULL, 'spells\\great-magic-barrier.png'),
(39, 'Heal', 'The weakest variant of heal miracles. Amount healed is 3 times the Talisman''s MagAdjust.', 5, 1, '2', 12, 0, NULL, 'spells\\heal.png'),
(40, 'Homeward', 'Spell form of the Homeward Bone item. Returns to the last bonfire rested at and restores HP, charges of attuned spells, and respawns all enemies.', 1, 1, '2', 18, 0, NULL, 'spells\\homeward.png'),
(41, 'Karmic Justice', 'When cast, it creates a visible buff effect on the player that lasts for 60 seconds. If the player is hit 5 times in a row while Karmic Justice is active, it will trigger and create a large, highly damaging shockwave similar to Wrath of the Gods. Effect lasts 60 seconds.', 4, 1, '2', 20, 0, NULL, 'spells\\karmic-justice.png'),
(42, 'Lightning Spear', 'Throws a javelin of lightning at the enemy dealing 2.7 * talisman''s MagAdjust.', 10, 1, '2', 20, 0, NULL, 'spells\\lightning-spear.png'),
(43, 'Magic Barrier', 'Covers body in magic damage-reducing buff. Reduces magic damage by 45-50%. Lasts 40 seconds.', 4, 1, '2', 14, 0, NULL, 'spells\\magic-barrier.png'),
(44, 'Replenishment', 'Grants HP regeneration at the rate of 10 HP/seconds for 60 seconds.', 2, 1, '2', 16, 0, NULL, 'spells\\replenishment.png'),
(45, 'Seek Guidance', 'Display more online messages written using the Orange Guidance Soapstone. Also shows hidden messages written by the developer. These messages have the Knight of Astora icon and may contain phrases that cannot be used by players. Lasts 30 seconds.', 5, 1, '2', 12, 0, NULL, 'spells\\seek-guidance.png'),
(46, 'Soothing Sunlight', 'Special variant of heal miracles. Heals 6 times the Talisman''s MagAdjust for self and all party members in range.', 3, 2, '2', 48, 0, NULL, 'spells\\soothing-sunlight.png'),
(47, 'Sunlight Blade', 'Adds lightning damage to right hand weapon. Lightning damage added is talisman''s MagAdjust * 1.8.', 1, 1, '2', 30, 0, NULL, 'spells\\sunlight-blade.png'),
(48, 'Sunlight Spear', 'Hurl a sunlight spear that deals 3.7 * talisman''s MagAdjust lightning damage.', 5, 2, '2', 50, 0, NULL, 'spells\\sunlight-spear.png'),
(49, 'Tranquil Walk of Peace', 'Creates an aura that slows the movement speed of nearby enemies. Against other player, the aura adds 50% encumberance.', 5, 1, '2', 18, 0, NULL, 'spells\\tranquil-walk-of-peace.png'),
(50, 'Vow of Silence', 'Creates an aura that prohibits all spell casting, the caster and allied Phantoms included.', 2, 2, '2', 30, 0, NULL, 'spells\\vow-of-silence.png'),
(51, 'Wrath of the Gods', 'Create powerful damaging shockwave. Has neither cast nor recast time.', 3, 1, '2', 28, 0, NULL, 'spells\\wrath-of-the-gods.png'),
(52, 'Acid Surge', 'Breathe forth an acidic cloud that damages the weapons and armors of an enemy.', 2, 1, '3', 0, 0, NULL, 'spells\\acid-surge.png'),
(53, 'Black Flame', 'Deals 1.6*MagAdjust Physical + 2.0*MagAdjust Fire damage.', 8, 1, '3', 0, 0, 'This pyromancy is the Dark equivalent of Great Combustion.', 'spells\\black-flame.png'),
(54, 'Chaos Fire Whip', 'Chaos Fire Whip deals the same damage as Fire Whip: 2.33 * pyromancy flame''s MagAdjust per hit (hits 2 times). Lava patches on all Chaos pyromancies deal 1.8 * pyromancy flame''s MagAdjust.', 80, 2, '3', 0, 0, 'The same as Fire Whip, but the "fireballs" will leave a lava patch after hitting a surface.', 'spells\\chaos-fire-whip.png'),
(55, 'Chaos Storm', 'Each pillar deals 3.6 * pyromancy flame''s MagAdjust. Lava patches on all Chaos pyromancies deal 1.0 * pyromancy flame''s MagAdjust.', 20, 2, '3', 0, 0, 'Acts similar to Firestorm, but each flame pillar leaves a patch of lava.', 'spells\\chaos-storm.png'),
(56, 'Combustion', 'Summon forth a burst of flame from one''s hand. Short ranged, but fast execution. Fire damage is 2.0 * MagAdjust.', 16, 1, '3', 0, 0, NULL, 'spells\\combustion.png'),
(57, 'Fire Orb', 'Similar to Fireball, but stronger and wider area of effect. Fire damage is about 2.2 * pyromancy flame''s MagAdjust.', 6, 1, '3', 0, 0, NULL, 'spells\\fire-orb.png'),
(58, 'Fire Surge', 'Shoots a plume of flame per charge, if the attack button is held it will shoot streams of fire much like a flamethrower, while consuming charges. Fire damage is 0.38 * pyromancy flame''s MagAdjust per pulse.', 80, 1, '3', 0, 0, 'Interestingly, can be used while in Chameleon without cancelling the effect.', 'spells\\fire-surge.png'),
(59, 'Fire Tempest', 'Stronger version of Firestorm - fire damage is 3.9 times the MagAdjust of the Pyromancy Flame per flame pillar.', 20, 1, '3', 0, 0, NULL, 'spells\\fire-tempest.png'),
(60, 'Fire Whip', 'Short ranged sweep with a "fire whip". It''s actually small fireballs that chains, looking like a fire whip. Fire damage of this pyromancy is about - 2.33 * pyromancy flame''s MagAdjust per hit (hits 2 times).', 80, 1, '3', 0, 0, NULL, 'spells\\fire-whip.png'),
(61, 'Fireball', 'Throws a ball of flame which creates a small explosion upon impact, able to damage tightly packed enemies. Fire damage is 1.8 * pyromancy flame''s MagAdjust.', 8, 1, '3', 0, 0, NULL, 'spells\\fireball.png'),
(62, 'Firestorm', 'Generates pillars of flame at random locations around the player. These flame pillars have a knockback effect on enemies who are hit. Fire damage is 3.2 times the MagAdjust of the Pyromancy Flame per flame pillar.', 20, 1, '3', 0, 0, NULL, 'spells\\firestorm.png'),
(63, 'Flash Sweat', 'Coats body with water. Reduces fire damage by 45% for 1 minute.', 3, 1, '3', 0, 0, NULL, 'spells\\flash-sweat.png'),
(64, 'Great Chaos Fireball', 'Same damage and property as Great Fireball (2.7 * pyromancy flame''s MagAdjust), but leaves lava patches on the surface the explosion touches. Lava patches on all Chaos pyromancies deal 1.8 * pyromancy flame''s MagAdjust.', 4, 2, '3', 0, 0, NULL, 'spells\\great-chaos-fireball.png'),
(65, 'Great Combustion', 'Similar to Combustion, but higher damage and wider area of effect. Fire damage is 3.0 * MagAdjust.', 8, 1, '3', 0, 0, NULL, 'spells\\great-combustion.png'),
(66, 'Great Fireball', 'Similar to Fireball and Fire Orb, but with even greater damage and wider area of effect. Fire damage is 2.7 * pyromancy flame''s MagAdjust.', 4, 1, '3', 0, 0, NULL, 'spells\\great-fireball.png'),
(67, 'Iron Flesh', 'Turns caster''s body to that of solid metal,cutting physical damage by 40% and raising Lightning damage by 45% with no effect on fire defense. Gains Heavy Deflection effect and disables/reduces running and dodging. Lasts 30 seconds.', 3, 1, '3', 0, 0, NULL, 'spells\\iron-flesh.png'),
(68, 'Poison Mist', 'Breathe out a cloud of mist that gives Poison status to enemies who touch it. After infected, does 3 HP/second damage regardless of Pyromancy Flame level.', 3, 1, '3', 0, 0, NULL, 'spells\\poison-mist.png'),
(69, 'Power Within', 'Increases all damage by 40% and stamina regeneration, but constantly drains HP at the rate of 1% of max HP per second, rounded down. For example, a player with 573 health will take 5 damage per second while Power Within is active. This means that the HP drain alone cannot kill you unless your maximum health is divisible by 100.', 1, 1, '3', 0, 0, NULL, 'spells\\power-within.png'),
(70, 'Toxic Mist', 'Breathe out a cloud of mist that builds up Toxic to enemies who touch it. The toxin''s HP loss rate is 6 HP/seconds.', 1, 1, '3', 0, 0, NULL, 'spells\\toxic-mist.png'),
(71, 'Undead Rapport', 'Turns certain Undead enemies into allies. The charmed Undead''s eyes will glow when under the effect of Undead Rapport.', 7, 1, '3', 0, 0, NULL, 'spells\\undead-rapport.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `spell_tool`
--

CREATE TABLE IF NOT EXISTS `spell_tool` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `spell_tool`
--

INSERT INTO `spell_tool` (`id`, `name`) VALUES
(1, 'Catalyst'),
(2, 'Talisman'),
(3, 'Pyromancy Flame');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `spell_types`
--

CREATE TABLE IF NOT EXISTS `spell_types` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `spell_types`
--

INSERT INTO `spell_types` (`id`, `name`) VALUES
(1, 'Sorcery'),
(2, 'Miracle'),
(3, 'Pyromancy');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(72) NOT NULL,
  `picture` varchar(64) DEFAULT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `picture`, `rank_id`) VALUES
(2, 'admin', '$2a$10$q/G48dB82FydOhKxuyPfNOP2g439KYHWFEqgXI7vRM238CW78TKda', NULL, 1),
(3, 'testuser', '$2a$10$f4tIrLJiy.uX1veWED2iye6.pTDCN08LEuGyqKQsYgegiFNndfiIa', NULL, 2),
(7, 'user1', '$2a$10$sS6crPTgPQt8.pwZBAj/yO8hFURyK1w718hOFKi1oHSQD/jRYa7wq', NULL, 2),
(8, 'avater26', '$2a$10$Zo14j9ZEug/.PSEVaFvyYuY29TebMMLtihPYrpk0pWAUDQ.4VlG0m', NULL, 2),
(9, 'testusernew', '1234123', NULL, 1),
(10, 'testing single', 'nice', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `weapons`
--

CREATE TABLE IF NOT EXISTS `weapons` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `mag_adjust` int(11) DEFAULT NULL,
  `damage` varchar(45) NOT NULL,
  `aux_effect` varchar(45) DEFAULT NULL,
  `damage_reduction` varchar(45) DEFAULT NULL,
  `critical` int(11) DEFAULT NULL,
  `durability` int(11) NOT NULL,
  `range` int(11) DEFAULT NULL,
  `stability` int(11) DEFAULT NULL,
  `weight` float NOT NULL,
  `stats_req` varchar(45) NOT NULL,
  `stats_scale` varchar(45) NOT NULL,
  `weapon_type` int(11) DEFAULT NULL,
  `shield_size` int(11) DEFAULT NULL,
  `spell_tool_type` int(11) DEFAULT NULL,
  `notes` longtext,
  `picture` varchar(108) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `weapons`
--

INSERT INTO `weapons` (`id`, `name`, `mag_adjust`, `damage`, `aux_effect`, `damage_reduction`, `critical`, `durability`, `range`, `stability`, `weight`, `stats_req`, `stats_scale`, `weapon_type`, `shield_size`, `spell_tool_type`, `notes`, `picture`) VALUES
(1, 'Caestus', NULL, '66/0/0/0', '0/0/0/0', '0/0/0/0', 100, 300, 0, 0, 0.5, '5/8/0/0', 'C/C/-/-', 1, NULL, NULL, NULL, 'weapons/caestus.png'),
(2, 'Claw', NULL, '72/0/0/0', '300/-/-/-', '0/0/0/0', 100, 150, NULL, 0, 1, '6/14/0/0', 'E/B/-/-', 1, NULL, NULL, NULL, 'weapons/claw.png'),
(3, 'Dark Hand', NULL, '200/0/0/0', '-/-/-/130', '80/80/80/80', 100, 999, NULL, 30, 0, '0/0/0/0', '-/-/-/-', 1, 5, NULL, 'When equipped in the left hand slot it functions as a shield. When equipped in the right hand slot, the strong attack will do a grab attack, similar to the Darkwraith enemy, that can absorb (soft) Humanity from invading online players and some NPCs.', 'weapons/dark-hand.png'),
(4, 'Dragon Bone Fist', NULL, '95/0/0/0', NULL, '0/0/0/0', 100, 999, NULL, 0, 8, '20/0/0/0', 'A/-/-/-', 1, NULL, NULL, 'Cannot be two-handed. ', 'weapons/dragon-bone-fist.png'),
(5, 'Blacksmith Giant Hammer', NULL, '120/0/0/200', NULL, '45/10/30/30', 100, 250, NULL, 30, 6, '16/0/0/0', 'D/-/-/-', 2, NULL, NULL, NULL, 'weapons/blacksmith-giant-hammer.png'),
(6, 'Blacksmith Hammer', NULL, '87/0/0/0', NULL, '45/10/30/30	', 100, 250, NULL, 30, 5, '14/0/0/0', 'C/-/-/-', 2, NULL, NULL, NULL, 'weapons/blacksmith-hammer.png'),
(7, 'Club', NULL, '87/0/0/0', NULL, '45/10/30/30	', 100, 250, NULL, 30, 3, '10/0/0/0', 'A/-/-/-', 2, NULL, NULL, NULL, 'weapons/club.png'),
(8, 'Hammer of Vamos', NULL, '115/0/64/0', NULL, '45/10/30/30', 100, 250, NULL, 26, 5, '14/0/0/0', 'C/-/-/-', 2, NULL, NULL, NULL, 'weapons/hammer-of-vamos.png'),
(9, 'Mace', NULL, '91/0/0/0', NULL, '45/10/30/30', 100, 250, NULL, 30, 4, '12/0/0/0', 'B/-/-/-', 2, NULL, NULL, NULL, 'weapons/mace.png'),
(10, 'Morning Star', NULL, '83/0/0/0', '300/-/-/-', '45/10/30/30', 180, 200, NULL, 30, 4, '11/0/0/0', 'C/-/-/-', 2, NULL, NULL, NULL, 'weapons/morning-star.png'),
(11, 'Pickaxe', NULL, '89/0/0/0', NULL, '45/10/30/30', 100, 250, NULL, 30, 4, '14/0/0/0', 'B/-/-/-', 2, NULL, NULL, NULL, 'weapons/pickaxe.png'),
(12, 'Reinforced Club', NULL, '97/0/0/0', '300/-/-/-', '45/10/30/30', 100, 100, NULL, 30, 4, '12/0/0/0', 'C/-/-/-', 2, NULL, NULL, NULL, 'weapons/reinforced-club.png'),
(13, 'Warpick', NULL, '91/0/0/0', NULL, '45/10/30/30', 100, 220, NULL, 30, 3, '11/0/0/0', 'C/D/-/-', 2, NULL, NULL, NULL, 'weapons/warpick.png'),
(14, 'Demon''s Grate Hammer', NULL, '138/0/0/0', NULL, '50/10/35/35', 100, 600, NULL, 32, 22, '46/0/0/0', 'B/-/-/-', 3, NULL, NULL, NULL, 'weapons/demon-s-great-hammer.png'),
(15, 'Dragon Tooth', NULL, '290/0/0/0', NULL, '50/10/35/35', 100, 999, NULL, 32, 18, '40/0/0/0', 'D/-/-/-', 3, NULL, NULL, 'Raises Fire and Magic defense by 20 points.', 'weapons/dragon-tooth.png'),
(16, 'Grant', NULL, '130/130/0/0', '-/-/130/-', '50/10/35/35', 100, 600, NULL, 32, 24, '50/0/0/30', 'B/-/-/A', 3, NULL, NULL, 'Two-handed strong attack is replaced by a Wrath of the Gods effect that scales with the weapon''s Magic damage. This attack uses 200 durability points per use.', 'weapons/grant.png'),
(17, 'Great Club', NULL, '135/0/0/0', NULL, '50/10/35/35', 100, 250, NULL, 32, 12, '28/0/0/0', 'B/-/-/-', 3, NULL, NULL, NULL, 'weapons/great-club.png'),
(18, 'Large Club', NULL, '120/0/0/0', '-/180/-/-', '55/10/40/40', 100, 250, NULL, 32, 11, '26/0/0/0', 'A/-/-/-', 3, NULL, NULL, NULL, 'weapons/large-club.png'),
(19, 'Smough''s Hammer', NULL, '300/0/0/0', NULL, '50/10/35/35', 100, 600, NULL, 32, 28, '58/0/0/0', 'D/-/-/-', 3, NULL, NULL, 'Restores 10 HP each time an enemy is hit.', 'weapons/smough-s-hammer.png'),
(20, 'Battle Axe', NULL, '95/0/0/0', NULL, '55/10/40/40', 100, 250, NULL, 36, 4, '12/8/0/0', 'C/D/-/-', 4, NULL, NULL, NULL, 'weapons/battle-axe.png'),
(21, 'Butcher Knife', NULL, '90/0/0/0', NULL, '55/10/40/40', 100, 250, NULL, 36, 10, '24/0/0/0', 'B/-/-/-', 4, NULL, NULL, 'Restores 5 HP each time an enemy is hit.', 'weapons/butcher-knife.png'),
(22, 'Crescent Axe', NULL, '115/115/0/0', '-/-/120/-', '55/10/40/40', 100, 180, NULL, 36, 7, '18/12/0/16', 'D/D/-/B', 4, NULL, NULL, NULL, 'weapons/crescent-axe.png'),
(23, 'Gargoyle Tail Axe', NULL, '93/0/0/0', NULL, '55/10/40/40', 100, 150, NULL, 36, 5, '14/14/0/0', 'D/C/-/-', 4, NULL, NULL, 'Increases Bleeding and Poison resistance.', 'weapons/gargoyle-tail-axe.png'),
(24, 'Golem Axe', NULL, '170/0/0/0', NULL, '55/10/40/40', 100, 600, NULL, 36, 16, '36/8/0/0', 'C/E/-/-', 4, NULL, NULL, '1-handed strong attack is replaced by a wind projectile attack that inflicts damage identical to a 1-handed weak attack and causes knockdown on hit. This attack consumes 30 durability.', 'weapons/golem-axe.png'),
(25, 'Hand Axe', NULL, '80/0/0/0', NULL, '55/10/40/40', 100, 250, NULL, 36, 2, '8/8/0/0', 'C/D/-/-', 4, NULL, NULL, NULL, 'weapons/hand-axe.png'),
(26, 'Black Knight Greataxe', NULL, '229/0/0/0', NULL, '55/10/40/40', 100, 300, NULL, 38, 16, '36/18/0/0', 'B/E/-/-', 5, NULL, NULL, NULL, 'weapons/black-knight-greataxe.png'),
(27, 'Demon''s Greataxe', NULL, '114/0/0/0', NULL, '55/10/40/40', 100, 600, NULL, 38, 22, '46/0/0/0', 'A/-/-/-', 5, NULL, NULL, NULL, 'weapons/demon-s-greataxe.png'),
(28, 'Dragon King Greataxe', NULL, '380/0/0/0', NULL, '55/10/40/40', 100, 400, NULL, 38, 24, '50/8/0/0', '-/-/-/-', 5, NULL, NULL, 'Increases your Magic and Fire Defense by 20. Two handed strong attack is replaced by a very large area of effect Magic attack around the wielder. This attack gains bonus damage from the weapon''s enchantment. Consumes 50 durability points per use.', 'weapons/dragon-king-greataxe.png'),
(29, 'Greataxe', NULL, '140/0/0/0', NULL, '55/10/40/40', 100, 230, NULL, 38, 14, '32/8/0/0', 'C/E/-/-', 5, NULL, NULL, NULL, 'weapons/greataxe.png'),
(30, 'Stone Greataxe', NULL, '190/0/0/0', NULL, '55/10/40/40', 100, 700, NULL, 38, 24, '48/10/0/0', 'B/E/-/-', 5, NULL, NULL, NULL, 'weapons/stone-greataxe.png'),
(31, 'Bandit''s Knife', NULL, '56/0/0/0', '300/-/-/-', '45/10/30/30', 147, 200, NULL, 26, 1, '6/12/0/0', 'E/B/-/-', 6, NULL, NULL, NULL, 'weapons/bandit-s-knife.png'),
(32, 'Dagger', NULL, '56/0/0/0', NULL, '45/10/30/30', 131, 200, NULL, 26, 0.5, '5/8/0/0', 'E/B/-/-', 6, NULL, NULL, NULL, 'weapons/dagger.png'),
(33, 'Dark Silver Tracer', NULL, '75/0/0/0', 'Toxic', '45/10/30/30', 160, 120, NULL, 26, 1, '6/25/0/0', 'E/S/-/-', 6, NULL, NULL, 'Strong attack''s toxin buildup is 36 per strike. When inflicted, HP loss rate is 6 HP/seconds', 'weapons/dark-silver-tracer.png'),
(34, 'Ghost Blade', NULL, '110/0/0/0', NULL, '45/10/30/30', 127, 100, NULL, 26, 0.5, '5/0/0/0', 'E/-/-/-', 6, NULL, NULL, 'Can damage ghosts without the user being cursed.', 'weapons/ghost-blade.png'),
(35, 'Parrying Dagger', NULL, '54/0/0/0', NULL, '45/10/30/30', 131, 200, NULL, 26, 0.5, '5/14/0/0', 'E/B/-/-', 6, NULL, NULL, NULL, 'weapons/parrying-dagger.png'),
(36, 'Priscilla''s Dagger', NULL, '80/0/0/0', '500/-/-/110', '45/10/30/30', 100, 100, NULL, 26, 1, '6/20/0/0', '-/A/-/-', 6, NULL, NULL, NULL, 'weapons/priscilla-s-dagger.png'),
(37, 'Estoc', NULL, '75/0/0/0', NULL, '45/10/30/30', 100, 150, NULL, 22, 3, '10/12/0/0', 'D/C/-/-', 7, NULL, NULL, NULL, 'weapons/estoc.png'),
(38, 'Mail Breaker', NULL, '57/0/0/0', NULL, '45/10/30/30', 120, 200, NULL, 22, 0.5, '5/12/0/0', 'D/C/-/-', 7, NULL, NULL, NULL, 'weapons/mail-breaker.png'),
(39, 'Rapier', NULL, '73/0/0/0', NULL, '45/10/30/30', 110, 150, NULL, 22, 1, '7/12/0/0', 'D/C/-/-', 7, NULL, NULL, NULL, 'weapons/rapier.png'),
(40, 'Ricard''s Rapier', NULL, '70/0/0/0', NULL, '45/10/30/30', 100, 100, NULL, 22, 2, '8/20/0/0', 'E/B/-/-', 7, NULL, NULL, NULL, 'weapons/ricard-s-rapier.png'),
(41, 'Velka''s Rapier', NULL, '62/104/0/0', '-/-/-/110', '45/10/30/30', 100, 130, NULL, 22, 2, '8/16/16/0', 'E/C/B/-', 7, NULL, NULL, NULL, 'weapons/velka-s-rapier.png'),
(42, 'Astora''s Straight Sword', NULL, '80/80/0/0', '-/-/120/-', '50/10/35/45', 100, 160, NULL, 32, 3, '10/10/0/14', 'C/C/-/C', 8, NULL, NULL, NULL, 'weapons/astora-s-straight-sword.png'),
(43, 'Balder Side Sword', NULL, '80/0/0/0', NULL, '50/10/35/45', 100, 120, NULL, 32, 3, '10/14/0/0', 'E/B/-/-', 8, NULL, NULL, NULL, 'weapons/balder-side-sword.png'),
(44, 'Barbed Straight Sword', NULL, '80/0/0/0', '300/-/-/-', '50/10/35/45', 100, 160, NULL, 32, 3, '10/10/0/0', 'D/D/-/-', 8, NULL, NULL, NULL, 'weapons/barbed-straight-sword.png'),
(45, 'Broad Sword', NULL, '82/0/0/0', NULL, '50/10/35/45', 100, 200, NULL, 32, 3, '10/10/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/broad-sword.png'),
(46, 'Broken Straight Sword', NULL, '40/0/0/0', NULL, '20/5/15/15', 100, 200, NULL, 16, 2, '8/8/0/0', 'D/D/-/-', 8, NULL, NULL, NULL, 'weapons/broken-straight-sword.png'),
(47, 'Crystal Straight Sword', NULL, '150/0/0/0', NULL, '50/10/35/35', 100, 60, NULL, 32, 6, '16/10/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/crystal-straight-sword.png'),
(48, 'Dark Sword', NULL, '82/0/0/0', NULL, '50/10/35/35', 100, 200, NULL, 32, 6, '16/16/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/dark-sword.png'),
(49, 'Drake Sword', NULL, '200/0/0/0', NULL, '50/10/35/35', 100, 360, NULL, 32, 6, '16/10/0/0', '-/-/-/-', 8, NULL, NULL, 'Raises Fire and Magic defense by 15 points. Move set is identical to Broadsword''s, except that 2-handed strong attack is replaced by a downward slash that releases a shockwave projectile. Costs 30 weapon durability per use.', 'weapons/drake-sword.png'),
(50, 'Longsword', NULL, '80/0/0/0', NULL, '50/10/35/35', 100, 200, NULL, 32, 3, '10/10/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/longsword.png'),
(51, 'Shortsword', NULL, '78/0/0/0', NULL, '50/10/35/35', 100, 200, NULL, 32, 2, '8/10/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/shortsword.png'),
(52, 'Silver Knight Straight Sword', NULL, '175/0/0/0', NULL, '50/10/35/35', 100, 300, NULL, 32, 6, '16/22/0/0', 'E/C/-/-', 8, NULL, NULL, NULL, 'weapons/silver-knight-straight-sword.png'),
(53, 'Straight Sword Hilt', NULL, '20/0/0/0', NULL, '20/5/15/15', 100, 200, NULL, 10, 1, '6/6/0/0', 'E/E/-/-', 8, NULL, NULL, NULL, 'weapons/straight-sword-hilt.png'),
(54, 'Sunlight Straight Sword', NULL, '82/0/0/0', NULL, '50/10/35/35', 100, 240, NULL, 32, 4, '12/12/0/0', 'C/C/-/-', 8, NULL, NULL, NULL, 'weapons/sunlight-straight-sword.png'),
(55, 'Abyss Greatsword', NULL, '160/0/0/0', NULL, '40/50/40/40', 100, 300, NULL, 38, 9, '22/18/18/18', 'C/C/-/-', 9, NULL, NULL, NULL, 'weapons/abyss-greatsword.png'),
(56, 'Bastard Sword', NULL, '105/0/0/0', NULL, '60/10/40/40', 100, 200, NULL, 38, 6, '16/10/0/0', 'C/C/-/-', 9, NULL, NULL, NULL, 'weapons/bastard-sword.png'),
(57, 'Black Knight Sword', NULL, '220/0/0/0', NULL, '60/10/40/40', 100, 300, NULL, 38, 8, '20/18/0/0', 'C/E/-/-', 9, NULL, NULL, NULL, 'weapons/black-knight-sword.png'),
(58, 'Claymore', NULL, '103/0/0/0', NULL, '60/10/40/40', 100, 200, NULL, 38, 6, '16/10/0/0', 'C/C/-/-', 9, NULL, NULL, NULL, 'weapons/claymore.png'),
(59, 'Crystal Greatsword', NULL, '190/0/0/0', NULL, '60/10/40/40', 100, 60, NULL, 38, 8, '20/10/0/0', 'C/C/-/-', 9, NULL, NULL, NULL, 'weapons\\crystal-greatsword.png'),
(60, 'Flamberge', NULL, '100/0/0/0', '300/-/-/-', '60/10/40/40', 100, 160, NULL, 38, 6, '16/14/0/0', 'D/C/-/-', 9, NULL, NULL, NULL, 'weapons/flamberge.png'),
(61, 'Great Lord Greatsword', NULL, '256/0/0/0', NULL, '60/10/40/40', 100, 400, NULL, 26, 8, '20/10/0/0', 'D/D/-/-', 9, NULL, NULL, NULL, 'weapons/great-lord-greatsword.png'),
(62, 'Greatsword of Artorias', NULL, '120/85/0/0', '-/-/140/-', '60/10/40/40', 100, 400, NULL, 38, 10, '24/18/20/20', 'C/C/B/B', 9, NULL, NULL, NULL, 'weapons/greatsword-of-artorias.png'),
(63, 'Greatsword of Artorias (Cursed)', NULL, '178/0/0/0', NULL, '60/10/40/40', 100, 400, NULL, 38, 10, '24/18/18/18', 'C/C/C/C', 9, NULL, NULL, 'Can damage ghosts without the user being cursed.', 'weapons/greatsword-of-artorias-cursed.png'),
(64, 'Man Serpent Greatsword', NULL, '110/0/0/0', NULL, '60/10/40/40', 100, 300, NULL, 38, 10, '24/0/0/0', 'B/-/-/-', 9, NULL, NULL, NULL, 'weapons/man-serpent-greatsword.png'),
(65, 'Moonlight Greatsword', NULL, '0/132/0/0', NULL, '60/10/40/40', 100, 300, NULL, 38, 6, '16/10/28/0', '-/-/A/-', 9, NULL, NULL, 'One-handed strong attack is replaced with a charged vertical slash that releases an energy wave (Consumes 20 durability points). Two-handed strong attack is replaced with a charged horizontal slash that releases an energy wave. The energy wave explodes on impact, dealing splash damage (Consumes 40 durability points)', 'weapons/moonlight-greatsword.png'),
(66, 'Obsidian Greatsword', NULL, '320/0/0/0', NULL, '60/10/40/40', 100, 350, NULL, 38, 8, '20/16/0/0', '-/-/-/-', 9, NULL, NULL, 'Two-handed strong attack is replaced by a black flame Area of Effect attack centered at the player. Consumes 50 durability per use.', 'weapons/obsidian-greatsword.png'),
(67, 'Stone Greatsword', NULL, '148/100/0/0', NULL, '60/10/40/40', 100, 800, NULL, 38, 18, '40/10/0/0', 'C/C/E/-', 9, NULL, NULL, NULL, 'weapons/stone-greatsword.png'),
(68, 'Black Knight Greatsword', NULL, '220/0/0/0', NULL, '70/10/50/50', 100, 300, NULL, 44, 14, '32/18/0/0', 'B/E/-/-', 10, NULL, NULL, NULL, 'weapons/black-knight-greatsword.png'),
(69, 'Demon Great Machete', NULL, '133/0/0/0', NULL, '70/10/50/50', 100, 600, NULL, 44, 18, '40/0/0/0', 'B/-/-/-', 10, NULL, NULL, NULL, 'weapons/demon-great-machete.png'),
(70, 'Dragon Greatsword', NULL, '390/0/0/0', NULL, '70/10/50/50', 100, 400, NULL, 44, 24, '50/10/0/0', '-/-/-/-', 10, NULL, NULL, 'Raises Magic and Fire defense by 20 points. Two handed strong attack is replaced by a overhead chop that creates a shockwave. Consumes 50 durability points per use.', 'weapons/dragon-greatsword.png'),
(71, 'Greatsword', NULL, '130/0/0/0', NULL, '70/10/50/50', 100, 200, NULL, 44, 12, '28/10/0/0', 'C/D/-/-', 10, NULL, NULL, NULL, 'weapons/greatsword.png'),
(72, 'Zweihander', NULL, '130/0/0/0', NULL, '70/10/50/50', 100, 200, NULL, 44, 10, '24/10/0/0', 'C/D/-/-', 10, NULL, NULL, NULL, 'weapons/zweihander.png'),
(73, 'Chaos Blade', NULL, '144/0/0/0', '300/-/-/-', '45/10/30/30', 100, 120, NULL, 30, 6, '16/14/0/0', '-/B/-/-', 11, NULL, NULL, 'Drains 20 HP per strike from the wielder.', 'weapons/chaos-blade.png'),
(74, 'Iaito', NULL, '88/0/0/0', '300/-/-/-', '45/10/30/30', 100, 80, NULL, 30, 5, '14/20/0/0', '-/B/-/-', 11, NULL, NULL, NULL, 'weapons/iaito.png'),
(75, 'Uchigatana', NULL, '90/0/0/0', '300/-/-/-', '45/10/30/30', 100, 80, NULL, 30, 5, '14/14/0/0', '-/B/-/-', 11, NULL, NULL, NULL, 'weapons/uchigatana.png'),
(76, 'Washing Pole', NULL, '90/0/0/0', '300/-/-/-', '45/10/30/30', 100, 60, NULL, 30, 8, '20/16/0/0', 'D/D/-/-', 11, NULL, NULL, NULL, 'weapons/washing-pole.png'),
(77, 'Falchion', NULL, '82/0/0/0', NULL, '45/10/30/30', 100, 160, NULL, 30, 2, '9/13/0/0', 'E/B/-/-', 12, NULL, NULL, NULL, 'weapons/falchion.png'),
(78, 'Gold Tracer', NULL, '130/0/0/0', '300/-/-/-', '45/10/30/30', 100, 240, NULL, 30, 2, '9/25/0/0', 'E/A/-/-', 12, NULL, NULL, NULL, 'weapons/gold-tracer.png'),
(79, 'Jagged Ghost Blade', NULL, '155/0/0/0', '300/-/-/-', '45/10/30/30', 100, 100, NULL, 30, 1, '7/0/0/0', 'E/-/-/-', 12, NULL, NULL, 'Can damage ghosts without the user being cursed.', 'weapons/jagged-ghost-blade.png'),
(80, 'Painting Guardian Sword', NULL, '76/0/0/0', '300/-/-/-', '45/10/30/30', 100, 100, NULL, 30, 1, '7/20/0/0', 'E/A/-/-', 12, NULL, NULL, NULL, 'weapons/painting-guardian-sword.png'),
(81, 'Quelaag''s Fury Sword', NULL, '60/0/180/0', NULL, '45/10/30/30', 100, 600, NULL, 30, 3, '11/13/0/0', 'E/B/-/-', 12, NULL, NULL, 'Damage scales with Humanity.', 'weapons/quelaag-s-furysword.png'),
(82, 'Scimitar', NULL, '80/0/0/0', NULL, '45/10/30/30', 100, 160, NULL, 30, 1, '7/13/0/0', 'E/B/-/-', 12, NULL, NULL, NULL, 'weapons/scimitar.png'),
(83, 'Shotel', NULL, '82/0/0/0', NULL, '45/10/30/30', 100, 120, NULL, 30, 2, '9/14/0/0', 'E/C/-/-', 12, NULL, NULL, NULL, 'weapons/shotel.png'),
(84, 'Gravelord Sword', NULL, '265/0/0/0', 'Toxic', '60/10/40/40', 100, 600, NULL, 36, 10, '24/13/0/0', 'E/E/-/-', 13, NULL, NULL, 'The toxin''s HP loss rate is 5 HP/seconds', 'weapons/gravelord-sword.png'),
(85, 'Murakumo', NULL, '133/0/0/0', NULL, '60/10/40/40', 100, 180, NULL, 36, 12, '28/13/0/0', 'E/B/-/-', 13, NULL, NULL, NULL, 'weapons/murakumo.png'),
(86, 'Server', NULL, '107/0/0/0', NULL, '60/10/40/40', 100, 140, NULL, 36, 10, '24/13/0/0', 'E/C/-/-', 13, NULL, NULL, 'Restores 7 HP each time an enemy is hit.', 'weapons/server.png'),
(87, 'Channeler''s Trident', NULL, '70/115/0/0', NULL, '40/10/30/30', 100, 240, NULL, 26, 6, '16/16/24/0', 'E/C/B/-', 14, NULL, NULL, '2-handed strong attack is replaced by an area of effect dance that increases allies'' attack power for a duration. This move consumes 80 durability.', 'weapons/channeler-s-trident.png'),
(88, 'Demon''s Spear', NULL, '100/0/0/120', NULL, '40/10/30/30', 100, 400, NULL, 26, 4, '12/10/0/0', 'C/C/-/-', 14, NULL, NULL, NULL, 'weapons/demon-s-spear.png'),
(89, 'Dragonslayer Spear', NULL, '95/0/0/65', NULL, '40/10/30/30', 100, 300, NULL, 26, 10, '24/24/0/0', 'C/B/-/B', 14, NULL, NULL, 'One-handed strong attack is a long range lightning bolt that scales with the weapon''s Faith scaling, that consumes 20 durability per use. Two-handed strong attack is a slow strike forward. Pressing R2 a second time will result in a close-range, delayed upward thrust that can knock opponent airborne. The second attack consumes 20 durability.', 'weapons/dragon-slayer-spear.png'),
(90, 'Four-Pronged Plow', NULL, '75/0/0/0', NULL, '40/10/30/30', 100, 300, NULL, 26, 5.5, '15/12/0/0', 'D/C/-/-', 14, NULL, NULL, NULL, 'weapons/four-pronged-plow.png'),
(91, 'Moonlight Butterfly Horn', NULL, '0/120/0/0', NULL, '40/10/30/30', 100, 160, NULL, 26, 4, '12/0/14/0', '-/-/B/-', 14, NULL, NULL, NULL, 'weapons/moonlight-butterfly-horn.png'),
(92, 'Partizan', NULL, '80/0/0/0', NULL, '40/10/30/30', 100, 160, NULL, 26, 4.5, '13/12/0/0', 'D/C/-/-', 14, NULL, NULL, NULL, 'weapons/partizan.png'),
(93, 'Pike', NULL, '86/0/0/0', NULL, '40/10/30/30', 100, 180, NULL, 26, 10, '24/10/0/0', 'D/C/-/-', 14, NULL, NULL, NULL, 'weapons/pike.png'),
(94, 'Silver Knight Spear', NULL, '163/0/0/0', '-/-/110/-', '40/10/30/30', 100, 300, NULL, 26, 6, '16/22/0/0', 'E/C/-/-', 14, NULL, NULL, NULL, 'weapons/silver-knight-spear.png'),
(95, 'Spear', NULL, '80/0/0/0', NULL, '40/10/30/30', 100, 180, NULL, 26, 3.5, '11/10/0/0', 'D/C/-/-', 14, NULL, NULL, NULL, 'weapons/spear.png'),
(96, 'Winged Spear', NULL, '86/0/0/0', NULL, '40/10/30/30', 100, 140, NULL, 26, 4.5, '13/15/0/0', 'E/C/-/-', 14, NULL, NULL, NULL, 'weapons/winged-spear.png'),
(97, 'Black Knight Halberd', NULL, '245/0/0/0', NULL, '40/10/30/30', 100, 300, NULL, 26, 14, '32/18/0/0', 'D/E/-/-', 15, NULL, NULL, NULL, 'weapons/black-knight-halberd.png'),
(98, 'Gargoyle''s Halberd', NULL, '115/0/0/0', NULL, '40/10/30/30', 100, 200, NULL, 26, 6, '16/12/0/0', 'D/D/-/-', 15, NULL, NULL, 'Increases Bleed and Poison resistance by 25', 'weapons/gargoyle-s-halberd.png'),
(99, 'Giant''s Halberd', NULL, '140/0/0/135', NULL, '40/10/30/30', 100, 300, NULL, 26, 16, '36/12/0/0', 'D/D/-/-', 15, NULL, NULL, NULL, 'weapons/giant-s-halberd.png'),
(100, 'Great Scythe', NULL, '100/0/0/0', '300/-/-/-', '40/10/30/30', 100, 130, NULL, 26, 5, '14/14/0/0', 'E/B/-/-', 15, NULL, NULL, NULL, 'weapons/great-scythe.png'),
(101, 'Halberd', NULL, '110/0/0/0', NULL, '40/10/30/30', 100, 200, NULL, 26, 6, '16/12/0/0', 'D/D/-/-', 15, NULL, NULL, NULL, 'weapons/halberd.png'),
(102, 'Lifehunt Scythe', NULL, '180/0/0/0', '500/-/-/-', '40/10/30/30', 100, 100, NULL, 22, 6, '16/14/0/0', 'E/B/-/-', 15, NULL, NULL, '40 bleed buildup towards self on hit', 'weapons/lifehunt-scythe.png'),
(103, 'Lucerne', NULL, '110/0/0/0', NULL, '40/10/30/30', 100, 200, NULL, 26, 5.5, '15/12/0/0', 'D/D/-/-', 15, NULL, NULL, NULL, 'weapons/lucerne.png'),
(104, 'Scythe', NULL, '110/0/0/0', NULL, '40/10/30/30', 100, 130, NULL, 26, 5, '14/12/0/0', 'E/C/-/-', 15, NULL, NULL, NULL, 'weapons/scythe.png'),
(105, 'Titanite Catch Pole', NULL, '125/145/0/0', NULL, '40/10/30/30', 100, 600, NULL, 26, 6, '16/14/0/0', 'D/D/D/-', 15, NULL, NULL, NULL, 'weapons/titanite-catch-pole.png'),
(106, 'Black Bow of Pharis', NULL, '34/0/0/0', NULL, '0/0/0/0', 100, 100, 65, NULL, 1, '9/18/0/0', 'E/S/-/-', 16, NULL, NULL, NULL, 'weapons/black-bow-of-pharis.png'),
(107, 'Composite Bow', NULL, '55/0/0/0', NULL, '0/0/0/0', 100, 100, 38, NULL, 1, '11/12/0/0', 'C/C/-/-', 16, NULL, NULL, NULL, 'weapons/composite-bow.png'),
(108, 'Darkmoon Bow', NULL, '85/85/0/0', NULL, '0/0/0/0', 100, 400, 50, NULL, 1, '7/16/0/16', 'E/D/-/D', 16, NULL, NULL, NULL, 'weapons/darkmoon-bow.png'),
(109, 'Long Bow', NULL, '36/0/0/0', NULL, '0/0/0/0', 100, 100, 50, NULL, 1, '9/14/0/0', 'D/A/-/-', 16, NULL, NULL, NULL, 'weapons/long-bow.png'),
(110, 'Short Bow', NULL, '31/0/0/0', NULL, '0/0/0/0', 100, 100, 50, NULL, 0.5, '7/12/0/0', 'D/A/-/-', 16, NULL, NULL, NULL, 'weapons/short-bow.png'),
(111, 'Avelyn', NULL, '38/0/0/0', NULL, '0/0/0/0', 100, 150, 50, NULL, 6, '16/14/0/0', '-/-/-/-', 17, NULL, NULL, 'Shoots three bolts per shot.', 'weapons/avelyn.png'),
(112, 'Heavy Crossbow', NULL, '55/0/0/0', NULL, '0/0/0/0', 100, 150, 50, NULL, 5, '14/8/0/0', '-/-/-/-', 17, NULL, NULL, NULL, 'weapons/heavy-crossbow.png'),
(113, 'Light Crossbow', NULL, '50/0/0/0', NULL, '0/0/0/0', 100, 150, 50, NULL, 3, '10/8/0/0', '-/-/-/-', 17, NULL, NULL, NULL, 'weapons/light-crossbow.png'),
(114, 'Sniper Crossbow', NULL, '52/0/0/0', NULL, '0/0/0/0', 100, 150, 70, NULL, 8, '20/16/0/0', '-/-/-/-', 17, NULL, NULL, NULL, 'weapons/sniper-crossbow.png'),
(115, 'Dragonslayer Greatbow', NULL, '90/0/0/0', NULL, '0/0/0/0', 100, 100, 50, NULL, 10, '20/20/0/0', 'C/C/-/-', 18, NULL, NULL, NULL, 'weapons/dragonslayer-greatbow.png'),
(116, 'Gough''s Greatbow', NULL, '85/0/0/0', NULL, '0/0/0/0', 100, 100, 55, NULL, 13, '27/20/0/0', 'B/C/-/-', 18, NULL, NULL, NULL, 'weapons/gough-s-greatbow.png'),
(117, 'Guardian Tail', NULL, '84/0/0/0', '-/180/-/-', '30/10/20/20', 100, 250, NULL, 16, 5, '15/10/0/0', '-/C/-/-', 19, NULL, NULL, NULL, 'weapons/guardian-tail.png'),
(118, 'Notched Whip', NULL, '76/0/0/0', '300/-/-/-', '30/10/20/20', 100, 200, NULL, 16, 2, '8/16/0/0', '-/B/-/-', 19, NULL, NULL, NULL, 'weapons/notched-whip.png'),
(119, 'Whip', NULL, '80/0/0/0', '0/0/0/0', '30/10/20/20', 100, 200, 0, 16, 1.5, '7/14/0/0', '-/B/-/-', 19, NULL, NULL, NULL, 'weapons/whip.png'),
(120, 'Buckler', NULL, '55/0/0/0', '0/0/0/0', '76/32/65/53', 0, 140, NULL, 40, 1.5, '7/13/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/buckler.png'),
(121, 'Caduceus Round Shield', NULL, '50/0/0/0', NULL, '85/65/30/65', 0, 180, NULL, 40, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/caduceus-round-shield.png'),
(122, 'Cracked Round Shield', NULL, '46/0/0/0', NULL, '65/55/10/45', 0, 60, NULL, 30, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/cracked-round-shield.png'),
(123, 'Effigy Shield', NULL, '60/0/0/0', NULL, '90/40/70/90', 0, 180, NULL, 45, 3, '10/0/0/16', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/effigy-shield.png'),
(124, 'Leather Shield', NULL, '42/0/0/0', NULL, '85/35/60/60', 0, 200, NULL, 45, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/leather-shield.png'),
(125, 'Plank Shield', NULL, '52/0/0/0', NULL, '75/40/20/55', 0, 120, NULL, 45, 1.5, '7/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/plank-shield.png'),
(126, 'Red and White Round Shield', NULL, '50/0/0/0', NULL, '85/65/30/64', 0, 180, NULL, 40, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/red-and-white-round-shield.png'),
(127, 'Small Leather Shield', NULL, '40/0/0/0', NULL, '80/35/60/60', 0, 200, NULL, 40, 0.5, '5/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/small-leather-shield.png'),
(128, 'Target Shield', NULL, '56/0/0/0', NULL, '78/30/65/50', 0, 150, NULL, 45, 2, '8/11/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/target-shield.png'),
(129, 'Warrior''s Round Shield', NULL, '50/0/0/0', NULL, '85/65/30/65', 0, 180, NULL, 40, 1, '6/0/0/0', 'D/-/-/-', NULL, 1, NULL, NULL, 'weapons/warrior-s-round-shield.png'),
(130, 'Balder Shield', NULL, '66/0/0/0', NULL, '100/20/60/50', 0, 220, NULL, 63, 4, '12/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons/balder-shield.png'),
(131, 'Black Knight Shield', NULL, '68/0/0/0', NULL, '100/25/95/65', 0, 250, NULL, 62, 6, '16/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons/black-knight-shield.png'),
(132, 'Bloodshield', NULL, '62/0/0/0', NULL, '100/30/70/50', 0, 240, NULL, 53, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, 'Increases Bleed, Poison and Curse Resistances by 50%', 'weapons/bloodshield.png'),
(133, 'Caduceus Kite Shield', NULL, '64/0/0/0', NULL, '100/30/70/50', 0, 250, NULL, 58, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons/caduceus-kite-shield.png'),
(134, 'Crest Shield', NULL, '62/0/0/0', NULL, '100/80/55/45', 0, 300, NULL, 55, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\crest-shield.png'),
(135, 'Dragon Crest Shield', NULL, '62/0/0/0', NULL, '100/20/85/45', 0, 300, NULL, 55, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\dragon-crest-shield.png'),
(136, 'East-West Shield', NULL, '52/0/0/0', NULL, '88/40/30/65', 0, 160, NULL, 44, 1, '6/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\east-west-shield.png'),
(137, 'Gargoyle''s Shield', NULL, '62/0/0/0', NULL, '85/40/75/70', 0, 300, NULL, 56, 4, '12/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\gargoyle-s-shield.png'),
(138, 'Grass Crest Shield', NULL, '62/0/0/0', NULL, '95/42/70/50', 0, 200, NULL, 51, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, 'Increases stamina regen by about 10 per second.', 'weapons\\grass-crest-shield.png'),
(139, 'Heater Shield', NULL, '60/0/0/0', NULL, '100/30/70/50', 0, 250, NULL, 55, 2, '8/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\heater-shield.png'),
(140, 'Hollow Soldier Shield', NULL, '66/0/0/0', NULL, '100/30/65/50', 0, 250, NULL, 56, 3.5, '11/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\hollow-soldier-shield.png'),
(141, 'Iron Round Shield', NULL, '68/0/0/0', NULL, '100/30/72/46', 0, 280, NULL, 55, 5, '14/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\iron-round-shield.png'),
(142, 'Knight Shield', NULL, '68/0/0/0', NULL, '100/30/60/40', 0, 200, NULL, 56, 5.5, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\knight-shield.png'),
(143, 'Large Leather Shield', NULL, '46/0/0/0', NULL, '91/35/60/60', 0, 200, NULL, 52, 1.5, '7/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\large-leather-shield.png'),
(144, 'Sanctus', NULL, '62/0/0/0', NULL, '95/40/70/50', 0, 410, NULL, 51, 3, '10/0/0/18', 'D/-/-/-', NULL, 2, NULL, 'Generates approximately two HP every two seconds.', 'weapons\\sanctus.png'),
(145, 'Silver Knight Shield', NULL, '66/0/0/0', NULL, '100/40/75/65', 0, 250, NULL, 64, 5, '14/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\silver-knight-shield.png'),
(146, 'Spider Shield', NULL, '62/0/0/0', NULL, '100/30/72/48', 0, 230, NULL, 56, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\spider-shield.png'),
(147, 'Sunlight Shield', NULL, '64/0/0/0', NULL, '100/30/75/50', 0, 280, NULL, 57, 4, '12/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\sunlight-shield.png'),
(148, 'Tower Kite Shield', NULL, '64/0/0/0', NULL, '100/30/70/50', 0, 250, NULL, 58, 3, '10/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\tower-kite-shield.png'),
(149, 'Wooden Shield', NULL, '54/0/0/0', NULL, '93/40/30/65', 0, 160, NULL, 52, 1.5, '7/0/0/0', 'D/-/-/-', NULL, 2, NULL, NULL, 'weapons\\wooden-shield.png'),
(150, 'Black Iron Greatshield', NULL, '80/0/0/0', NULL, '100/40/90/50', 0, 230, NULL, 71, 16, '34/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\black-iron-greatshield.png'),
(151, 'Bonewheel Shield', NULL, '80/0/0/0', NULL, '90/30/30/51', 0, 200, NULL, 66, 12, '30/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\bonewheel-shield.png'),
(152, 'Cleansing Greatshield', NULL, '75/0/0/0', NULL, '80/80/80/70', 0, 300, NULL, 77, 14.5, '31/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\cleansing-greatshield.png'),
(153, 'Eagle Shield', NULL, '62/0/0/0', NULL, '95/55/45/75', 0, 300, NULL, 70, 6, '16/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\eagle-shield.png'),
(154, 'Giant Shield', NULL, '80/0/0/0', NULL, '10/60/75/75', 0, 300, NULL, 68, 18, '36/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\giant-shield.png'),
(155, 'Greatshield of Artorias', NULL, '80/0/0/0', NULL, '100/50/80/40', 0, 600, NULL, 88, 16, '34/0/0/0', 'D/-/-/-', NULL, 3, NULL, '100% Poison, Toxic, and Bleed resistance when blocking.', 'weapons\\greatshield-of-artorias.png'),
(156, 'Havel''s Greatshield', NULL, '84/0/0/0', NULL, '100/90/80/80', 0, 500, NULL, 84, 26, '50/0/0/0', 'D/-/-/-', NULL, 3, NULL, 'The parry/shield bash (when held in left hand) and strong attacks (when held in right hand) are replaced by a buff that boosts your poise and gives your body a Heavy Deflection effect that lasts 30 seconds.This buff requires you to meet the strength requirement, otherwise the parry/strong attack will be the slow, heaving shield bash.', 'weapons\\havel-s-greatshield.png'),
(157, 'Stone Greatshield', NULL, '82/0/0/0', NULL, '100/80/75/65', 0, 400, NULL, 80, 20, '38/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\stone-greatshield.png'),
(158, 'Tower Shield', NULL, '80/0/0/0', NULL, '100/40/75/50', 0, 300, NULL, 72, 13, '30/0/0/0', 'D/-/-/-', NULL, 3, NULL, NULL, 'weapons\\tower-shield.png'),
(159, 'Crystal Ring Shield', NULL, '0/100/0/0', NULL, '70/90/70/40', 0, 120, NULL, 40, 3, '10/0/0/0', '-/-/-/-', NULL, 4, NULL, 'Parry/strong attacks are replaced by a crystal ring projectile attack. Consumes 4 durability points per use.', 'weapons\\crystal-ring-shield.png'),
(160, 'Crystal Shield', NULL, '70/0/0/0', NULL, '100/60/80/80', 0, 250, NULL, 60, 5, '14/0/0/0', 'D/-/-/-', NULL, 4, NULL, NULL, 'weapons\\crystal-shield.png'),
(161, 'Spiked Shield', NULL, '78/0/0/0', '300/-/-/-', '90/28/69/40', 0, 160, NULL, 48, 3, '10/12/0/0', 'D/C/-/-', NULL, 4, NULL, NULL, 'weapons\\spiked-shield.png'),
(162, 'Pierce Shield', NULL, '82/0/0/0', NULL, '95/30/70/34', 0, 180, NULL, 49, 3.5, '11/14/0/0', 'D/C/-/-', NULL, 4, NULL, NULL, 'weapons\\pierce-shield.png'),
(163, 'Skull Lantern', NULL, '30/0/75/0', NULL, '26/8/20/20', 100, 60, NULL, 16, 0.5, '5/0/0/0', 'E/-/-/-', NULL, 5, NULL, 'As long as it''s held up (equip in left hand and hold the block button), it activates a light aura effect similar to Cast Light.', 'weapons\\skull-lantern.png'),
(164, 'Beatrice''s Catalyst', 240, '40/0/0/0', '0/0/0/0', '26/8/20/20', 100, 90, NULL, 16, 2, '6/0/10/0', 'E/-/A/-', NULL, NULL, 1, NULL, 'weapons\\beatrice-s-catalyst.png'),
(165, 'Demon''s Catalyst', 200, '110/0/170/0', NULL, '26/8/20/20', 100, 300, NULL, 16, 4, '12/10/10/0', 'D/D/B/-', NULL, NULL, 1, NULL, 'weapons\\demon-s-catalyst.png'),
(166, 'Izalith Catalyst', 240, '40/0/0/0', NULL, '26/8/20/20', 100, 300, NULL, 16, 2, '6/0/14/0', 'E/-/A/-', NULL, NULL, 1, NULL, 'weapons\\izalith-catalyst.png'),
(167, 'Logan''s Catalyst', 250, '46/0/0/0', NULL, '26/8/20/20', 100, 90, NULL, 16, 2, '6/0/24/0', 'E/-/S/-', NULL, NULL, 1, NULL, 'weapons\\logan-s-catalyst.png'),
(168, 'Manus Catalyst', 295, '190/0/0/0', NULL, '26/8/20/20', 100, 200, NULL, 16, 5, '14/0/13/0', 'B/-/S/-', NULL, NULL, 1, 'Increases damage of sorceries but halves casts.', 'weapons\\manus-catalyst.png'),
(169, 'Oolacile Catalyst', 180, '40/0/0/0', '-/180/-/-', '26/8/20/20', 100, 55, NULL, 16, 2, '6/0/10/0', 'E/-/C/-', NULL, NULL, 1, NULL, 'weapons\\oolacile-catalyst.png'),
(170, 'Oolacile Ivory Catalyst', 180, '24/0/0/0', NULL, '26/8/20/20', 100, 30, NULL, 16, 0.5, '3/0/12/0', 'E/-/C/-', NULL, NULL, 1, NULL, 'weapons\\oolacile-ivory-catalyst.png'),
(171, 'Sorcerer''s Catalyst', 240, '40/0/0/0', NULL, '26/8/20/20', 100, 90, NULL, 16, 2, '6/0/10/0', 'E/-/A/-', NULL, NULL, 1, NULL, 'weapons\\sorcerer-s-catalyst.png'),
(172, 'Tin Banishment Catalyst', 220, '145/0/0/0', NULL, '26/8/20/20', 100, 160, NULL, 16, 3, '10/10/12/0', 'E/D/A/-', NULL, NULL, 1, NULL, 'weapons\\tin-banishment-catalyst.png'),
(173, 'Tin Crystallization Catalyst', 315, '240/0/0/0', NULL, '26/8/20/20', 100, 90, NULL, 16, 2.5, '7/0/32/0', 'E/-/S/-', NULL, NULL, 1, NULL, 'weapons\\tin-crystallization-catalyst.png'),
(174, 'Tin Darkmoon Catalyst', 230, '44/0/0/0', NULL, '26/8/20/20', 100, 60, NULL, 16, 1, '4/0/0/16', 'E/-/-/A', NULL, NULL, 1, 'Catalyst that scales with Faith rather than Intelligence.', 'weapons\\tin-darkmoon-catalyst.png'),
(175, 'Canvas Talisman', 220, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/14', '-/-/-/A', NULL, NULL, 2, NULL, 'weapons\\canvas-talisman.png'),
(176, 'Darkmoon Talisman', 240, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/24', '-/-/-/A', NULL, NULL, 2, NULL, 'weapons\\darkmoon-talisman.png'),
(177, 'Ivory Talisman', 234, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/16', '-/-/-/A', NULL, NULL, 2, NULL, 'weapons\\ivory-talisman.png'),
(178, 'Sunlight Talisman', 234, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/14', '-/-/-/A', NULL, NULL, 2, NULL, 'weapons\\sunlight-talisman.png'),
(179, 'Talisman', 200, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/10', '-/-/-/B', NULL, NULL, 2, NULL, 'weapons\\talisman.png'),
(180, 'Thorolund Talisman', 165, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/0/10', '-/-/-/C', NULL, NULL, 2, NULL, 'weapons\\thorolund-talisman.png'),
(181, 'Velka''s Talisman', 220, '14/0/0/0', NULL, '26/8/20/20', 100, 50, NULL, 16, 0.3, '4/0/16/0', '-/-/A/-', NULL, NULL, 2, NULL, 'weapons\\velka-s-talisman.png'),
(182, 'Pyromancy Flame', 100, '0/0/40/0', NULL, '26/8/20/20', 100, 30, NULL, 16, 0, '4/0/0/0', '-/-/-/-', NULL, NULL, 3, NULL, 'weapons\\pyromancy-flame.png'),
(183, 'Ascended Pyromancy Flame', 196, '0/0/60/0', NULL, '26/8/20/20', 100, 30, NULL, 16, 0, '4/0/0/0', '-/-/-/-', NULL, NULL, 3, NULL, 'weapons\\ascended-pyromancy-flame.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `weapon_type`
--

CREATE TABLE IF NOT EXISTS `weapon_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `weapon_type`
--

INSERT INTO `weapon_type` (`id`, `name`) VALUES
(1, 'Fist'),
(2, 'Hammer'),
(3, 'Great Hammer'),
(4, 'Axe'),
(5, 'Greataxe'),
(6, 'Dagger'),
(7, 'Thrusting Sword'),
(8, 'Straight Sword'),
(9, 'Greatsword'),
(10, 'Ultra Greatsword'),
(11, 'Katana'),
(12, 'Curved Sword'),
(13, 'Curved Greatsword'),
(14, 'Spear'),
(15, 'Halberd'),
(16, 'Bow'),
(17, 'Crossbow'),
(18, 'Greatbow'),
(19, 'Whip');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `armor`
--
ALTER TABLE `armor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `armor_slots`
--
ALTER TABLE `armor_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `rings`
--
ALTER TABLE `rings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `shield_size`
--
ALTER TABLE `shield_size`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `spells`
--
ALTER TABLE `spells`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `spell_tool`
--
ALTER TABLE `spell_tool`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `spell_types`
--
ALTER TABLE `spell_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `weapon_type`
--
ALTER TABLE `weapon_type`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `armor`
--
ALTER TABLE `armor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=233;
--
-- Tilføj AUTO_INCREMENT i tabel `armor_slots`
--
ALTER TABLE `armor_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- Tilføj AUTO_INCREMENT i tabel `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `rings`
--
ALTER TABLE `rings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- Tilføj AUTO_INCREMENT i tabel `shield_size`
--
ALTER TABLE `shield_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tilføj AUTO_INCREMENT i tabel `spells`
--
ALTER TABLE `spells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- Tilføj AUTO_INCREMENT i tabel `spell_tool`
--
ALTER TABLE `spell_tool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tilføj AUTO_INCREMENT i tabel `spell_types`
--
ALTER TABLE `spell_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=205;
--
-- Tilføj AUTO_INCREMENT i tabel `weapon_type`
--
ALTER TABLE `weapon_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
