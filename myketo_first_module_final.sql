-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2020 at 11:51 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myketo`
--

-- --------------------------------------------------------

--
-- Table structure for table `familiar`
--

CREATE TABLE `familiar` (
  `familiar_id` int(11) NOT NULL,
  `familiar_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `meal_id` int(11) NOT NULL,
  `meal_name` varchar(255) NOT NULL,
  `meal_preparation_time` int(11) NOT NULL COMMENT 'in minutes ',
  `meal_kcal` int(11) NOT NULL,
  `meal_protein` int(11) NOT NULL,
  `meal_fats` int(11) NOT NULL,
  `meal_carbs` int(11) NOT NULL,
  `meal_type_id` int(11) NOT NULL COMMENT 'Breakfast, Lunch, Dinner, Snakes',
  `meal_image` varchar(255) NOT NULL,
  `meat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(40) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`meal_id`, `meal_name`, `meal_preparation_time`, `meal_kcal`, `meal_protein`, `meal_fats`, `meal_carbs`, `meal_type_id`, `meal_image`, `meat_id`, `product_id`, `active`, `created_at`, `created_by`, `updated_date`, `updated_by`) VALUES
(27, 'Sauteed Beef Pepper with Cheese and Parsley Topping', 22, 383, 21, 33, 1, 2, 'Sauteed-Beef-Pepper-with-Cheese-and-Parsley-Topping-1590006500.png', 0, 0, 1, '2020-05-23 17:34:14', '1', NULL, NULL),
(28, 'Spicy Beef Tender with Healthy Cucumber', 23, 386, 3, 32, 2, 3, 'Spicy-Beef-Tender-with-Healthy-Cucumber-1590004674.png', 0, 0, 1, '2020-05-21 00:57:54', '3', NULL, NULL),
(29, 'Beef Broccoli Crunchy Nugget', 23, 496, 25, 39, 10, 1, 'Beef-Broccoli-Crunchy-Nugget-1590006438.png', 0, 0, 1, '2020-05-21 01:27:18', '3', NULL, NULL),
(30, 'Warm Oxtail Soup with Nutmeg and Cloves', 44, 409, 25, 12, 3, 2, 'Warm-Oxtail-Soup-with-Nutmeg-and-Cloves-1590007315.png', 0, 0, 1, '2020-05-21 01:41:55', '3', NULL, NULL),
(32, 'Paprika and Cayenne Pulled Pork Butt with Roasted Asparagus', 34, 353, 20, 9, 4, 2, 'Paprika-and-Cayenne-Pulled-Pork-Butt-with-Roasted-Asparagus-1590041008.png', 0, 0, 1, '2020-05-21 11:03:28', '3', NULL, NULL),
(33, 'Stuffed Pork Black Pepper Jalapeno with Carrots', 18, 343, 17, 27, 5, 1, 'Stuffed-Pork-Black-Pepper-Jalapeno-with-Carrots-1590041694.png', 0, 0, 1, '2020-05-21 11:14:54', '3', NULL, NULL),
(34, 'Spicy Pork with Kale Garlic', 19, 454, 21, 15, 7, 2, 'Spicy-Pork-with-Kale-Garlic-1590042389.png', 0, 0, 1, '2020-05-21 11:26:29', '3', NULL, NULL),
(35, 'Pork Coconut Curry in Lettuce Blanket', 21, 369, 16, 31, 5, 2, 'Pork-Coconut-Curry-in-Lettuce-Blanket-1590043569.png', 0, 0, 1, '2020-05-21 11:46:09', '3', NULL, NULL),
(36, 'Baked Lamb Ribs Rosemary', 19, 413, 20, 35, 4, 3, 'Baked-Lamb-Ribs-Rosemary-1590043911.png', 0, 0, 1, '2020-05-21 11:51:51', '3', NULL, NULL),
(37, 'Oven Baked Lamb Ribs Macadamia with Tomato Salsa', 21, 486, 19, 44, 6, 3, 'Oven-Baked-Lamb-Ribs-Macadamia-with-Tomato-Salsa-1590046713.png', 0, 0, 1, '2020-05-21 12:38:33', '3', NULL, NULL),
(38, 'Grilled Lamb Shoulder with Creamy Mint Sauce', 22, 342, 23, 26, 3, 3, 'Grilled-Lamb-Shoulder-with-Creamy-Mint-Sauce-1590047621.png', 0, 0, 1, '2020-05-21 12:53:41', '3', NULL, NULL),
(44, 'Coconut Creamy Chicken Cheese', 14, 432, 10, 42, 3, 2, 'Coconut-Creamy-Chicken-Cheese-1590066315.png', 0, 0, 1, '2020-05-21 18:05:15', '3', NULL, NULL),
(45, 'Crispy Chicken Oregano with Coconut Coating', 14, 464, 13, 45, 3, 3, 'Crispy-Chicken-Oregano-with-Coconut-Coating-1590066753.png', 0, 0, 1, '2020-05-21 18:12:33', '3', NULL, NULL),
(46, 'Chicken Tomato Soup with Mushroom', 22, 202, 11, 15, 3, 3, 'Chicken-Tomato-Soup-with-Mushroom-1590068421.png', 0, 0, 1, '2020-05-21 18:40:21', '3', NULL, NULL),
(47, 'Chicken Cheese Balls with Coconut Crumbles', 21, 592, 25, 53, 1, 2, 'Chicken-Cheese-Balls-with-Coconut-Crumbles-1590084942.png', 0, 0, 1, '2020-05-21 23:15:42', '3', NULL, NULL),
(48, 'Grilled Chicken Satay with Spicy Cashew Sauces', 19, 451, 32, 33, 5, 3, 'Grilled-Chicken-Satay-with-Spicy-Cashew-Sauces-1590088611.png', 0, 0, 1, '2020-05-22 00:16:51', '3', NULL, NULL),
(49, 'Crispy Almond Chicken with Tomato Onion Sauce', 21, 433, 14, 7, 3, 3, 'Crispy-Almond-Chicken-with-Tomato-Onion-Sauce-1590089635.png', 0, 0, 1, '2020-05-22 00:33:55', '3', NULL, NULL),
(50, 'Marinated Chicken Lemon Jalapeno', 125, 396, 21, 31, 6, 3, 'Marinated-Chicken-Lemon-Jalapeno-1590090705.png', 0, 0, 1, '2020-05-22 00:51:45', '3', NULL, NULL),
(51, 'Tomato Chicken Stew with Baby Spinach', 41, 410, 21, 34, 4, 3, 'Tomato-Chicken-Stew-with-Baby-Spinach-1590091129.png', 0, 0, 1, '2020-05-22 00:58:49', '3', NULL, NULL),
(52, 'Grilled Chicken Thighs Rosemary', 39, 465, 30, 36, 2, 2, 'Grilled-Chicken-Thighs-Rosemary-1590091748.png', 0, 0, 1, '2020-05-22 01:09:08', '3', NULL, NULL),
(53, 'Cheesy Chicken Zucchini in Savory Coconut Gravy', 34, 471, 26, 383, 3, 1, 'Cheesy-Chicken-Zucchini-in-Savory-Coconut-Gravy-1590093312.png', 0, 0, 1, '2020-05-22 01:35:12', '3', NULL, NULL),
(54, 'Garlicky Chicken Asparagus', 39, 470, 27, 36, 3, 3, 'Garlicky-Chicken-Asparagus-1590127764.png', 0, 0, 1, '2020-05-22 11:09:24', '3', NULL, NULL),
(55, 'Crispy Chicken with Cheese Sauce', 41, 439, 124, 42, 5, 1, 'Crispy-Chicken-with-Cheese-Sauce-1590128366.png', 0, 0, 1, '2020-05-22 11:19:26', '3', NULL, NULL),
(56, 'Sticky Chicken with Spicy Sauce', 29, 386, 21, 31, 3, 2, 'Sticky-Chicken-with-Spicy-Sauce-1590128867.png', 0, 0, 1, '2020-05-22 11:27:47', '3', NULL, NULL),
(59, 'Tomato Chili Chicken Tender with Fresh Basils', 14, 410, 25, 31, 4, 3, 'Tomato-Chili-Chicken-Tender-with-Fresh-Basils-1590130216.png', 0, 0, 1, '2020-05-22 11:50:16', '3', NULL, NULL),
(60, 'Chicken Avocado Creamy Salad', 29, 448, 16, 40, 2, 1, 'Chicken-Avocado-Creamy-Salad-1590130757.png', 0, 0, 1, '2020-05-22 11:59:17', '3', NULL, NULL),
(61, 'Grilled Salmon Garlic with Tahini Sauce', 12, 298, 152, 24, 5, 2, 'Grilled-Salmon-Garlic-with-Tahini-Sauce-1590131271.png', 0, 0, 1, '2020-05-22 12:07:51', '3', NULL, NULL),
(62, 'Lemon Mint Grilled Prawns', 12, 238, 14, 19, 1, 3, 'Lemon-Mint-Grilled-Prawns-1590131663.png', 0, 0, 1, '2020-05-22 12:14:23', '3', NULL, NULL),
(63, 'Tuna Garlic Salad with Jalapeno Coleslaw', 14, 352, 14, 30, 5, 1, 'Tuna-Garlic-Salad-with-Jalapeno-Coleslaw-1590132115.png', 0, 0, 1, '2020-05-22 12:21:55', '3', NULL, NULL),
(65, 'Fried Crab Garlic with Zucchini Pickles', 26, 358, 27, 29, 7, 4, 'Fried-Crab-Garlic-with-Zucchini-Pickles-1590133464.png', 0, 0, 1, '2020-05-22 12:44:24', '3', NULL, NULL),
(66, 'Spinach Salmon Nugget', 21, 445, 25, 6, 2, 2, 'Spinach-Salmon-Nugget-1590149248.png', 0, 0, 1, '2020-05-22 17:07:28', '3', NULL, NULL),
(67, 'Tuna Cheese Steak with Asparagus Lemon Salad', 19, 656, 29, 59, 1, 3, 'Tuna-Cheese-Steak-with-Asparagus-Lemon-Salad-1590149856.png', 0, 0, 1, '2020-05-22 17:17:36', '3', NULL, NULL),
(68, 'Yellow Squid Curry with Chopped Cabbage', 12, 288, 14, 14, 6, 2, 'Yellow-Squid-Curry-with-Chopped-Cabbage-1590150331.png', 0, 0, 1, '2020-05-22 17:25:31', '3', NULL, NULL),
(69, 'Baked Juicy Salmon with Sautéed Leek and Asparagus', 26, 413, 27, 32, 1, 3, 'Baked-Juicy-Salmon-with-Sautéed-Leek-and-Asparagus-1590151263.png', 0, 0, 1, '2020-05-22 17:41:03', '3', NULL, NULL),
(70, 'Tuna Balls in Garlic Tomato Gravy', 23, 449, 38, 21, 4, 3, 'Tuna-Balls-in-Garlic-Tomato-Gravy-1590151716.png', 0, 0, 1, '2020-05-22 17:48:36', '3', NULL, NULL),
(71, 'Egg Fusion', 15, 109, 9, 6, 1, 1, 'Egg-Fusion-1590163139.png', 0, 0, 1, '2020-05-22 20:58:59', '3', NULL, NULL),
(72, 'Bewitching Blueberry Breakfast Muffins', 35, 155, 3, 14, 3, 1, 'Bewitching-Blueberry-Breakfast-Muffins-1590163469.png', 0, 0, 1, '2020-05-22 21:04:29', '3', NULL, NULL),
(73, 'Avocado Medley', 25, 404, 21, 20, 12, 4, 'Avocado-Medley-1590163757.png', 0, 0, 1, '2020-05-22 21:09:17', '3', NULL, NULL),
(74, 'Egg and Baccon Banquet Recipe', 10, 205, 11, 12, 1, 1, 'Egg-and-Baccon-Banquet-Recipe-1590164116.png', 0, 0, 1, '2020-05-22 21:15:16', '3', NULL, NULL),
(75, 'Tropical Coconut Breakfast Bar', 25, 327, 5, 33, 7, 4, 'Tropical-Coconut-Breakfast-Bar-1590164369.png', 0, 0, 1, '2020-05-22 21:19:29', '3', NULL, NULL),
(76, 'Delicious Raspberry Delight', 25, 223, 5, 18, 4, 4, 'Delicious-Raspberry-Delight-1590164771.png', 0, 0, 1, '2020-05-22 21:26:11', '3', NULL, NULL),
(77, 'Crispy Cauliflower Toasties', 25, 414, 20, 14, 1, 1, 'Crispy-Cauliflower-Toasties-1590165110.png', 0, 0, 1, '2020-05-22 21:31:50', '3', NULL, NULL),
(78, 'Big Blueberry Pancake Boost', 35, 415, 7, 32, 3, 4, 'Big-Blueberry-Pancake-Boost-1590165522.png', 0, 0, 1, '2020-05-22 21:38:42', '3', NULL, NULL),
(79, 'Amazing Cheesy Asparagus', 35, 230, 7, 22, 5, 4, 'Amazing-Cheesy-Asparagus-1590169346.png', 0, 0, 1, '2020-05-22 22:42:26', '3', NULL, NULL),
(80, 'Jalapeno Keto-Kickstart', 25, 347, 16, 28, 8, 4, 'Jalapeno-Keto-Kickstart-1590169646.png', 0, 0, 1, '2020-05-22 22:47:26', '3', NULL, NULL),
(81, 'Cheesy Sausage Layers', 30, 617, 32, 49, 12, 1, 'Cheesy-Sausage-Layers-1590169955.png', 0, 0, 1, '2020-05-22 22:52:35', '3', NULL, NULL),
(82, 'Mushroom Frenzy recipe', 25, 517, 26, 44, 5, 1, 'Mushroom-Frenzy-recipe-1590171091.png', 0, 0, 1, '2020-05-22 23:11:31', '3', NULL, NULL),
(83, 'Hearty Hot Halloumi', 25, 663, 28, 59, 4, 1, 'Hearty-Hot-Halloumi-1590171481.png', 0, 0, 1, '2020-05-22 23:18:01', '3', NULL, NULL),
(84, 'Avocado Loaded Tuna Salad', 15, 385, 18, 30, 9, 4, 'Avocado-Loaded-Tuna-Salad-1590171823.png', 0, 0, 1, '2020-05-22 23:23:43', '3', NULL, NULL),
(85, 'Chicken Montage recipe', 25, 236, 12, 16, 15, 4, 'Chicken-Montage-recipe-1590172133.png', 0, 0, 1, '2020-05-22 23:28:53', '3', NULL, NULL),
(86, 'Saucy Salmon Garlic', 20, 318, 25, 24, 1, 4, 'Saucy-Salmon-Garlic-1590172691.png', 0, 0, 1, '2020-05-22 23:38:11', '3', NULL, NULL),
(87, 'Smoked Salmon Souffle', 25, 469, 12, 43, 11, 4, 'Smoked-Salmon-Souffle-1590173066.png', 0, 0, 1, '2020-05-22 23:44:26', '3', NULL, NULL),
(88, 'Zesty Zucchini Melts', 20, 213, 9, 13, 7, 4, 'Zesty-Zucchini-Melts-1590173530.png', 0, 0, 1, '2020-05-22 23:52:10', '3', NULL, NULL),
(89, 'Chicken and Mushroom Melange', 25, 326, 33, 18, 8, 1, 'Chicken-and-Mushroom-Melange-1590173771.png', 0, 0, 1, '2020-05-22 23:56:11', '3', NULL, NULL),
(90, 'Juicy Jalapenos', 25, 79, 5, 6, 2, 4, 'Juicy-Jalapenos-1590174063.png', 0, 0, 1, '2020-05-23 00:01:03', '3', NULL, NULL),
(91, 'A touch of Italian salad', 20, 821, 65, 38, 12, 4, 'A-touch-of-Italian-salad-1590174417.png', 0, 0, 1, '2020-05-23 00:06:57', '3', NULL, NULL),
(92, 'Garlic and herb lamb', 20, 723, 43, 62, 1, 4, 'Garlic-and-herb-lamb-1590174676.png', 0, 0, 1, '2020-05-23 00:11:16', '3', NULL, NULL),
(93, 'Summer salmon sensation', 30, 1035, 25, 50, 3, 1, 'Summer-salmon-sensation-1590175197.png', 0, 0, 1, '2020-05-23 00:19:57', '3', NULL, NULL),
(94, 'Crispy bacon with crunchy cabbage', 20, 850, 21, 79, 9, 1, 'Crispy-bacon-with-crunchy-cabbage-1590175441.png', 0, 0, 1, '2020-05-23 00:24:01', '3', NULL, NULL),
(95, 'Bustling beef salad', 20, 704, 34, 58, 7, 4, 'Bustling-beef-salad-1590175658.png', 0, 0, 1, '2020-05-23 00:27:38', '3', NULL, NULL),
(96, 'Pork and pepper plate', 30, 842, 32, 29, 2, 1, 'Pork-and-pepper-plate-1590176093.png', 0, 0, 1, '2020-05-23 00:34:53', '3', NULL, NULL),
(97, 'Beef salad', 25, 705, 34, 58, 7, 1, 'Bustling-beef-salad-1590212628.png', 0, 0, 1, '2020-05-23 22:12:34', '3', NULL, NULL),
(98, '\"Potato\" Keto Salad', 10, 744, 18, 71, 7, 4, 'Potato-Keto-Salad-1590234409.png', 0, 0, 1, '2020-05-23 16:46:49', '3', NULL, NULL),
(99, 'Coleslaw', 5, 392, 26, 54, 14, 4, 'Keto-Coleslaw-1590234671.png', 0, 0, 1, '2020-05-23 18:18:16', '3', NULL, NULL),
(100, 'Easy Mug Cake', 5, 476, 74, 41, 11, 4, 'Easy-Mug-Cake-1590237059.png', 0, 0, 1, '2020-05-23 17:30:59', '3', NULL, NULL),
(101, 'Berry Keto Chia Pudding', 25, 786, 15, 73, 16, 4, 'Berry-Keto-Chia-Pudding-1590237261.png', 0, 0, 1, '2020-05-23 17:34:21', '3', NULL, NULL),
(102, 'Tuna Patty', 20, 1072, 102, 70, 7, 4, 'Keto-Tuna-Patty-1590238117.png', 0, 0, 1, '2020-05-23 18:19:09', '3', NULL, NULL),
(103, 'Matcha Breakfast Bowl', 10, 302, 10, 20, 3, 1, 'Matcha-Breakfast-Bowl-1590238971.png', 0, 0, 1, '2020-05-23 18:02:51', '3', NULL, NULL),
(104, 'Simple Salami Platter', 10, 732, 37, 61, 8, 1, 'Simple-Salami-Platter-1590239185.png', 0, 0, 1, '2020-05-23 18:06:25', '3', NULL, NULL),
(105, 'Potato Salad', 10, 744, 18, 71, 7, 4, 'Potato-Salad-1590239429.png', 0, 0, 1, '2020-05-23 18:10:29', '3', NULL, NULL),
(106, 'Chicken Taco Soup', 20, 600, 24, 50, 14, 2, 'Chicken-Taco-Soup-1590239609.png', 0, 0, 1, '2020-05-23 18:13:29', '3', NULL, NULL),
(107, 'Bacon and Kimchi Deviled Eggs', 10, 113, 6, 8, 1, 2, 'Bacon-and-Kimchi-Deviled-Eggs-1590239816.png', 0, 0, 1, '2020-05-23 18:16:56', '3', NULL, NULL),
(108, 'Almond Chia Pudding', 5, 660, 17, 51, 32, 3, 'Almond-Chia-Pudding-1590240400.png', 0, 0, 1, '2020-05-23 18:26:40', '3', NULL, NULL),
(109, 'Cinnamon Granola', 15, 890, 21, 76, 30, 3, 'Cinnamon-Granola-1590240710.png', 0, 0, 1, '2020-05-23 18:31:50', '3', NULL, NULL),
(110, 'Curried Tofu Scramble', 10, 468, 20, 38, 18, 3, 'Curried-Tofu-Scramble-1590240878.png', 0, 0, 1, '2020-05-23 18:34:38', '3', NULL, NULL),
(111, 'Hunan-Style Quorn and Broccoli Stir-Fry', 14, 544, 31, 421, 8, 4, 'Hunan-Style-Quorn-and-Broccoli-Stir-Fry-1590245782.png', 0, 0, 1, '2020-05-23 19:56:22', '3', NULL, NULL),
(112, 'Maple and Walnut Hemp Porridge', 5, 368, 14, 30, 16, 3, 'Maple-and-Walnut-Hemp-Porridge-1590246251.png', 0, 0, 1, '2020-05-23 20:04:11', '3', NULL, NULL),
(113, 'Spicy Roasted Almonds', 10, 226, 6, 19, 7, 4, 'Spicy-Roasted-Almonds-1590246484.png', 0, 0, 1, '2020-05-23 20:08:04', '3', NULL, NULL),
(114, 'High-Protein Quinoa Flake Bowls', 5, 390, 6, 30, 20, 1, 'High-Protein-Quinoa-Flake-Bowls-1590246687.png', 0, 0, 1, '2020-05-23 20:11:27', '3', NULL, NULL),
(115, 'Keto Beef Chili', 15, 1134, 59, 86, 30, 3, 'Keto-Beef-Chili-1590247034.png', 0, 0, 1, '2020-05-23 20:17:14', '3', NULL, NULL),
(116, 'Almond Butter Energy Balls', 10, 235, 6, 20, 7, 4, 'Almond-Butter-Energy-Balls-1590247318.png', 0, 0, 1, '2020-05-23 20:21:58', '3', NULL, NULL),
(117, 'Coconut Curry Salmon', 20, 910, 43, 70, 24, 3, 'Coconut-Curry-Salmon-1590247761.png', 0, 0, 1, '2020-05-23 20:29:21', '3', NULL, NULL),
(118, 'Cabbage Stir-Fry', 120, 1094, 74, 82, 15, 2, 'Cabbage-Stir-Fry-1590248114.png', 0, 0, 1, '2020-05-23 20:35:14', '3', NULL, NULL),
(119, 'Coconut Milk Braised Chicken', 30, 588, 40, 44, 6, 3, 'Coconut-Milk-Braised-Chicken-1590248625.png', 0, 0, 1, '2020-05-23 20:43:45', '3', NULL, NULL),
(120, 'Mug Bread with Herbs', 5, 934, 29, 80, 32, 1, 'Mug-Bread-with-Herbs-1590249077.png', 0, 0, 1, '2020-05-23 20:51:17', '3', NULL, NULL),
(121, 'Simple Skewers', 20, 688, 45, 55, 4, 3, 'Simple-Skewers-1590249383.png', 0, 0, 1, '2020-05-23 20:56:23', '3', NULL, NULL),
(122, 'No Bake Peanut Butter Cookie', 20, 222, 8, 14, 14, 1, 'No-Bake-Peanut-Butter-Cookie-1590249808.png', 0, 0, 1, '2020-05-23 21:03:28', '3', NULL, NULL),
(123, 'Okra Curry', 15, 338, 6, 28, 20, 2, 'Okra-Curry-1590250492.png', 0, 0, 1, '2020-05-23 21:14:52', '3', NULL, NULL),
(124, 'Super Green Soup', 20, 658, 11, 54, 28, 3, 'Super-Green-Soup-1590250755.png', 0, 0, 1, '2020-05-23 21:19:15', '3', NULL, NULL),
(125, 'Teriyaki Tofu Steaks', 20, 732, 23, 9, 20, 3, 'Teriyaki-Tofu-Steaks-1590251271.png', 0, 0, 1, '2020-05-23 21:27:51', '3', NULL, NULL),
(126, 'Cracking chocolate cake', 25, 322, 2, 20, 37, 4, 'Cracking-chocolate-cake-1590252715.png', 0, 0, 1, '2020-05-23 21:51:55', '3', NULL, NULL),
(127, 'Chocolate simplicity', 25, 313, 20, 35, 30, 4, 'Chocolate-simplicity-1590253057.png', 0, 0, 1, '2020-05-23 21:57:37', '3', NULL, NULL),
(128, 'Peanut butter', 20, 341, 5, 35, 5, 4, 'Peanut-butter-1590253455.png', 0, 0, 1, '2020-05-23 22:04:15', '3', NULL, NULL),
(129, 'khhjkhhhjh', 44, 444, 4, 44, 44, 1, 'khhjkhhhjh-1590426535.png', 0, 0, 1, '2020-05-25 22:08:55', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meal_details`
--

CREATE TABLE `meal_details` (
  `meal_detail_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `meal_description` text NOT NULL,
  `meal_Ingredients` text NOT NULL COMMENT 'comma separated',
  `meal_additional_tips` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal_details`
--

INSERT INTO `meal_details` (`meal_detail_id`, `meal_id`, `meal_description`, `meal_Ingredients`, `meal_additional_tips`) VALUES
(1, 23, 'Grilled eggplant and bell peppers are often on the menu during my winter stays in Turkey, where vegetables are typically cooked on a coal grill in the garden in the evening.', '2 oz. butter,4 eggs,3 oz. cheese,½ cup sour cream,salt,cayenne pepper,1½ tbsp lemon juice', ''),
(2, 24, 'aa', 'a', 'Explore your side dish options! Serve with aioli and a hearty salad. Or how about a delectable cauliflower mash?\r\n\r\nAnd don’t let any of this chicken go to waste! It’s just as delicious – and versatile – the next day. Serve it cold or warm, or as the centerpiece of a gorgeous salad!'),
(5, 27, '', '1 lb. beef rib-eye steak,\r\n3 tablespoons extra virgin olive oil,\r\n¼ cup chopped onion,\r\n½ teaspoon pepper,\r\n¼ cup goat cheese,\r\n2 teaspoons minced parsley,\r\n½ teaspoon grated garlic,\r\n½ teaspoon thyme', ''),
(6, 28, '', '1 lb. beef rib eye,\r\n2 tablespoons extra virgin olive oil,  \r\n2 teaspoons minced garlic,  \r\n2 teaspoons sliced shallot,  \r\n2 tablespoons red chili flakes, \r\n1-cup water, \r\n1 cup chopped cucumber', ''),
(7, 29, '', '1 lb. ground beef 3 eggs, \r\n2 tablespoons coconut flour, \r\n½ teaspoon pepper,  \r\n2 teaspoons minced garlic,  \r\n2 cups chopped broccoli, \r\n1 cup grated coconut', ''),
(8, 30, '', '1-¼ lbs. beef rib eye, \r\n2 tablespoons sliced shallots,  \r\n¾ teaspoon nutmeg 3 cloves,  \r\n¾ teaspoon pepper,  \r\n5 cups water,  \r\n½ cup sliced carrots,  \r\n½ cup cauliflower florets, \r\n¼ cup chopped leek,  \r\n2 tablespoons celeries', ''),
(10, 32, '', '2 lb. pork butt,\r\n2 teaspoons cayenne pepper,  \r\n2 teaspoons paprika,  \r\n2-½ teaspoons pepper,  \r\n2 tablespoons mustard, \r\n1 bunch asparagus spears,  \r\n2-½ tablespoons extra virgin olive oil,  \r\n½ teaspoon minced garlic,  \r\n1 tablespoon lemon juice', ''),
(11, 33, '', '1 lb. green jalapenos, \r\n1 lb. ground pork,\r\n½ cup goat cheese,  \r\n2 tablespoons diced onion,  \r\n4 tablespoons grated carrots,  \r\n½ teaspoon black pepper,\r\n4 eggs,\r\n2 tablespoons extra virgin olive oil,', ''),
(12, 34, '', '1 lb. pork shoulder,  \r\n¼ lb. pork rind,  \r\n5 teaspoons minced garlic,  \r\n2 shallots,  \r\n¼ cup red chilies,  \r\n2 lemon grasses,  \r\n2 lime leaves,  \r\n1 bay leaf, \r\n2 cups water,  \r\n½ cup coconut milk, \r\n2 cups chopped kale,  \r\n2 tablespoons extra virgin olive oil', ''),
(13, 35, '', '1 lb. boneless pork shoulder,  \r\n2 tablespoons extra virgin olive oil,  \r\n2 teaspoons minced garlic,  \r\n2 teaspoons sliced shallot,  \r\n1-teaspoon curry powder,  \r\n½ teaspoon turmeric,  \r\n1-teaspoon pepper,  \r\n2 cups water,  \r\n½ cup coconut milk,  \r\n1 handful of fresh lettuce', ''),
(14, 36, '', '1-lb. lamb leg,  \r\n3 tablespoons minced garlic,  \r\n3 tablespoons extra virgin olive oil,  \r\n¼ cup chopped rosemary,  \r\n½ tablespoon pepper', ''),
(15, 37, '', '¾ lb. lamb ribs,  \r\n½ cup macadamia,  \r\n1 teaspoon minced garlic,  \r\n½ cup fresh parsley,  \r\n4 tablespoons extra virgin olive oil,  \r\n½ teaspoon pepper,  \r\n1-cup cherry tomatoes,  \r\n1-tablespoon macadamia oil,  \r\n1-tablespoon balsamic vinegar', ''),
(16, 38, '', '1 lb. lamb shoulder,  \r\n4 tablespoons extra virgin olive oil,  \r\n½ teaspoon oregano,  \r\n2 tablespoons wine,  \r\n1-teaspoon rosemary, \r\n3 tablespoons chopped fresh dill,  \r\n¼ cup chopped fresh mint leaves,  \r\n1 tablespoon lemon juice,  \r\n¼ cup coconut cream', ''),
(22, 44, '', '¾ lb. boneless chicken thighs,  \r\n2-½ tablespoons extra virgin olive oil,  \r\n¼ cup coconut milk,  \r\n¾ cup chicken broth,  \r\n2 teaspoons minced garlic,  \r\n1 ½ teaspoons Italian seasoning,  \r\n½ cup grated Parmesan cheese,  \r\n1 ½ cup chopped spinach,  \r\n½ cup halved cherry tomatoes', ''),
(23, 45, '', '1 lb. boneless chicken thigh,  \r\n2 eggs, \r\n½ teaspoon oregano,  \r\n½ teaspoon pepper, \r\n¼ cup almond flour,  \r\n1 cup grated coconut,  \r\n1-cup extra virgin olive oil, to fry', ''),
(24, 46, '', '¾ lb. boneless chicken thigh,  \r\n2 tablespoons extra virgin olive oil,  \r\n½ cup chopped onion,  \r\n2 cups water, \r\n½ cup tomato puree,  \r\n½ teaspoon pepper,  \r\n¼ teaspoon nutmeg,  \r\n½ cup chopped mushroom,  \r\n2 tablespoons chopped celeries', ''),
(25, 47, '', '1 lb. boneless chicken thigh,  \r\n½ cup grated cheddar cheese,  \r\n2 eggs, \r\n2 tablespoons almond flour,  \r\n¼ teaspoon pepper, \r\n1 cup grated coconut,  \r\n½ cup extra virgin olive oil, to fry', ''),
(26, 48, '', '2 lbs. boneless chicken thighs,  \r\n½ teaspoon pepper,  \r\n3 tablespoons extra virgin olive oil,  \r\n¼ cup roasted cashews,  \r\n2 tablespoons red chili flakes,  \r\n¼ cup water,  \r\n2 tablespoons coconut aminos,  \r\n1 teaspoon minced garlic,  \r\n1 kaffir lime leaf', ''),
(27, 49, '', '¾ lb. boneless chicken thighs,  \r\n1 egg, \r\n¼ cup almond flour,  \r\n½ cup extra virgin olive oil, to fry,  \r\n1 cup chopped onion,  \r\n½ cup tomato puree,  \r\n¼ teaspoon pepper', ''),
(28, 50, '', '1-½ lbs. chicken thighs, \r\n4 tablespoons extra virgin olive oil, \r\n2 cups chopped onion,  \r\n2 tablespoons minced garlic, \r\n3 tablespoons chopped jalapeno,  \r\n3 tablespoons lemon juice,  \r\n2 teaspoons thyme,  \r\n1-teaspoon cinnamon', ''),
(29, 51, '', '1 lb. chopped boneless chicken thighs,  \r\n3 tablespoons olive oil,  \r\n2 tablespoons garlic,  \r\n½ teaspoon oregano,  \r\n½ teaspoon pepper,\r\n½ cup halved cherry tomato,\r\n1-cup water,  \r\n½ cup coconut milk, \r\n1 cup chopped baby spinach', ''),
(30, 52, '', '1-½ lbs. chicken thighs,  \r\n3 tablespoons balsamic vinegar,  \r\n3 tablespoons extra virgin olive oil,  \r\n3 tablespoons minced garlic,  \r\n1-½ teaspoons thyme,  \r\n2 teaspoons chopped rosemary,  \r\n½ teaspoon pepper', ''),
(31, 53, '', '1 lb. boneless chicken thighs,  \r\n2 tablespoons extra virgin olive oil,  \r\n2 tablespoons minced garlic,  \r\n½ teaspoon black pepper,  \r\n1 teaspoon Italian seasoning,  \r\n½ cup coconut milk,  \r\n1 cup sliced zucchini,  \r\n¾ cup grated cheddar cheese,  \r\n¼ cup chopped parsley', ''),
(32, 54, '', '1-½ lbs. boneless chicken thighs,  \r\n3 tablespoons extra virgin olive oil,  \r\n2 tablespoons lemon juice,  \r\n3 tablespoons minced garlic,  \r\n¾ teaspoon oregano, \r\n½ teaspoon black pepper,  \r\n½ lb. chopped asparagus,  \r\n1 fresh lemon', ''),
(33, 55, '', '1 lb. boneless chicken thigh,  \r\n½ teaspoon black pepper,  \r\n1 cup almond flour,  \r\n1 egg, \r\n½ cup extra virgin olive oil, to fry,  \r\n1 cup almond yogurt, \r\n1 cup grated cheddar cheese, \r\n2 teaspoons mustard', ''),
(34, 56, '', '1-½ lbs. boneless chicken thighs,  \r\n2 tablespoons lemon juice,  \r\n4 tablespoons extra virgin olive oil,  \r\n½ cup chopped onion,  \r\n2 tablespoons diced green chili,  \r\n1-tablespoon chili powder,  \r\n1-tablespoon sweet paprika,  \r\n1-teaspoon cumin,  \r\n½ teaspoon oregano,  \r\n3 tablespoons tomato puree', ''),
(37, 59, '', '2 lbs. boneless chicken thighs,  \r\n2 tablespoons minced garlic, \r\n2 lemon grasses 2 cups water,  \r\n¼ cup diced red tomatoes, \r\n2 tablespoons red chili flakes,  \r\n3 tablespoons extra virgin olive oil,  \r\n½ cup fresh basils', ''),
(38, 60, '', '1 lb. boneless chicken thighs, \r\n½ cup almond milk,  \r\n1-teaspoon oregano,  \r\n2 tablespoons lemon juice,  \r\n3 tablespoons extra virgin olive oil, \r\n1 ripe avocado,  \r\n2 tablespoons chopped celeries,  \r\n2 tablespoons cilantro,  \r\n¼ cup diced onion,  \r\n¼ teaspoon pepper', ''),
(39, 61, '', '1 ½ lbs. salmon,  \r\n1 fresh lime,  \r\n10 cloves garlic,  \r\n¼ cup extra virgin olive oil, \r\n1-teaspoon cumin,  \r\n¾ teaspoon coriander,  \r\n1 ½ teaspoons paprika,  \r\n½ teaspoon black pepper,  \r\n3 tablespoons tahini paste,  \r\n¼ cup water,\r\n1 tablespoon lemon juice,  \r\n¼ teaspoon garlic powder,  \r\n¾ cup chopped parsley', ''),
(40, 62, '', '2 lb. fresh prawn,  \r\n2 tablespoons chopped mint leaves,  \r\n¼ teaspoon thyme, \r\n2 tablespoons chopped parsley,  \r\n4 teaspoons minced garlic, \r\n¼ cup extra virgin olive oil,  \r\n2 tablespoons lemon juice,  \r\n¼ cup carrot stick,  \r\n¼ cup chopped lettuce, \r\n½ cup grated cheddar cheese', ''),
(41, 63, '', '1 lb. tuna fillet,\r\n2 tablespoons lemon juice,  \r\n2 tablespoons minced garlic,  \r\nA pinch of black pepper,  \r\n2 tablespoons butter, \r\n1 fresh apple,  \r\n1 medium carrot,  \r\n2 cups shredded cabbage,  \r\n1 green jalapeno,  \r\n3 tablespoons mayonnaise,  \r\n1 ½ tablespoons extra virgin olive oil', ''),
(43, 65, '', '4 soft shell crabs,  \r\n4 tablespoons minced garlic,  \r\n½ cup extra virgin olive oil,  \r\n1 medium zucchini, \r\n½ cup chopped onion,  \r\n2 teaspoons celery seeds,  \r\n1-teaspoon turmeric, \r\n1-cup apple cider vinegar', ''),
(44, 66, '', '½ lb. salmon fillet,  \r\n½ teaspoon pepper,  \r\n3 teaspoons minced garlic,  \r\n1 egg, \r\n1 cup chopped spinach,  \r\n½ cup extra virgin olive oil, to fry', ''),
(45, 67, '', '1 lb. tuna fillet, \r\n3 tablespoons olive oil,  \r\n½ teaspoon pepper, \r\n½ handful asparagus, \r\n2 tablespoons lemon juice,  \r\n½ teaspoon grated lemon zest,  \r\n¼ cup mayonnaise,  \r\n½ cup grated cheddar cheese', ''),
(46, 68, '', '1 lb. fresh squids,  \r\n2 tablespoons extra virgin olive oil,  \r\n2 teaspoons minced garlic,  \r\n2 teaspoons sliced shallots,  \r\n½ teaspoon turmeric,  \r\n1-teaspoon curry powder,  \r\n1 bay leaf 1 lemon grass,  \r\n1-inch galangal,  \r\n1 kaffir lime leaf,  \r\n1-cup coconut milk,\r\n½ cup chopped cabbage', ''),
(47, 69, '', '1 lb. salmon fillet,\r\n6 tablespoons extra virgin olive,  \r\n2 tablespoons lemon juice,  \r\n2 teaspoons minced garlic,  \r\n½ cup chopped leek,  \r\n½ cup chopped asparagus,  \r\n½ teaspoon pepper,  \r\n½ teaspoon ginger', ''),
(48, 70, '', '¾ lb. tuna fillet,  \r\n1-tablespoon coconut flour,  \r\n2 tablespoons chopped leek,  \r\n2 tablespoons extra virgin olive oil,  \r\n3 teaspoons minced garlic,  \r\n4 cups water,  \r\n½ teaspoon pepper,  \r\n½ cup chopped tomato, \r\n¼ cup chopped celeries', ''),
(49, 71, '', '5 large eggs, \r\n9 slices of ham (thin cut), \r\n½ cup of chopped roasted red peppers,\r\n ¼ cup crumbled feta cheese,\r\n⅓ cup finely chopped fresh spinach,\r\n1 ½ Tbsp pesto sauce,\r\nPinch of salt and pepper', ''),
(50, 72, '', '¼ cup of blueberries,\r\n¼ cup of almonds (sliced), \r\n16 oz cream cheese, \r\n2 eggs, \r\n½ tsp of sugar-free vanilla extract,\r\n½ cup of low carb sugar substitute', ''),
(51, 73, '', '2 hard boiled eggs (chopped), \r\n1 medium tomato (chopped),\r\n1 ripe avocado (chopped),\r\n1 tsp fresh lemon juice,\r\n3 slices cooked bacon (chopped), \r\nPinch of salt and black pepper', ''),
(52, 74, '', '6 large hard-boiled eggs, \r\n12 slices of bacon,\r\n3.5 oz cream cheese,\r\n¼ tsp dried thyme', ''),
(53, 75, '', '¼ cup coconut oil,\r\n½ cup almond butter,\r\n20 drops Stevia,\r\n6 tbsp shredded coconut (unsweetened) \r\n2 oz Macadamia nuts', ''),
(54, 76, '', '5.2 oz fresh raspberries,\r\n1 cup coconut milk,\r\n½ cup chia seeds,\r\n½ cup almond milk (unsweetened), \r\n3 tsp vanilla extract (unsweetened)', ''),
(55, 77, '', '1 small cauliflower head (grated),\r\n1 avocado (chopped),\r\n½ cup mozzarella cheese (chopped),\r\n1 large egg,\r\n1 tbsp fresh lime juice,\r\n½ tsp garlic powder,\r\nPinch of salt and pepper', ''),
(56, 78, '', '30g blueberries,\r\n⅛ tsp Stevia,\r\n¼ cup almond flour, \r\n¼ tsp cinnamon,\r\n¼ tsp baking powder, \r\n1 tsp coconut flour,\r\n1 tbsp coconut oil,\r\n1 tbsp almond milk, \r\n1 egg,\r\nPinch of salt', ''),
(57, 79, '', '16 oz asparagus, \r\n1 cup whipping cream, \r\n½ cup grated cheese,\r\n2 large hard boiled eggs,\r\nCooking spray,\r\nSalt and pepper', ''),
(58, 80, '', '1 medium jalapeno (finely sliced). \r\n1 cup mozzarella (grated) \r\n ½ cup cheddar (grated). \r\n8 slices of bacon (cooked and chopped). \r\n2 cups almond flour. \r\n¼ cup coconut flour. \r\n2 large eggs. \r\n1 tsp baking powder. \r\n½ tsp salt. \r\n¼ cup whipping cream. \r\n2 tsp cream of tartar.', ''),
(59, 81, '', '3.5 oz ground pork sausage,\r\n7.5 oz radishes (chopped),\r\n1 large egg,\r\n¼ cup cheddar cheese (grated),\r\n¼ tsp salt,\r\n¼ tsp black pepper', ''),
(60, 82, '', '3 large eggs,\r\n4 large mushrooms (chopped),\r\n1 oz cheddar cheese (grated),\r\n¼ red onion (chopped),\r\n1 oz butter (for frying),\r\nPinch of salt and pepper', ''),
(61, 83, '', '3 oz halloumi cheese (chopped),\r\n1 red onion (chopped),\r\n4 oz bacon (chopped),\r\n4 large eggs,\r\n4 tbsp fresh parsley (chopped),\r\n½ cup olives (pitted),\r\n2 tbsp olive oil,\r\nPinch of salt and pepper', ''),
(62, 84, '', '1 5oz tin tuna in water (drained),\r\n¼ cup full fat mayonnaise,\r\n½ tsp salt,\r\n½ tsp pepper,\r\n1 red onion (chopped),\r\n1 celery stick (chopped)', ''),
(63, 85, '', '½ cup celery stick (finely chopped),\r\n¾ cup full fat mayonnaise,\r\n1 ½ tbsp mustard,\r\nPinch of salt and pepper', ''),
(64, 86, '', '16 oz fresh salmon,\r\n 2 garlic cloves,\r\n¼ cup mayonnaise,\r\n¼ cup parmesan cheese (grated),\r\n¼ cup fresh parsley (chopped),\r\n2 tbsp ghee', ''),
(65, 87, '', '3 oz smoked salmon (chopped),\r\n5 cups steamed broccoli,\r\n½ cup cream cheese (softened),\r\n3 garlic cloves (crushed),\r\n3 tbsp butter,\r\n1 cup coconut milk,\r\n¼ cup parmesan cheese (grated),\r\n½ tsp salt,\r\n½ tsp black pepper', ''),
(66, 88, '', '2 zucchinis (halved lengthways),\r\n4 large tomatoes (chopped),\r\n1 150g mozzarella ball (chopped),\r\n1 tsp lime juice,\r\n1 handful basil leaves,\r\n3 tbsp olive oil', ''),
(67, 89, '', '4 chicken legs (skin removed),\r\n11 oz small cup mushrooms (halved),\r\n2 cups garlic and herb passata,\r\n1 chicken stock cube,\r\n½ cup black olives (pitted),\r\n1 tbsp olive oil', ''),
(68, 90, '', '8 jalapenos (halved and deseeded),\r\n8 slices of bacon (cut in half lengthways),\r\n½ cup cheddar cheese (grated),\r\n8 oz cream cheese,\r\n1 tsp salt,\r\n1 tsp pepper', ''),
(69, 91, '', '10 oz lettuce (chopped),\r\n3 oz salami,\r\n3 oz Parma ham,\r\n5 oz mozzarella cheese,\r\n5 oz canned artichokes,\r\n3 oz roasted red peppers,\r\n1 oz sun dried tomatoes,\r\n4 tbsp olive oil,\r\n3 tbsp olives (pitted),\r\n2 tbsp fresh parsley (chopped),\r\nI chilli pepper (chopped),\r\n½ tbsp salt', ''),
(70, 92, '', '8 lamb chops,\r\n1 tbsp olive oil,\r\n1 tbsp butter,\r\nPinch of salt and pepper,\r\n4 oz garlic and herb butter', ''),
(71, 93, '', '1 cup mayonnaise,\r\n½ cup full-fat Greek yogurt,\r\n4 tbsp pesto,\r\nSalt and pepper,\r\n32 oz salmon,\r\n4 tbsp pesto', ''),
(72, 94, '', '16 oz green cabbage (chopped),\r\n10 oz bacon (chopped),\r\n2 oz butter,\r\nSalt and pepper to taste', ''),
(73, 95, '', '16 oz green cabbage (finely chopped),\r\n1 ¼ cups mayonnaise,\r\n1 tbsp mustard, \r\n24 oz roast beef (cooked),\r\n5 oz cherry tomatoes,\r\n4 pickles', ''),
(74, 96, '', '10.6 oz pork (cut into strips),\r\n4 oz butter,\r\n2 peppers (sliced),\r\n2 spring onions (chopped),\r\n2 tbsp almonds,\r\n1 tsp chilli paste', ''),
(75, 97, '', '16 oz green cabbage (finely chopped),\r\n1 ¼ cups mayonnaise,\r\n1 tbsp mustard,\r\n24 oz roast beef (cooked),\r\n5 oz cherry tomatoes,\r\n4 pickles', ''),
(76, 98, '', '280 g Cauliflower Florets (boiled or steamed (let them cool),\r\n2 Eggs (boiled, grated),\r\n4 tbsp Onions (chopped),\r\n4 tbsp Mayonnaise,\r\n4 tsp olive oil,\r\n4 tsp Vinegar,\r\npinch of salt and pepper', ''),
(77, 99, '', '40 g cooked ham (sliced),\r\n140 g cabbage (shredded),\r\n2 tbsp scallion (chopped),\r\n4 tbsp Mayonnaise,\r\n3 tsp mustard,\r\n2 tsp apple cider vinegar,\r\npinch of salt and pepper', ''),
(78, 100, '', '2 tbsp olive oil,\r\n1 1/2 tsp coconut flour,\r\n2 tsp erythritol,\r\n1/4 tsp baking powder,\r\npinch of salt and pepper,\r\n1/4 tsp vanilla extract,\r\n2 tbsp almond milk,\r\n2 Eggs', ''),
(79, 101, '', '1/2 cup coconut milk,\r\n2 tbsp raw Cacao Nibs,\r\n4 tbsp chia seeds,\r\n1/4 tsp Cinnamon Powder,\r\n1/4 cup blueberries', ''),
(80, 102, '', '400 g canned tuna (drained),\r\n2 tbsp almond flour,\r\n1/2 Onions,\r\n2 tbsp fresh dill (chopped),\r\n2 tbsp Mayonnaise,\r\n2 Eggs,\r\n4 tsp lemon juice,\r\n2 tbsp olive oil (for cooking),\r\npinch of salt and pepper', ''),
(81, 103, '', '2 cup coconut milk (or almond milk),\r\n4 tbsp chia seeds,\r\n1-2 tsp Matcha Powder,\r\ndrops stevia (vanilla),\r\nsalt (pink himalayan, pinch)', ''),
(82, 104, '', '4 cup Spinach,\r\n2 Eggs (boiled, cut in half),\r\n10 salami (slices),\r\n12 olives,\r\n2 tbsp Mayonnaise,\r\n112 g cucumber (cut into circles),\r\n4 tsp olive oil,\r\npinch of salt and pepper', ''),
(83, 105, '', '280 g Cauliflower Florets (boiled or steamed (let them cool),\r\n2 Eggs (boiled, grated),\r\n4 tbsp Onions (chopped),\r\n4 tbsp Mayonnaise,\r\n4 tsp olive oil,\r\n4 tsp Vinegar,\r\npinch of salt and pepper', ''),
(84, 106, '', '4 tbsp Onions (white),\r\n2 tbsp bell pepper (diced),\r\n2 garlic (crushed),\r\n2 tbsp Jalapenos (minced),\r\n3 cup Chicken stock,\r\n1/3 cup sugar-free tomato sauce,\r\n2 tbsp olive oil,\r\n4 tsp Taco spice mix,\r\n100 g avocado (diced),\r\ncilantro (for garnish)', ''),
(85, 107, '', '1 tbsp Mayonnaise,\r\n1 tbsp Kimchi (chopped),\r\n1 tbsp Bacon slices,\r\n1/2 tsp soy sauce,\r\n2 tsp Spring onions (chopped),\r\n1 tsp sesame seeds (toasted)', ''),
(86, 108, '', '2 cup almond milk,\r\n4 tbsp desiccated coconut,\r\n2 tsp Cocoa Powder,\r\n2 tbsp powdered erythritol,\r\n1/4 tsp vanilla extract,\r\n2 tbsp chia seeds,\r\n4 tbsp Almonds (chopped, as toppings),\r\n2 tsp Chocolate chips (unsweetened)', ''),
(87, 109, '', '4 tbsp almond flour,\r\n4 tbsp desiccated coconut,\r\n2 tsp chia seeds,\r\n1/2 tsp Cinnamon Powder,\r\n2 tsp powdered erythritol,\r\n1/4 cup almond milk (to serve),\r\n40 g walnuts, pecans, and almonds (chopped)', ''),
(88, 110, '', '2 garlic (minced),\r\n60 g bell pepper (diced),\r\n30 g shallot (thinly sliced),\r\n2 tbsp Spring onions (chopped),\r\n2 tbsp olive oil,\r\n2 tbsp nutritional yeast,\r\n4 tsp curry powder', ''),
(89, 111, '', '150 g Quorn Nuggets,\r\n50 g broccoli (trimmed into florets),\r\n60 g bell pepper (diced),\r\n20 g ginger (minced),\r\n2 tbsp Vegetable Oil,\r\n2 tbsp Chili-Bean Paste,\r\n1/2 cup water,\r\n2 tbsp Vinegar,\r\n4 tsp low-sodium soy sauce,\r\n4 tbsp Tomato Sauce (sugar-free)', ''),
(90, 112, '', '1/4 cup hemp hearts,\r\n4 tbsp coconut flour,\r\n2 tbsp flex seeds,\r\n1/2 cup almond milk,\r\n2 tbsp walnuts,\r\n2 tbsp sugar-free maple syrup', ''),
(91, 113, '', '1 tbsp olive oil,\r\n120 g Almonds,\r\npinch of salt and pepper,\r\n1 tsp chili powder,\r\n1 tsp cumin powder', ''),
(92, 114, '', '1/4 cup Quinoa flakes,\r\n1/3 cup almond milk,\r\n2 tbsp Almond Butter,\r\n2 tbsp flex seeds,\r\n1/2 tsp powdered stevia', ''),
(93, 115, '', '2 tbsp olive oil,\r\n300 g ground beef,\r\n1/4 Onions (white),\r\n2 garlic (minced),\r\n100 g canned tomatoes (chopped),\r\n4 tbsp tomato paste,\r\n2 tsp coconut aminos,\r\n1/4 cup water,\r\n2 tsp chili powder,\r\n1/2 tsp cumin seeds,\r\n1/4 tsp dried oregano,\r\npinch of salt and pepper', ''),
(94, 116, '', '1/4 cup Almonds,\r\n1/4 cup Almond Butter,\r\n1 tbsp Stevia,\r\n1/4 Chocolate chips (unsweetened),\r\n1 tbsp MCT oil', ''),
(95, 117, '', '2 tbsp olive oil,\r\n1/4 Onions (white),\r\n360 g salmon fillet,\r\n392 g Tomatoes (canned, diced),\r\n392 g coconut milk,\r\n4 garlic (minced),\r\n2 tsp curry powder,\r\n2 tsp ginger (chopped),\r\n1/2 tsp paprika,\r\npinch of salt and pepper', ''),
(96, 118, '', '280 g Pork butt (cut into pieces),\r\n4 tbsp Cooking Oil,\r\n1/4 Carrots (cut into strips),\r\n1/4 bell pepper (cut into strips),\r\n1/4 bell pepper (cut into strips),\r\n2 cup cabbage,\r\nsalt and black pepper to taste,\r\n2 tsp sesame seeds,\r\n1/2 tsp ginger', ''),
(97, 119, '', '200 g Bone-in chicken pieces,\r\n20 g ginger (thinly sliced),\r\n2 stalk Lemongrass,\r\n2 green chili,\r\n4 kaffir lime leaves,\r\n2 tsp Fish Sauce,\r\n1/2 cup water,\r\n4 tbsp coconut milk', ''),
(98, 120, '', '2 tbsp olive oil,\r\n6 tbsp almond flour,\r\n1/2 tsp baking powder,\r\n1/2 tsp erythritol,\r\n1/2 tsp Italian seasoning,\r\npinch of salt and pepper,\r\n2 Eggs,\r\n1/2 tsp dried rosemary (as garnish)', ''),
(99, 121, '', '196 g boneless pork rib (cut into 8 pieces),\r\n4 Onions,\r\npinch of salt and pepper,\r\nthyme,\r\nIceberg lettuce,\r\n4 slice zucchini (quarter),\r\n4 slice bell pepper (quarter),\r\n4 slice Eggplant (quarter),\r\n8 slice Tomatoes (quarter),\r\n4 slice Onions (quarter)', ''),
(100, 122, '', '1/2 cup peanut butter,\r\n1/4 cup sugar-free maple syrup,\r\n6 tbsp coconut flour,\r\n2 tbsp erythritol', ''),
(101, 123, '', '400 g Okra (cut into 1\" pieces),\r\n2 tbsp Vegetable Oil,\r\n1/2 red onion (thinly sliced),\r\n2 tsp ginger-garlic paste,\r\n2 tsp tomato paste,\r\n4 tsp curry powder,\r\n1/2 cup water,\r\npinch of salt and pepper', ''),
(102, 124, '', '2 tbsp olive oil,\r\n2 cup Cauliflower Florets,\r\n1/4 Onions (diced),\r\n4 garlic (chopped),\r\n4 cup Spinach,\r\n1/4 cup water,\r\n1/4 cup coconut milk,\r\npinch of salt and pepper', ''),
(103, 125, '', '300 g tofu,\r\n2 tsp ginger (minced),\r\n2 tbsp soy sauce (low-sodium),\r\n2 tbsp mirin,\r\n4 tsp sugar-free maple syrup,\r\n1/4 cup water,\r\n2 tbsp scallion (chopped),\r\n2 tbsp sesame oil,\r\n2 tsp sesame seeds', ''),
(104, 126, '', '4 large eggs,\r\n2 ½ cups butter,\r\n½ cup sugar substitute,\r\n12 oz baking chocolate (unsweetened),\r\n⅓ cup water,\r\n¼ tsp salt,\r\nA little boiling water', ''),
(105, 127, '', '1 cup thick whipping cream,\r\n2 tbsp cocoa powder (unsweetened),\r\n½ tsp almond extract,\r\n½ tsp espresso powder (instant), \r\n1 tbsp Stevia,\r\n2 tbsp dark chocolate chips, \r\nPinch of salt', ''),
(106, 128, '', '1 cup peanut butter (unsweetened, softened),\r\n1 cup coconut oil,\r\n¼ cup vanilla flavoured almond milk', ''),
(107, 129, '4\r\n54\r\n54\r\n5\r\n54\r\n4\r\n4', '4', '5');

-- --------------------------------------------------------

--
-- Table structure for table `meal_meat_types`
--

CREATE TABLE `meal_meat_types` (
  `meal_meat_id` int(11) NOT NULL,
  `meat_type_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal_meat_types`
--

INSERT INTO `meal_meat_types` (`meal_meat_id`, `meat_type_id`, `meal_id`) VALUES
(38, 3, 28),
(39, 3, 29),
(41, 3, 30),
(43, 2, 32),
(44, 2, 33),
(45, 2, 34),
(46, 2, 35),
(47, 5, 36),
(48, 5, 37),
(49, 5, 38),
(56, 1, 44),
(57, 1, 45),
(58, 1, 46),
(59, 1, 47),
(60, 1, 48),
(61, 1, 49),
(62, 1, 50),
(63, 1, 51),
(64, 1, 52),
(65, 1, 53),
(66, 1, 54),
(67, 1, 55),
(68, 1, 56),
(71, 1, 59),
(72, 1, 60),
(73, 4, 61),
(74, 4, 62),
(75, 7, 63),
(77, 4, 65),
(78, 4, 66),
(79, 4, 67),
(80, 7, 68),
(81, 4, 69),
(82, 4, 70),
(83, 7, 71),
(84, 7, 72),
(85, 7, 73),
(86, 7, 74),
(87, 7, 75),
(88, 7, 76),
(89, 7, 77),
(90, 7, 78),
(91, 7, 79),
(92, 7, 80),
(93, 7, 81),
(94, 7, 82),
(95, 7, 83),
(96, 7, 84),
(97, 1, 85),
(98, 4, 86),
(99, 4, 87),
(100, 7, 88),
(101, 1, 89),
(102, 7, 90),
(103, 7, 91),
(104, 5, 92),
(105, 4, 93),
(106, 7, 94),
(107, 7, 95),
(108, 2, 96),
(110, 7, 98),
(114, 7, 100),
(116, 3, 27),
(117, 7, 101),
(119, 7, 103),
(120, 7, 104),
(121, 7, 105),
(122, 7, 106),
(123, 7, 107),
(124, 7, 99),
(125, 7, 102),
(126, 7, 108),
(127, 7, 109),
(128, 7, 110),
(129, 7, 111),
(130, 7, 112),
(131, 7, 113),
(132, 7, 114),
(133, 3, 115),
(134, 7, 116),
(135, 7, 117),
(136, 1, 118),
(137, 1, 119),
(138, 7, 120),
(139, 7, 121),
(140, 7, 122),
(141, 7, 123),
(142, 7, 124),
(143, 7, 125),
(144, 7, 126),
(145, 7, 127),
(146, 7, 128),
(147, 7, 97),
(148, 1, 129);

-- --------------------------------------------------------

--
-- Table structure for table `meal_product_types`
--

CREATE TABLE `meal_product_types` (
  `meal_product_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal_product_types`
--

INSERT INTO `meal_product_types` (`meal_product_id`, `product_type_id`, `meal_id`) VALUES
(57, 10, 28),
(58, 3, 29),
(59, 12, 29),
(62, 6, 30),
(67, 10, 32),
(68, 1, 33),
(69, 5, 33),
(70, 10, 33),
(71, 10, 34),
(72, 12, 34),
(73, 10, 35),
(74, 12, 35),
(75, 10, 36),
(76, 10, 37),
(77, 10, 38),
(78, 12, 38),
(93, 5, 44),
(94, 10, 44),
(95, 12, 44),
(96, 3, 45),
(97, 12, 45),
(98, 1, 46),
(99, 2, 46),
(100, 3, 47),
(101, 5, 47),
(102, 10, 47),
(103, 12, 47),
(104, 10, 48),
(105, 1, 49),
(106, 3, 49),
(107, 10, 49),
(108, 1, 50),
(109, 7, 51),
(110, 12, 51),
(111, 10, 52),
(112, 5, 53),
(113, 7, 53),
(114, 1, 54),
(115, 3, 55),
(116, 1, 56),
(120, 10, 59),
(121, 1, 60),
(122, 7, 60),
(123, 10, 60),
(124, 10, 61),
(125, 5, 62),
(126, 10, 62),
(127, 10, 63),
(131, 1, 65),
(132, 10, 65),
(133, 3, 66),
(134, 5, 67),
(135, 7, 68),
(136, 10, 68),
(137, 10, 69),
(138, 10, 70),
(139, 3, 71),
(140, 5, 71),
(141, 3, 72),
(142, 5, 72),
(143, 3, 73),
(144, 3, 74),
(145, 5, 74),
(146, 4, 75),
(147, 6, 75),
(148, 12, 75),
(149, 7, 76),
(150, 12, 76),
(151, 3, 77),
(152, 3, 78),
(153, 7, 78),
(154, 3, 79),
(155, 5, 79),
(156, 3, 80),
(157, 5, 80),
(158, 3, 81),
(159, 5, 81),
(160, 1, 82),
(161, 2, 82),
(162, 5, 82),
(163, 6, 82),
(164, 1, 83),
(165, 3, 83),
(166, 10, 83),
(167, 1, 84),
(168, 1, 85),
(169, 5, 86),
(170, 10, 86),
(171, 5, 87),
(172, 6, 87),
(173, 7, 87),
(174, 10, 88),
(175, 2, 89),
(176, 10, 89),
(177, 5, 90),
(178, 10, 91),
(179, 6, 92),
(180, 10, 92),
(181, 9, 93),
(182, 6, 94),
(183, 10, 95),
(184, 1, 96),
(185, 6, 96),
(187, 1, 98),
(188, 3, 98),
(189, 10, 98),
(195, 3, 100),
(196, 6, 100),
(197, 7, 100),
(200, 1, 27),
(201, 13, 27),
(202, 7, 101),
(205, 7, 103),
(206, 3, 104),
(207, 10, 104),
(208, 3, 105),
(209, 1, 106),
(210, 1, 107),
(211, 1, 99),
(212, 3, 102),
(213, 10, 102),
(214, 4, 108),
(215, 7, 108),
(216, 12, 108),
(217, 12, 109),
(218, 1, 110),
(219, 10, 110),
(220, 1, 111),
(221, 4, 112),
(222, 7, 112),
(223, 12, 112),
(224, 4, 113),
(225, 10, 113),
(226, 4, 114),
(227, 7, 114),
(228, 1, 115),
(229, 4, 116),
(230, 6, 116),
(231, 1, 117),
(232, 10, 117),
(233, 12, 117),
(234, 1, 118),
(235, 7, 119),
(236, 12, 119),
(237, 3, 120),
(238, 10, 120),
(239, 1, 121),
(240, 6, 122),
(241, 12, 122),
(242, 1, 123),
(243, 10, 123),
(244, 1, 124),
(245, 10, 124),
(246, 12, 124),
(247, 9, 125),
(248, 3, 126),
(249, 6, 126),
(250, 7, 127),
(251, 7, 128),
(252, 12, 128),
(253, 1, 97),
(254, 1, 129),
(255, 2, 129);

-- --------------------------------------------------------

--
-- Table structure for table `meal_recipe_steps`
--

CREATE TABLE `meal_recipe_steps` (
  `meal_recipe_step_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `meal_recipe_step_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal_recipe_steps`
--

INSERT INTO `meal_recipe_steps` (`meal_recipe_step_id`, `meal_id`, `meal_recipe_step_description`) VALUES
(1, 23, 'Melt the butter over medium heat and add the eggs. Stir until scrambled. Cook through, but do not overcook the eggs.'),
(2, 23, 'Spoon the hot eggs into a blender. Add the cheese and sour cream and blend until smooth and creamy. Add salt and cayenne pepper to taste.'),
(3, 23, 'Roast the asparagus in olive oil over medium heat in a large frying pan. Add salt and pepper, remove from frying pan for now, and set aside.'),
(4, 23, 'Sauté the butter in the frying pan until it is golden brown and has a nutty smell. Remove from heat, let cool, and add the lemon juice.'),
(5, 23, 'Put the asparagus back into the frying pan and stir together with the butter until it gets hot.'),
(6, 23, 'Serve the asparagus with the sautéed butter and the creamy eggs.'),
(7, 24, '1'),
(8, 24, '2'),
(9, 24, '3'),
(50, 28, 'Cut the beef rib eye into thin slices then set aside.'),
(51, 28, 'Preheat a skillet over medium heat then pour extra virgin olive oil into it.'),
(52, 28, 'Stir in minced garlic and sliced shallot to the skillet then sauté until lightly golden brown and aromatic.'),
(53, 28, 'Add sliced beef to the skillet then stir until just wilted.'),
(54, 28, 'After that, pour water over the beef then bring to boil.'),
(55, 28, 'Once it is boiled, reduce the heat and cook until the water is completely absorbed into the beef and the beef is tender.'),
(56, 28, 'Next, stir in red chili flakes and chopped cucumber to the skillet then sauté and cook until wilted.'),
(57, 28, 'Once it is done, remove the cooked beef from the heat and transfer to a serving dish.'),
(58, 28, 'Serve and enjoy.'),
(59, 29, 'Preheat a steamer over medium heat and line a baking pan with aluminum foil. Set aside.'),
(60, 29, 'Combine ground beef with 2 eggs, coconut flour, pepper, minced garlic, and chopped broccoli in a food processor then process until smooth.'),
(61, 29, 'Transfer the mixture to the prepared baking pan then spread evenly.'),
(62, 29, 'Place the baking pan in the steamer then steam the nugget for approximately 20 minutes or until set.'),
(63, 29, 'Remove the baking pan from the steamer and let it cool.'),
(64, 29, 'When the nugget is already cool, take it out of the baking pan then cut into thick slices.'),
(65, 29, 'Crack the remaining egg then place in a bowl. Stir the egg until just incorporated.'),
(66, 29, 'Dip nugget into the egg then roll in the grated coconut.'),
(67, 29, 'Refrigerate the beef nugget for at least 2 hours.'),
(68, 29, 'Remove the beef nugget from the refrigerator and fry.'),
(69, 29, 'Serve and enjoy.'),
(77, 30, 'Cut the beef into medium pieces then place in a pot'),
(78, 30, 'Pour water into a pot then bring t boil.'),
(79, 30, 'Once it is boiled, reduce the heat and season the beef with sliced shallots, nutmeg, clove, and pepper. Cook until the beef is tender.'),
(80, 30, 'Next, add sliced carrots, leek, and cauliflower florets to the pot then stir well. Cook until the vegetables are wilted but not too soft.'),
(81, 30, 'When the soup is done, remove from heat and transfer to a serving bowl.'),
(82, 30, 'Sprinkle chopped celeries on top and serve warm.'),
(83, 30, 'Enjoy immediately.'),
(95, 32, 'Rub the pork butt with cayenne pepper, paprika, pepper, and mustard then marinate for at least 2 hours or more. Store in the fridge to keep it fresh.'),
(96, 32, 'After 2 hours, remove the pork butt from the fridge and thaw at room temperature.'),
(97, 32, 'Preheat an oven to 350°F and line a baking tray with aluminum foil.'),
(98, 32, 'Once the oven is ready, place the marinated pork butt on the prepared baking tray and cover with aluminum foil.'),
(99, 32, 'Bake the pork butt until tender then remove from the oven. Let it rest for a few minutes.'),
(100, 32, 'In the meantime, cut and trim the asparagus then toss with extra virgin olive oil, minced garlic, and lemon juice.'),
(101, 32, 'Cover a baking tray with aluminum foil then spread the seasoned asparagus.'),
(102, 32, 'Bake the asparagus until tender.'),
(103, 32, 'Once it is done, remove the asparagus from the oven and let it rest.'),
(104, 32, 'Slowly unwrap the pork butt then using a fork shred the cooked pork.'),
(105, 32, 'Place the pulled pork on a serving dish then serve with roasted asparagus.'),
(106, 32, 'Serve and enjoy.'),
(107, 33, 'Cut the green jalapenos into halves lengthwise then remove the seeds. Set aside.'),
(108, 33, 'Crack the eggs then place the eggs in a bowl.'),
(109, 33, 'Pour extra virgin olive oil into the eggs then season with black pepper. Stir until incorporated.'),
(110, 33, 'Combine ground pork with goat cheese, diced onion, and grated carrot in a bowl then pour the egg mixture over the pork. Mix well.'),
(111, 33, 'Preheat a steamer over medium heat then wait until it is ready.'),
(112, 33, 'Fill each halved jalapeno with the pork mixture then arrange in the steamer.'),
(113, 33, 'Steam the filled jalapenos for approximately 20 minutes or until set.'),
(114, 33, 'Once it is done, remove the stuffed jalapenos from the steamer and arrange on a serving dish.'),
(115, 33, 'If you like, you can bake the steamed jalapenos until lightly golden brown.'),
(116, 33, 'Serve and enjoy warm.'),
(117, 34, 'Place red chilies in a pan then pour water to cover. Bring to boil.'),
(118, 34, 'Reduce the heat and cook until the red chilies are wilted.'),
(119, 34, 'Remove the red chilies from heat and strain the water.'),
(120, 34, 'Transfer the red chilies to a food processor then add 3 teaspoons minced garlic and shallots then process until smooth. Set aside.'),
(121, 34, 'Cut the pork shoulder and pork rind into cubes then place in a skillet.'),
(122, 34, 'Add the spice mixture to the skillet then pour water over the pork.'),
(123, 34, 'Season the pork with lemon grasses, kaffir lime leaves, and bay leaf then bring to boil.'),
(124, 34, 'Once it is boiled, reduce the heat and cook the pork until tender. The gravy will be reduced into half.'),
(125, 34, 'In the meantime, preheat another skillet and pour extra virgin olive oil into it.'),
(126, 34, 'Stir in minced garlic to the skillet then sauté until aromatic and wilted.'),
(127, 34, 'Next, add chopped kale to the skillet then sauté until wilted.'),
(128, 34, 'Remove the sautéed kale from heat then set aside.'),
(129, 34, 'When the pork is tender, pour coconut milk over the pork then bring to a simmer.'),
(130, 34, 'Transfer the cooked pork to a serving dish then serve with sautéed kale.'),
(131, 34, 'Enjoy warm.'),
(132, 35, 'Cut the boneless pork shoulder into small dices then set aside.'),
(133, 35, 'Preheat a skillet over medium heat then pour extra virgin olive oil into the skillet.'),
(134, 35, 'Once t is hot, stir in minced garlic and sliced shallot to the skillet and sauté until wilted and aromatic.'),
(135, 35, 'Add diced pork to the skillet then cook until the pork is just wilted.'),
(136, 35, 'Season the pork with curry powder, turmeric, and pepper then pour water over the pork bring to boil.'),
(137, 35, 'Once it is boiled, reduce the heat and cook until the pork is tender and the water is completely absorbed into the pork.'),
(138, 36, 'Preheat an oven to 375°F and line a baking tray with aluminum foil.'),
(139, 36, 'Rub the lamb leg with minced garlic and olive oil then sprinkle pepper over the lamb leg.'),
(140, 36, 'Place the seasoned lamb leg on the prepared baking tray and sprinkle chopped rosemary over the lamb leg.'),
(141, 36, 'Once the oven is ready, place the baking tray in the oven and bake the lamb leg for approximately 20 minutes or until the lamb leg is tender and cooked through.'),
(142, 36, 'When the baked lamb leg is done, take it out from the oven and arrange on a serving dish'),
(143, 36, 'Serve and enjoy warm.'),
(144, 37, 'Preheat an oven to 204°C and line a baking tray with aluminum foil. Set aside.'),
(145, 37, 'Cut the lamb ribs into medium pieces then set aside.'),
(146, 37, 'Place the macadamia in a food processor then add minced garlic, fresh parsley, olive oil, and pepper to the food processor. Process until smooth.'),
(147, 37, 'Coat the lamb ribs with the macadamia mixture then arrange on the prepared baking tray.'),
(148, 37, 'Place the coated lamb ribs in the oven and bake the lamb is completely cooked.'),
(149, 37, 'In the meantime, cut the cherry tomatoes into halves then place in a disposable aluminum cup.'),
(150, 37, 'Drizzle macadamia oil over the tomatoes then toss to combine. Set aside.'),
(151, 37, 'Once the lamb is done, remove from the oven and arrange on a serving dish.'),
(152, 37, 'Next, place the tomatoes in the oven and bake for approximately 5 minutes.'),
(153, 37, 'Remove the tomatoes from the oven and drizzle balsamic vinegar over the tomatoes. Stir well.'),
(154, 37, 'Top the baked lamb with tomato salsa then serve.'),
(155, 37, 'Enjoy warm.'),
(156, 38, 'Rub the lamb shoulder with olive oil, oregano, wine, and rosemary then marinate for at least 2 hours. Store in the fridge to keep it fresh.'),
(157, 38, 'In the meantime, place fresh dill, mint leaves, lemon juice and coconut cream process until smooth.'),
(158, 38, 'Transfer the creamy sauce to a container with a lid and store in the refrigerator.'),
(159, 38, 'After 2 hours, take the lamb shoulder out of the fridge and thaw at room temperature.'),
(160, 38, 'Preheat a grill over medium heat then arrange the marinated lamb shoulder on it.'),
(161, 38, 'Grill the lamb until the lamb is completely cooked.'),
(162, 38, 'Once it is done, remove the grilled lamb shoulder from the grill and place on a serving dish.'),
(163, 38, 'Top with creamy mint sauce then serve immediately.'),
(164, 38, 'Enjoy warm.'),
(230, 44, 'Cut the boneless chicken thighs into medium pieces then set aside.'),
(231, 44, 'Preheat a skillet over medium heat then pour extra virgin olive oil into it.'),
(232, 44, 'Once the oil is hot, stir in minced garlic then sauté until lightly golden and aromatic.'),
(233, 44, 'Add the boneless chicken thighs to the skillet then stir until wilted.'),
(234, 44, 'Pour chicken broth over the chicken then bring to boil.'),
(235, 44, 'Cook until the chicken is completely done.'),
(236, 44, 'Pour coconut milk over the chicken and season with Italian seasoning.'),
(237, 44, 'Add chopped spinach and cherry tomatoes to the skillet. Stir until just wilted.'),
(238, 44, 'Transfer the cooked chicken together with the gravy and vegetables to a serving dish then quickly sprinkle grated Parmesan cheese on top. Stir well.'),
(239, 44, 'Serve and enjoy warm.'),
(240, 45, 'Cut the chicken thigh into slices then set aside.'),
(241, 45, 'Crack the eggs then place the eggs in a bowl.'),
(242, 45, 'Season the eggs with pepper and oregano then stir well.'),
(243, 45, 'Next, add almond flour to the seasoned eggs then mix until combined.'),
(244, 45, 'Dip the sliced chicken into the egg mixture then roll in the grated coconut. Make sure that the chicken is completely coated with the grated coconut.'),
(245, 45, 'Preheat a frying pan over medium heat then pour extra virgin olive oil into it.'),
(246, 45, 'Put the coated chicken into the frying pan then fry until cooked.'),
(247, 45, 'Once it is done, remove the chicken from the frying pan strain the oil.'),
(248, 45, 'Arrange on a serving dish and serve the chicken warm.'),
(249, 45, 'Enjoy immediately.'),
(250, 46, 'Cut the boneless chicken thigh into small pieces then set aside.'),
(251, 46, 'Preheat a skillet over medium heat then pour extra virgin olive oil into it.'),
(252, 46, 'Once the oil is hot, stir in chopped onion and sauté until aromatic and lightly golden brown.'),
(253, 46, 'Add chicken to the skillet then sauté until just wilted.'),
(254, 46, 'Pour water over the chicken then season the soup with pepper and nutmeg. Stir well then bring to boil.'),
(255, 46, 'Once it is boiled, reduce the heat and cook the soup until the chicken is completely seasoned.'),
(256, 46, 'Pour tomato puree over the chicken and add chopped mushroom to the soup. Bring to a simmer.'),
(257, 46, 'Once it is done, transfer the chicken soup to a serving bowl then sprinkle chopped celeries on top.'),
(258, 46, 'Serve and enjoy warm.'),
(259, 47, 'Cut the boneless chicken thigh then Process until smooth.'),
(260, 47, 'Transfer the chicken to a mixing bowl then add almond flour to the chicken.'),
(261, 47, 'Crack an egg and drop in the bowl and after that, mix the chicken with the almond flour and egg until combined.'),
(262, 47, 'Shape the chicken mixture into small balls then set aside.'),
(263, 47, 'Crack the remaining egg and place in a bowl.'),
(264, 47, 'Season the egg with pepper then mix well.'),
(265, 47, 'Dip chicken ball in the egg mixture then roll in the grated coconut. Make sure that the cheese balls are completely coated with grated coconut.'),
(266, 47, 'After that, preheat a frying pan over medium heat then pour olive oil into it.'),
(267, 47, 'Once the oil is hot, carefully put the chicken cheese balls in the skillet and fry until all sides are lightly golden brown and crispy.'),
(268, 47, 'Remove the fried chicken cheese balls from the frying pan then strain the oil.'),
(269, 47, 'Arrange the cheese balls on a serving dish and serve'),
(270, 47, 'Enjoy immediately.'),
(271, 48, 'Cut the boneless chicken thighs into cubes then season with pepper. Let the chicken rest'),
(272, 48, 'Place roasted cashews in a blender then add red chili flakes and minced garlic to the blender.'),
(273, 48, 'Pour water into over the cashews then blend.'),
(274, 48, 'Transfer the cashew mixture to a saucepan then add kaffir lime leaf to it. Bring to a simmer.'),
(275, 48, 'Once it is done, remove the cashew sauce from heat then drizzle coconut aminos over the sauce. Stir well then let it cool.'),
(276, 48, 'Next, preheat a grill over medium heat then wait until it is ready.'),
(277, 48, 'In the meantime, using a wooden skewer prick the chicken cubes then brush with extra virgin olive oil.'),
(278, 48, 'Once the grill is ready, place the chicken satay on it and grill until done. Don’t forget to flip the chicken satay and make sure that both sides of the chicken satay are completely cooked.'),
(279, 48, 'Arrange the cooked chicken satay on a serving dish then drizzle cashew sauce on top.'),
(280, 48, 'Serve and enjoy warm.'),
(281, 49, 'Cut the boneless chicken thighs into thin slices then set aside.'),
(282, 49, 'Crack the egg then place in a bowl. Beat until incorporated.'),
(283, 49, 'Dip the sliced chicken in the beaten egg then roll in the almond flour. Repeat with the remaining chicken and almond flour.'),
(284, 49, 'After that, preheat a pan over medium heat then pour olive oil into it.'),
(285, 49, 'Once the oil is hot, put the coated chicken into the pan then fry lightly golden brown and the chicken is cooked through.'),
(286, 49, 'Discard the excessive oil.'),
(287, 49, 'Arrange the fried chicken on a serving dish then set aside.'),
(288, 49, 'Take 2 tablespoons of oil then pour into a saucepan.'),
(289, 49, 'Stir in chopped onion then sauté until lightly golden brown and aromatic.'),
(290, 49, 'Next, add tomato puree to the saucepan then season with pepper. Stir well and bring to a simmer.'),
(291, 49, 'Once it is done, remove the sauce from heat then drizzle the tomato sauce over the chicken.'),
(292, 49, 'Serve and enjoy warm.'),
(293, 50, 'Combine extra virgin olive oil with lemon juice then season with onion, jalapeno, minced garlic, thyme, and cinnamon. Stir well.'),
(294, 50, 'Store in the fridge to keep it fresh.'),
(295, 50, 'After 2 hours, remove the marinated chicken from the fridge and thaw at room temperature.'),
(296, 50, 'In the meantime, preheat a grill over medium heat then wait until it is ready.'),
(297, 50, 'Place the marinated chicken thighs on the grill until cooked through. \r\nOccasionally, brush the chicken thighs with the remaining marinade.'),
(298, 50, 'Remove the grilled chicken thighs from the grill and arrange on a serving dish.'),
(299, 50, 'Serve and enjoy.'),
(300, 51, 'Preheat a skillet over medium heat then pour extra virgin olive oil into it.'),
(301, 51, 'Once it is hot, stir in minced garlic then sauté until lightly golden and aromatic.'),
(302, 51, 'Next, add chopped boneless chicken thighs to the skillet and sauté until the chicken is no longer pink.'),
(303, 51, 'Season the chicken with oregano and pepper then pour water over the chicken. Bring to boil.'),
(304, 51, 'Once it is boiled, reduce the heat and cook until the chicken is tender and the water is completely absorbed into the chicken.'),
(305, 51, 'Pour coconut milk into the skillet and add halved cherry tomatoes to the stew. Bring to a simmer.'),
(306, 51, 'Once it is done, add chopped baby spinach to the skillet and stir well.'),
(307, 51, 'Remove the chicken stew from heat and transfer to a serving dish.'),
(308, 51, 'Serve and enjoy warm.'),
(309, 52, 'Combine balsamic vinegar with extra virgin olive oil then season with minced garlic, thyme, pepper, and chopped rosemary.'),
(310, 52, 'Rub the chicken thighs with the spice mixture then let it rest for approximately 15 minutes.'),
(311, 52, 'In the meantime, preheat a grill over medium heat then wait until it is ready.'),
(312, 52, 'Place the seasoned chicken thighs on the grill then grill until all sides of the chicken are golden brown and cooked through. Brush the chicken thighs with the marinade once every 5 minutes.'),
(313, 52, 'Once it is done, remove the chicken from the grill and transfer to a serving dish.'),
(314, 52, 'Serve and enjoy warm.'),
(315, 53, 'Cut the boneless chicken thighs into cubes then set aside'),
(316, 53, 'Next, preheat a skillet over medium heat then pour extra virgin olive oil into it.'),
(317, 53, 'Once the oil is hot, add chicken cubes to the skillet and sauté until wilted. Cook until the chicken is done.'),
(318, 53, 'Remove the cooked chicken from the skillet and place on a plate.'),
(319, 53, 'Next, stir in minced garlic to the skillet then sauté until lightly golden brown and aromatic.'),
(320, 53, 'After that, pour coconut milk into the skillet and season with black pepper and Italian seasoning. Bring to a simmer.'),
(321, 53, 'Once it is done, put the cooked chicken and sliced zucchini to the skillet and stir until the chicken is completely coated with the seasoned coconut milk.'),
(322, 53, 'Transfer the cooked chicken and the gravy to a serving dish then sprinkle grated cheddar cheese on top.'),
(323, 53, 'Garnish with fresh parsley and serve.'),
(324, 53, 'Enjoy immediately.'),
(325, 54, 'Preheat an oven to 250°F and line a baking tray with parchment paper.'),
(326, 54, 'Next, cut the boneless chicken thighs into medium cubes then set aside.'),
(327, 54, 'Combine extra virgin olive oil with lemon juice, minced garlic, oregano, and black pepper then mix well.'),
(328, 54, 'Rub the boneless chicken thighs with the spice mixture then spread on the prepared baking tray.'),
(329, 54, 'Sprinkle asparagus over the chicken then arrange sliced lemon on top.'),
(330, 54, 'Bake the chicken for approximately 25 minutes or until the chicken is cooked through.'),
(331, 54, 'Remove the cooked chicken from the oven and transfer to a serving dish.'),
(332, 54, 'Serve and enjoy.'),
(333, 55, 'Cut the boneless chicken thigh into slices then set aside.'),
(334, 55, 'Crack the egg then place in a bowl.'),
(335, 55, 'Season the egg with black pepper then stir until incorporated.'),
(336, 55, 'Dip the sliced chicken in the beaten egg then roll in the almond flour. Make sure that the chicken is completely coated with almond flour.'),
(337, 55, 'Preheat a frying pan over medium heat then pour olive oil into the pan.'),
(338, 55, 'Once the oil is hot, put the chicken in the frying pan and fry until both sides of the chicken are lightly golden brown and the chicken is completely cooked.'),
(339, 55, 'Place the crispy chicken on a serving dish'),
(340, 55, 'In the meantime, place almond yogurt, grated cheddar cheese, and mustard in a saucepan then bring to a simmer over very low heat.'),
(341, 55, 'Stir the sauce until incorporated then remove from heat.'),
(342, 55, 'Drizzle the cheese sauce over the chicken then serve.'),
(343, 55, 'Enjoy warm!'),
(344, 56, 'Preheat an oven to 250°F and line a baking tray with aluminum foil. Set aside.'),
(345, 56, 'Cut the boneless chicken thighs into slices then rub with olive oil and lemon juice.'),
(346, 56, 'Spread chicken on the prepared baking tray then set aside.'),
(347, 56, 'Preheat a saucepan over medium heat then pour the remaining olive oil into it.'),
(348, 56, 'Stir in chopped onion and sauté until aromatic and lightly golden brown.'),
(349, 56, 'After that, add tomato puree into the saucepan then season with diced green chili, chili powder, sweet paprika, cumin, and oregano. Stir well.'),
(350, 56, 'Drizzle the sauce over the chicken then cover with aluminum foil.'),
(351, 56, 'Place the baking tray in the preheated oven and bake the chicken for approximately 30 minutes or until the chicken is cooked through.'),
(352, 56, 'Once it is done, remove the cooked chicken from the oven and let it rest for a few minutes.'),
(353, 56, 'Unwrap the cooked chicken and transfer to a serving dish.'),
(354, 56, 'Drizzle the remaining liquid over the chicken then serve.'),
(379, 59, 'Cut the boneless chicken thighs into medium cubes then place in a skillet.'),
(380, 59, 'Season the chicken with minced garlic and lemon grasses then pour water over the chicken. Bring to boil.'),
(381, 59, 'Once it is boiled, reduce the heat and cook until the water is completely absorbed into the chicken.'),
(382, 59, 'Remove the cooked chicken from heat then set aside.'),
(383, 59, 'Next, preheat a saucepan over medium heat then pour olive oil into it.'),
(384, 59, 'Stir in the chicken and cook until lightly brown.'),
(385, 59, 'Add red tomatoes, red chili flakes, and fresh basils to the saucepan then stir until wilted and the chicken is completely seasoned.'),
(386, 59, 'Transfer the chicken to a serving dish then serve.'),
(387, 59, 'Enjoy!'),
(388, 60, 'Add oregano to the almond milk then stir well.'),
(389, 60, 'Cut the boneless chicken thighs into slices then rub with almond milk mixture. Let it rest for approximately 10 minutes.'),
(390, 60, 'In the meantime, preheat an oven to 250°F and line a baking tray with aluminum foil.'),
(391, 60, 'Spread the seasoned chicken on the prepared baking tray and bake until the chicken is done.'),
(392, 60, 'While waiting for the chicken, cut the avocado into halves then remove the seed.'),
(393, 60, 'Peel the avocado then cut into cubes.'),
(394, 60, 'Place the avocado cubes in a salad bowl then drizzle lemon juice and extra virgin olive oil over the avocado.'),
(395, 60, 'Add chopped celeries, cilantro, onion, and pepper to the salad bowl then toss to combine.'),
(396, 60, 'Once the chicken is done, remove from the oven and transfer to a serving dish.'),
(397, 60, 'Top the chicken with avocado salad then serve immediately.'),
(398, 60, 'Enjoy right away.'),
(399, 61, 'Cut the lime into halves then squeeze the juice over the salmon. Let the salmon rest for approximately 10 minutes.'),
(400, 61, 'In the meantime, place garlic cloves in a food processor then add extra virgin olive oil, cumin, coriander, paprika, and black pepper to the food processor. Process until smooth.'),
(401, 61, 'Wash and rinse the salmon then pat it dry.'),
(402, 61, 'Rub the salmon with the garlic mixture then set aside.'),
(403, 61, 'Next, prepare a grill and preheat it to medium heat.'),
(404, 61, 'Once the grill is ready, place the seasoned salmon directly on the grill and grill for approximately 5 minutes each side.'),
(405, 61, 'Once it is done, remove the grilled salmon from the grill and transfer to a serving dish.'),
(406, 61, 'Place tahini paste and garlic powder in a food processor then pour water and lemon juice over the paste. Process until smooth.'),
(407, 61, 'Transfer the tahini sauce to a serving bowl then add chopped parsley to the sauce. Mix well.'),
(408, 61, 'Serve the grilled salmon with tahini sauce and enjoy warm.'),
(409, 62, 'Place mint leaves, thyme, chopped parsley, minced garlic, lemon juice, and extra virgin olive oil in a blender then blend until incorporated.'),
(410, 62, 'Drizzle the spice mixture over the prawns then toss until the prawn is completely seasoned.'),
(411, 62, 'Preheat a grill over medium heat then wait until it is ready.'),
(412, 62, 'In the meantime, preheat a steamer and steam the carrot until tender. Set aside.'),
(413, 62, 'Once the grill is ready, place the prawns on it. Grill for a few minutes until the prawns are completely cooked and brush with the spices once in a while.'),
(414, 62, 'When the prawn is done, remove from grill and place on a serving dish'),
(415, 62, 'Garnish with lettuce and steamed carrots then sprinkle grated cheddar cheese on top.'),
(416, 62, 'Serve and enjoy.'),
(417, 63, 'Drizzle lemon juice over the tuna fillet then let it rest for approximately 10 minutes.'),
(418, 63, 'In the meantime, cut the apple then place in a bowl.'),
(419, 63, 'Quickly peel the carrot and shred it into pieces.'),
(420, 63, 'Next, cup the green jalapeno into slices then combine with apple dices, shredded carrots, and shredded cabbage.'),
(421, 63, 'Drizzle extra virgin olive oil over the coleslaw then toss to combine. Set aside.'),
(422, 63, 'After 10 minutes, rub the tuna fillet with minced garlic and pepper then set aside.'),
(423, 63, 'In the meantime, preheat a grill over medium heat then wait until it reaches the desired temperature.'),
(424, 63, 'Once the grill is ready, brush the tuna fillet with butter then place directly on the grill.'),
(425, 63, 'Grill the tuna until the tuna fillet is cooked through.'),
(426, 63, 'Remove the tuna from the grill then serve with jalapeno coleslaw and mayonnaise.'),
(439, 65, 'Cut the zucchini into thin slices then place in a jar with a lid.'),
(440, 65, 'Add chopped onion, celery seeds, and turmeric to the jar then pour apple cider vinegar to the jar.'),
(441, 65, 'Cover the jar with the lid and shake for a few seconds. Store the pickles in the refrigerator.'),
(442, 65, 'Place the crabs in the pot then pour water to cover.'),
(443, 65, 'Season with minced garlic then bring to boil.'),
(444, 65, 'Once it is boiled, turn the stove off and cover the pot with the lid. Let it rest for approximately 5 minutes.'),
(445, 65, 'After 5 minutes, open the pot and take the crabs out of the pot.'),
(446, 65, 'Preheat a frying pan over medium heat then pour extra virgin olive oil into it.'),
(447, 65, 'Once it is hot, put the crabs into the frying pan then fry until crispy.'),
(448, 65, 'Once it is done, remove from the frying pan and transfer to a serving dish.'),
(449, 65, 'Serve with zucchini pickles.'),
(450, 66, 'Preheat a steamer over medium heat then steam the spinach for a few minutes or until just wilted. Remove from the steamer.'),
(451, 66, 'Cut the salmon fillet into cubes then place in a food processor then add minced garlic and pepper to the food processor. Process until smooth.'),
(452, 66, 'Crack the egg and add to the salmon mixture.'),
(453, 66, 'Add chopped steamed spinach to the mixture then mix until just combined.'),
(454, 66, 'Preheat a steamer again then prepare a baking pan. Line the baking pan with aluminum foil.'),
(455, 66, 'Place the salmon mixture in the steamer then steam for approximately 10 minutes or until set.'),
(456, 66, 'Once it is done, remove from the steamer and let it cool for a few minutes.'),
(457, 66, 'Take the salmon nugget out of the baking pan and cut into thick slices.'),
(458, 66, 'Next, preheat a frying pan and pour extra virgin olive oil into it.'),
(459, 66, 'Put the sliced salmon nugget in the frying pan and fry until both sides are lightly golden brown.'),
(460, 66, 'Take the fried salmon nugget out of the frying pan and strain the excessive oil.'),
(461, 66, 'Arrange the fried salmon nuggets on a serving dish and serve.'),
(462, 66, 'Enjoy warm.'),
(463, 67, 'Preheat a saucepan over medium heat then pour olive oil into it.'),
(464, 67, 'Sprinkle pepper over the tuna and place the tuna in the saucepan.'),
(465, 67, 'Cook the tuna for approximately 4 minutes or until opaque then flip it.'),
(466, 67, 'Continue cooking the tuna for another 4 minutes or until the tuna is lightly golden brown and cooked through.'),
(467, 67, 'Remove the tuna from the saucepan then place on a serving dish.'),
(468, 67, 'Next, cut and trim the asparagus then sauté with the remaining olive oil.'),
(469, 67, 'Once it is done, place the asparagus next to the tuna then set aside.'),
(470, 67, 'Quickly combine mayonnaise with lemon juice and grated lemon zest then stir well.'),
(471, 67, 'Drizzle the lemon mayonnaise over the tuna and asparagus then sprinkle grated cheese on top.'),
(472, 67, 'Serve and enjoy.'),
(473, 68, 'Discard the squid ink then wash and rinse the squids.'),
(474, 68, 'Preheat a skillet over medium heat then pour extra virgin olive oil into it.'),
(475, 68, 'Once the oil is hot, stir in minced garlic and sliced shallots then sauté until aromatic and wilted.'),
(476, 68, 'Stir in the squids then season with turmeric, curry powder, bay leaf, lemon grass, galangal, and kaffir lime leaf then sauté until wilted and completely seasoned.'),
(477, 68, 'Pour coconut milk over the squids then bring to boil.'),
(478, 68, 'Remove from heat and transfer to a serving dish.'),
(479, 68, 'Serve and enjoy.'),
(480, 69, 'Preheat an oven to 400°F (204°C) and prepare a baking tray. Set aside.'),
(481, 69, 'Drizzle lemon juice over the salmon fillet then brush with extra virgin olive oil.'),
(482, 69, 'Wrap the salmon fillet with aluminum foil then place on the baking tray.'),
(483, 69, 'Place the baking tray in the oven and bake for approximately 10 minutes.'),
(484, 69, 'After 10 minutes, take the baking tray out of the oven and unwrap the aluminum foil.'),
(485, 69, 'Return the salmon back to the oven and bake again for another 10 minutes or until the salmon is lightly golden brown.'),
(486, 70, 'Cut the tuna fillet into cubes then place in a food processor.'),
(487, 70, 'Add coconut flour into the food processor then process until smooth.'),
(488, 70, 'Transfer the tuna mixture to a bowl then add chopped leek to the bowl. Mix until just combined.'),
(489, 70, 'Shape the tuna mixture into small balls form then set aside.'),
(490, 70, 'Pour2 cups of water into a pot then bring to boil.'),
(491, 70, 'Once the water is boiled, slowly put the small tuna balls then cook until they are floating.'),
(492, 70, 'In the meantime, preheat a skillet over medium heat then pour extra virgin olive oil into the skillet.'),
(493, 70, 'Once the oil is hot, stir in minced garlic then sauté until aromatic'),
(494, 70, 'Pour the remaining water into the skillet then bring to boil.'),
(495, 70, 'Once it is boiled, season the gravy with pepper then add chopped tomatoes and celeries to the gravy.'),
(496, 70, 'When the tuna balls are floating, take them out of the pot and transfer to the gravy. Bring to a simmer.'),
(497, 70, 'Transfer to a serving bowl then serve warm.'),
(498, 70, 'Enjoy immediately.'),
(499, 71, 'Preheat oven at 400 degrees.'),
(500, 71, 'Preheat oven at 400 degrees.'),
(501, 71, 'Line each hole of the muffin tray with 1 ½ pieces of ham. Ensure that there are no holes.'),
(502, 71, 'Mix the spinach and red peppers together. Place a small amount in each hole of the muffin tray.'),
(503, 71, 'Place ½ Tbsp of crumbled feta cheese on top of the spinach and peppers.'),
(504, 71, 'Take the 5 eggs and whisk gently, add the salt and pepper.'),
(505, 71, 'Share the mixture evenly across the muffin tray.'),
(506, 71, 'Place in the oven and bake for 16-18 minutes until the eggs feel set.'),
(507, 71, 'Remove each one gently from the muffin tray.'),
(508, 71, 'Garnish with ¼ tsp of pesto sauce and some of the roasted red peppers.'),
(509, 72, 'Preheat oven at 350 degrees.'),
(510, 72, 'Keep the cream cheese at room temperature and beat until creamy and smooth.'),
(511, 72, 'Gradually add the eggs, vanilla and sweetener; beat until mixture is blended well.'),
(512, 72, 'Gently fold in the almonds and blueberries.'),
(513, 72, 'Line a 12 hole muffin tray with baking paper and spoon the mixture evenly into each mold.'),
(514, 72, 'Bake in preheated oven for 20 minutes.'),
(515, 72, 'Wait until completely cool and place in fridge.'),
(516, 73, 'Mix the avocado, tomato and boiled eggs together with the salt, black pepper and lemon juice.'),
(517, 73, 'Mix enough to slightly mash some of the avocado and eggs.'),
(518, 73, 'Sprinkle the chopped bacon over the top.'),
(519, 74, 'Preheat oven at 400 degrees.'),
(520, 74, 'Take the shell off the eggs and cut in half lengthways.'),
(521, 74, 'Remove the yolk to leave the indentment in the egg.'),
(522, 74, 'Mix together the cream cheese and thyme.'),
(523, 74, 'Fill 6 egg white halves (indentments) with the cream cheese filling.'),
(524, 74, 'Place the 6 empty egg white halves on top of the filled halves (to form a whole egg)'),
(525, 74, 'Take two bacon slices (per egg) and wrap tightly around the egg.'),
(526, 74, 'Place the wrapped eggs on a baking tray, bake in the oven for 30 minutes.'),
(527, 75, 'Blend almond butter, shredded coconut and coconut oil together in a mixing bowl.'),
(528, 75, 'Crush the Macadamia nuts and add to blended mixture. Stir in Stevia drops.'),
(529, 75, 'Mix vigorously and pour the mixture into a 9x9 baking tray, lined with greaseproof paper.'),
(530, 75, 'Keep in the refrigerator overnight. Slice into bars next day.'),
(531, 76, 'Pour the raspberries, almond milk and coconut milk into a blender. (save a few raspberries for final topping).'),
(532, 76, 'When fully blended, stir in the chia seeds and vanilla extract.'),
(533, 76, 'Leave overnight in the refrigerator.'),
(534, 76, 'Spoon into a dish. Place extra raspberries on top.'),
(535, 77, 'Preheat oven at 425 degrees.'),
(536, 77, 'Place the cauliflower in a bowl (microwave safe). Heat on high in the microwave for 8 minutes.'),
(537, 77, 'Allow the cauliflower to cool. Place on paper towels to remove excess water.'),
(538, 77, 'Mix egg, mozzarella, garlic powder, salt and pepper together; stir in the cauliflower. (mix well).'),
(539, 77, 'Line a baking tray with greaseproof paper.'),
(540, 77, 'Spoon the mixture onto the tray evenly; making four squares.'),
(541, 77, 'Bake in the oven until browned (15-20 minutes).'),
(542, 77, 'In a bowl, mash the avocado with lime juice and a pinch of salt and pepper.'),
(543, 77, 'Spread the crispy cauliflower with avocado miix.'),
(544, 78, 'Put all dry ingredients into a blender. (shake well for even distribution).'),
(545, 78, 'Add all wet ingredients and blend well.'),
(546, 78, 'Fold in the blueberries.'),
(547, 78, 'Heat a little coconut oil in a pan until hot and pour in half of the mixture.'),
(548, 78, 'Cook for 1 ½ minutes or until bubbles start to stay around the edge of the pancake.'),
(549, 78, 'Flip the pancake and cook for another 30 seconds.'),
(550, 78, 'Do the same with the other half of the mixture.'),
(551, 79, 'Chop the hard ends of the asparagus. Spray with cooking spray and sprinkle with salt and pepper.'),
(552, 79, 'Grill on a medium heat for 4-5 minutes.'),
(553, 79, 'In a large frying pan, heat the cream over a medium heat; stirring constantly for 3 minutes.'),
(554, 79, 'Gradually stir in cheese. Continue heating until melted.'),
(555, 79, 'Pour the cheese sauce over the asparagus.'),
(556, 79, 'Slice the hard boiled eggs and place on top of asparagus.'),
(557, 80, 'Preheat oven at 325 degrees.'),
(558, 80, 'Mix together coconut flour, almond flour, baking powder, cream of tartar and salt.'),
(559, 80, 'In another bowl, mix eggs and whipping cream. Gradually mix in mozzarella and cheddar. Pour this mixture into the dry mixture.'),
(560, 80, 'Fold the ingredients together and gradually add in the jalapenos and chopped bacon.'),
(561, 80, 'On a baking tray lined with greaseproof paper, transfer the dough and knead into a flattened circle.'),
(562, 80, 'Cut the dough into 8 equal slices. Separate the slices.'),
(563, 81, 'In a frying pan, cook sausages on a medium heat until fully cooked through.'),
(564, 81, 'Once cooked, remove from pan and set aside.'),
(565, 81, 'Using the same frying pan, add the radishes, salt and pepper.'),
(566, 81, 'Cook for 10-12 minutes or until they pierce easily with a fork'),
(567, 81, 'In another pan, fry an egg (ensure the yolk is runny).'),
(568, 81, 'Layer the cheese over the radishes, place the sausage on top (the layers will melt the cheese).'),
(569, 81, 'Place the egg on top and serve.'),
(570, 82, 'Whisk eggs in a bowl with the salt and pepper.'),
(571, 82, 'In a large frying pan, melt the butter. Add mushrooms and onions, cook until tender.'),
(572, 82, 'Pour the whisked eggs over the mushrooms and onions.'),
(573, 82, 'As the sides of the egg cook and the middle is still a little runny, add the cheese.'),
(574, 82, 'Fold the omelette in half. When all is golden brown, remove from pan.'),
(575, 83, 'Heat olive oil in a large frying pan.'),
(576, 83, 'Add halloumi, onions and bacon; fry until golden brown.'),
(577, 83, 'Whisk the eggs, salt, pepper and parsley; add to the pan.'),
(578, 83, 'Stir the mixture, scrambling the eggs.'),
(579, 83, 'Lower heat and stir in olives. Cook for 2 minutes.'),
(580, 84, 'Mix together tuna, mayonnaise, red onion, celery, salt and pepper.'),
(581, 84, 'Load each half of the avocado with the mixture.'),
(582, 84, 'Enjoy it!'),
(583, 85, 'Combine all of the ingredients and mix well.'),
(584, 85, 'Serve on a bed of lettuce.'),
(585, 85, 'Enjoy it!'),
(586, 86, 'Preheat oven at 350 degrees.'),
(587, 86, 'Line a baking tray with greaseproof paper.'),
(588, 86, 'Season salmon with salt and pepper; set aside.'),
(589, 86, 'In a large frying pan, melt the ghee and saute the garlic.'),
(590, 86, 'Turn heat to low; add cheese, parsley and mayonnaise. Stir well until all is combined and melted.'),
(591, 86, 'Spread the mixture over the salmon, cover with foil.'),
(592, 86, 'Bake in the oven for 10-15 minutes or until it easily flakes with a fork.'),
(593, 87, 'Melt butter in a large frying pan, add garlic and cook until lightly browned.'),
(594, 87, 'Turn heat to low and add the coconut milk. Stir continuously until it begins to thicken.'),
(595, 87, 'Add pepper, salt, parmesan cheese and cream cheese. Cook for 5-6 minutes until all cheese is melted'),
(596, 87, 'Stir in smoked salmon and heat for 3-4 minutes.'),
(597, 87, 'Pour mixture over steamed broccoli.'),
(598, 88, 'Preheat oven at 400 degrees.'),
(599, 88, 'Drizzle the oil over the zucchinis and bake for 20-25 minutes or until softened.'),
(600, 88, 'Mix mozzarella with tomatoes and lime juice; spoon mixture into the cooked zucchinis.'),
(601, 88, 'Place back in the oven for 5 minutes or until cheese has melted.'),
(602, 88, 'Sprinkle basil leaves over the top.'),
(603, 89, 'In a large pan, add oil and cook mushrooms until tender.'),
(604, 89, 'Add chicken legs to pan, cook gently until they begin to brown.'),
(605, 89, 'Pour in passata and crumble in the stock cube.'),
(606, 89, 'Stir in olives, cover and simmer for 40 minutes until chicken is cooked and tender.'),
(607, 90, 'Preheat oven at 325 degrees.'),
(608, 90, 'Line a plate with a paper towel and place the bacon on top. Microwave for 3 minutes and set aside to cool.'),
(609, 90, 'In a large bowl, add cream cheese, salt,  pepper and cheddar. Microwave for 20 seconds and stir well.'),
(610, 90, 'Using a small spoon,  carefully put mixture into the jalapeno halves.'),
(611, 90, 'Wrap bacon slices around the jalapenos.'),
(612, 90, 'On a baking tray lined with greaseproof paper; bake jalapenos for 15 minutes.'),
(613, 91, 'Put chopped lettuce onto a large platter and sprinkle over the parsley.'),
(614, 91, 'Place all other ingredients on top, except for olive oil, salt and chilli.'),
(615, 91, 'In a bowl, crush together the salt and chilli; add to olive oil and drizzle over the salad.'),
(616, 92, 'Season the lamb with salt and pepper.'),
(617, 92, 'Place butter and a little olive oil in a large frying pan; fry the chops for 4-5 minutes.'),
(618, 92, 'Serve on a plate with the herb butter on top.'),
(619, 93, 'Preheat oven at 400 degrees.'),
(620, 93, 'Line a baking tray with greaseproof paper and lay the salmon skin side down.'),
(621, 93, 'Spread 4 tbsp pesto on top of salmon and a pinch of salt and pepper.'),
(622, 93, 'Bake for 20-25 minutes or until salmon flakes easily.'),
(623, 93, 'In a bowl, mix the mayonnaise, yogurt and pesto together.'),
(624, 93, 'Place salmon on a plate and drizzle with sauce.'),
(625, 94, 'In a large frying pan, fry the bacon until crispy.'),
(626, 94, 'Add cabbage, butter, salt and pepper; fry until soft and slightly coloured.'),
(627, 94, 'Enjoy it!'),
(628, 95, 'Mix mustard and mayonnaise together in a large bowl.'),
(629, 95, 'Add the chopped cabbage to the bowl, mix well together.'),
(630, 95, 'Put beef, tomatoes and pickles on a plate and add a large spoon of the cabbage mixture.'),
(631, 96, 'Add 3 oz of butter to a large frying pan.'),
(632, 96, 'Brown the pork over a high heat for 2-3 minutes.'),
(633, 96, 'Add onions, peppers and chilli paste; fry for an additional 2-3 minutes, stirring continuously.'),
(634, 96, 'Place on a plate, add the remaining 1 oz of butter and sprinkle with almonds'),
(638, 98, 'In a bowl, add the cauliflower and grated egg.'),
(639, 98, 'Add the green onions and mayonnaise. Season with salt. Add olive oil and vinegar.'),
(640, 98, 'Mix well and serve.'),
(658, 100, 'Prepare all the ingredients.'),
(659, 100, 'First, grease the mug with olive oil. Then, add all the ingredients to the mug.'),
(660, 100, 'Using a fork, mix until well combined. Microwave for 1 minute.'),
(661, 100, 'Allow to cool for a few minutes and serve on a plate or eat directly from the mug.'),
(669, 27, 'Cut the beef rib-eye steak into thin slices then set aside.'),
(670, 27, 'Preheat a skillet over medium heat then pour olive oil.'),
(671, 27, 'Stir in the chopped onion and sauté until aromatic.'),
(672, 27, 'Next, add sliced beef to the skillet then season with pepper. Cook until done.'),
(673, 27, 'Transfer the sautéed beef to a serving dish then set aside.'),
(674, 27, 'Quickly combine the goat cheese with minced parsley, grated garlic, and thyme then mix until incorporated and smooth.'),
(675, 27, 'Serve the sautéed beef with the cheese mixture and enjoy it immediately.'),
(676, 101, 'In a small bowl, add coconut milk.'),
(677, 101, 'Then add chia seeds, raw cacao nibs, and cinnamon powder.'),
(678, 101, 'Using a spatula, mix the ingredients until well combined.'),
(679, 101, 'Refrigerate for 15 minutes and serve with fresh blueberries and raw cacao nibs.'),
(690, 103, 'Mix chia seeds with your chosen milk, matcha, sweetener, and salt. Cover and refrigerate overnight.'),
(691, 103, 'Add more liquid as needed to reach desired consistency (optional). Sweeten to taste and serve with toppings of choice (shredded coconut, almonds or fresh strawberries.'),
(692, 103, 'Enjoy it!'),
(693, 104, 'On a plate, place the spinach and drizzle with olive oil. Season with salt to taste.'),
(694, 104, 'Now layer the cucumber circles and salami slices.'),
(695, 104, 'Add 1 egg and olives.'),
(696, 104, 'Serve with 1 tbsp mayonnaise.'),
(697, 105, 'In a bowl, add the cauliflower and grated egg.'),
(698, 105, 'Add the green onions and mayonnaise. Season with salt. Add olive oil and vinegar.'),
(699, 105, 'Mix well and serve.'),
(700, 106, 'Sear chicken pieces slightly in olive oil.'),
(701, 106, 'Add garlic, onions, bell peppers, and jalapenos. Sweat until aromatic.'),
(702, 106, 'Add spice mix, stock and tomato sauce. Simmer for 10-15 minutes.'),
(703, 106, 'Ladle into a bowl and top with avocados and cilantro.'),
(704, 107, 'Peel eggs and cut in half. Separate yolks from the whites.'),
(705, 107, 'Combine egg yolks, mayonnaise, kimchi, bacon bits, soy sauce and spring onions in a bowl. Mix until well combined.'),
(706, 107, 'Spoon mixture into egg white halves.'),
(707, 107, 'Garnish with spring onions and sesame seeds.'),
(708, 99, 'Whisk together mayonnaise, mustard, cider vinegar, salt, and pepper in a bowl.'),
(709, 99, 'Add shredded cabbage, ham, and scallions. Toss well.'),
(710, 99, 'Serve chilled.'),
(711, 102, 'In a bowl with drained tuna, add the almond flour.'),
(712, 102, 'Then, add the green onions.'),
(713, 102, 'Add the fresh dill. Season with salt and pepper.'),
(714, 102, 'Add mayonnaise.'),
(715, 102, 'Add egg.'),
(716, 102, 'Squeeze the lemon juice.'),
(717, 102, 'Mix the mixture until well combined. Form it into small patties. Ready your non-stick pan, heat over medium heat and add oil.'),
(718, 102, 'Add the tuna patties.'),
(719, 102, 'Flip it carefully so it will not break.'),
(720, 102, 'Serve with some mayonnaise (optional).'),
(721, 108, 'Prepare all the ingredients.'),
(722, 108, 'In a bowl, add all the ingredients.'),
(723, 108, 'Use a wire whisk to fully combine the mixture. Chill for 30 minutes.'),
(724, 108, 'Serve with chopped almonds and chocolate chips.'),
(725, 109, 'Prepare all the ingredients.'),
(726, 109, 'Heat the pan. Add and toast the almond flour.'),
(727, 109, 'Then, add the rest of the ingredients.'),
(728, 109, 'Mix it until well combined. Set aside.'),
(729, 109, 'Place in a bowl and serve with almond milk.'),
(730, 110, 'Heat olive oil in a pan.'),
(731, 110, 'Add garlic, bell peppers, and shallots. Sautee until aromatic.'),
(732, 110, 'Add crumbled tofu and stir for 2-3 minutes.'),
(733, 110, 'Mix in curry powder and nutritional yeast.'),
(734, 110, 'Season as needed with salt and pepper.'),
(735, 110, 'Top with spring onions and serve.'),
(736, 111, 'Heat vegetable oil in a pan. Add quorn nuggets and brown slightly on both sides.'),
(737, 111, 'Add ginger and chili bean paste. Stir until aromatic.'),
(738, 111, 'Add water, vinegar, soy sauce, and tomato sauce. Simmer for 5 minutes, adding more water as needed.'),
(739, 111, 'Stir in broccoli and bell peppers. Simmer for 2 minutes.'),
(740, 111, 'Serve hot.'),
(741, 112, 'Stir together hemp hearts, coconut flour, flax seeds, and almond milk in a heat-proof bowl. Set in the microwave for 60-90 seconds.'),
(742, 112, 'Top with sugar-free maple syrup and chopped walnuts.'),
(743, 112, 'Serve it!'),
(744, 113, 'Prepare all the ingredients.'),
(745, 113, 'Heat a pan and add olive oil.'),
(746, 113, 'Add almonds.'),
(747, 113, 'Season with salt, chili powder, and cumin.'),
(748, 113, 'Stir until almonds are fully coated with spices.'),
(749, 113, 'Roast them for 5 minutes or until they’re golden brown in color.'),
(750, 113, 'Serve with more salt.'),
(751, 114, 'Stir together all ingredients in a bowl.'),
(752, 114, 'Chill until ready to serve.'),
(753, 114, 'Enjoy it!'),
(754, 115, 'Heat a non-stick skillet and add olive oil.'),
(755, 115, 'Add the ground beef.'),
(756, 115, 'Add the onions and garlic.'),
(757, 115, 'Add tomatoes and tomato paste. Mix it until well combined.'),
(758, 115, 'Season it with coconut aminos.'),
(759, 115, 'Pour over the water.'),
(760, 115, 'Sprinkle with the spices, herbs, salt, and pepper. Mix the mixture until well combined and continue cooking until the beef is thoroughly cooked.'),
(761, 116, 'Place almonds, almond butter, and stevia in a food processor. Process it until the texture is good.'),
(762, 116, 'Add the chocolate chips and MCT oil. Mix until well combined.'),
(763, 116, 'Shape the mixture into balls and place on a tray.'),
(764, 116, 'Refrigerate for 30 minutes to 1 hour. Serve.'),
(765, 117, 'Prepare all the ingredients.'),
(766, 117, 'Heat a pan and add olive oil.'),
(767, 117, 'Add and saute onions until translucent.'),
(768, 117, 'Fry the salmon and cook both sides of it.'),
(769, 117, 'Add tomatoes.'),
(770, 117, 'Add coconut milk. Stir until sauce is well combined.'),
(771, 117, 'Add garlic, curry powder, ginger powder, paprika, and salt. Mix again.'),
(772, 117, 'Bring it to simmer for a few more minutes until sauce is thick and salmon is cooked.'),
(773, 117, 'Transfer on a plate and garnish with fresh parsley.'),
(774, 118, 'In a saucepan, add water and add the pork butt pieces. Let it simmer for 1 hour and 30 minutes.'),
(775, 118, 'Once the meat is cooked well in a pan, add cooking oil.'),
(776, 118, 'Add the meat and cook until browned, 5 minutes.'),
(777, 118, 'Add carrots and cook for 5 minutes.'),
(778, 118, 'Now add the sliced green and red sweet peppers.'),
(779, 118, 'Add sesame seeds and cook for 10 minutes.'),
(780, 118, 'Finally, add the chopped cabbage.'),
(781, 118, 'Season with ginger and cook until softened, about 10 minutes. Serve and enjoy!'),
(782, 119, 'Combine water, ginger, lemongrass, chili, kaffir lime leaves, and fish sauce in a pan. Bring to a boil.'),
(783, 119, 'Add chicken and coconut milk.'),
(784, 119, 'Simmer for 20-25 minutes, adding more water as needed.'),
(785, 120, 'Prepare all the ingredients.'),
(786, 120, 'Grease the mug with olive oil. Add all the ingredients, except for the dried dill.'),
(787, 120, 'Mix until well combined. Microwave for 90 seconds.'),
(788, 120, 'Consume directly from the mug or you can serve on a plate.'),
(789, 120, 'Slice and serve on a plate. Garnish with dried rosemary.'),
(790, 121, 'Place the meat pieces in a bowl and season with black pepper, salt, and thyme to taste.'),
(791, 121, 'On two skewers equally put the ingredients, meat, onion, tomato, pork, eggplant, pork, zucchini, bell pepper, tomato, and pork. Actually, you can layer it as you like.'),
(792, 121, 'Add oil on a grill pan and cook the skewers over medium heat for 10 minutes turning every 3 minutes. Increase heat and cook for 5 more minutes on all sides. Cook until the meat and veggies are well done.'),
(793, 121, 'Serve over a lettuce leaf.'),
(794, 122, 'Prepare all the ingredients.'),
(795, 122, 'Mix peanut butter and sugar-free syrup together.'),
(796, 122, 'Mix until well combined. Set aside.'),
(797, 122, 'Add erythritol to coconut flour.'),
(798, 122, 'Mix until well combined.'),
(799, 122, 'Add dry ingredients to wet ingredients.'),
(800, 122, 'Mix until well combined. You can use disposable clear plastic gloves to mix and combine the mixture evenly.'),
(801, 122, 'Shape the mixture into golf-sized balls.'),
(802, 122, 'Place on a plate and flatten the dough using the bottom of a glass or bowls. Refrigerate and serve.'),
(803, 123, 'Heat oil in a pan.'),
(804, 123, 'Add red onions, ginger-garlic paste, and tomato paste. Sautee until aromatic.'),
(805, 123, 'Add curry powder and roast briefly'),
(806, 123, 'Add water and okra.'),
(807, 123, 'Simmer for 7 minutes.'),
(808, 124, 'Heat olive oil in a non-stick pan.'),
(809, 124, 'Add the cauliflower and cook until tender.'),
(810, 124, 'Add the onions and garlic, saute until translucent and fragrant.'),
(811, 124, 'Add the spinach.'),
(812, 124, 'Add water and coconut milk.'),
(813, 124, 'Bring to simmer and season with salt and pepper.');
INSERT INTO `meal_recipe_steps` (`meal_recipe_step_id`, `meal_id`, `meal_recipe_step_description`) VALUES
(814, 124, 'Allow the soup to cool and pour in a food processor.'),
(815, 124, 'Process until smooth. Serve.'),
(816, 125, 'Stir together water, soy sauce, mirin, maple syrup, spring onions, sesame oil, and ginger in a bowl.'),
(817, 125, 'Pan-fry tofu in a lightly oiled non-stick pan.'),
(818, 125, 'Pour in teriyaki sauce mixture and simmer into a glaze.'),
(819, 125, 'Top with sesame seeds and scallions.'),
(820, 126, 'In a pan, heat water, salt and sugar substitute until dissolved.'),
(821, 126, 'Melt the baking chocolate in the microwave.'),
(822, 126, 'In a large bowl, mix the melted chocolate and butter. Beat in the hot water mixture.'),
(823, 126, 'Add each egg, whisking in completely before adding the next.'),
(824, 126, 'Line a 9” springbase pan with greaseproof paper and pour in the mixture.'),
(825, 126, 'Wrap in foil.'),
(826, 126, 'Place the pan into a larger pan and pour boiling water around the edge, about 1” high.'),
(827, 126, 'Preheat oven at 350 degrees.'),
(828, 126, 'Leave cake in the water bath and bake for 45 minutes.'),
(829, 126, 'Refrigerate overnight and remove side of springbase pan.'),
(830, 127, 'Mix cream, espresso powder, almond extract, Stevia and sea salt in a bowl.'),
(831, 127, 'Whisk until mixture is fluffy and holds its form.'),
(832, 127, 'Spoon into individual serving dishes.'),
(833, 127, 'Sprinkle with chocolate chips to serve.'),
(834, 128, 'Mix the peanut butter and coconut oil; microwave for 30 seconds until slightly melted.'),
(835, 128, 'Whisk in the almond milk, until well combined.'),
(836, 128, 'Line a loaf tin with greaseproof paper and pour in mixture.'),
(837, 128, 'Refrigerate for 2-3 hours or until set.'),
(838, 97, 'Mix mustard and mayonnaise together in a large bowl.'),
(839, 97, 'Add the chopped cabbage to the bowl, mix well together.'),
(840, 97, 'Put beef, tomatoes and pickles on a plate and add a large spoon of the cabbage mixture.'),
(841, 129, '4'),
(842, 129, '4'),
(843, 129, '44\r\n4'),
(844, 129, '4'),
(845, 129, '4'),
(846, 129, '44\r\n4'),
(847, 129, '4\r\n4'),
(848, 129, '4'),
(849, 129, '4'),
(850, 129, '4\r\n4\r\n55555'),
(851, 129, '4\r\n4');

-- --------------------------------------------------------

--
-- Table structure for table `meal_types`
--

CREATE TABLE `meal_types` (
  `meal_type_id` int(11) NOT NULL,
  `meal_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal_types`
--

INSERT INTO `meal_types` (`meal_type_id`, `meal_type_name`) VALUES
(1, 'Breakfast'),
(2, 'Lunch'),
(3, 'Dinner'),
(4, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `meat_types`
--

CREATE TABLE `meat_types` (
  `meat_type_id` int(11) NOT NULL,
  `meat_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meat_types`
--

INSERT INTO `meat_types` (`meat_type_id`, `meat_type_name`) VALUES
(1, 'Chicken'),
(2, 'Pork'),
(3, 'Beef'),
(4, 'Fish'),
(5, 'Lamb'),
(6, 'Veal'),
(7, 'I am vegetarian');

-- --------------------------------------------------------

--
-- Table structure for table `physically_active`
--

CREATE TABLE `physically_active` (
  `physically_active_id` int(11) NOT NULL,
  `physically_active_name` varchar(255) NOT NULL,
  `physically_active_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `preparation_times`
--

CREATE TABLE `preparation_times` (
  `preparation_time_id` int(11) NOT NULL,
  `preparation_time_name` varchar(255) DEFAULT NULL,
  `preparation_time_minutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preparation_times`
--

INSERT INTO `preparation_times` (`preparation_time_id`, `preparation_time_name`, `preparation_time_minutes`) VALUES
(1, 'Up to 30 minutes', 30),
(2, 'Up to 1 hour', 60),
(3, 'More than 1 hour', 180);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `product_type_id` int(11) NOT NULL,
  `product_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`product_type_id`, `product_type_name`) VALUES
(1, 'Onions'),
(2, 'Mushrooms'),
(3, 'Eggs'),
(4, 'Nuts'),
(5, 'Cheese'),
(6, 'Butter'),
(7, 'Milk'),
(8, 'Avocados'),
(9, 'Seafood'),
(10, 'Olives'),
(11, 'Capers'),
(12, 'Coconut'),
(13, 'Goat cheese');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(32) NOT NULL,
  `user_role_id` varchar(32) NOT NULL,
  `secret_code` varchar(255) DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `profile_image`, `active`, `created_at`, `created_by`, `user_role_id`, `secret_code`, `updated_by`, `updated_at`) VALUES
(1, 'Umar', 'Majeed', 'umarmajeed2011@gmail.com', '$2y$10$gInpCXzGfMZNDiwHiZnoIeB.oahPC0nq0iaz9NuwzPRajnWB60tTe', '1586990947Screenshot_9.png', b'1', '2020-01-24 05:09:34', '', '1', 'fbf78da914731a6769bfc06c941fcd4ecca3e288', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 11:58:42'),
(2, 'test', 'user', 'user@test.com', '$2y$10$10uOTvKqTTNOYFEHRMaXD.47DM0Enxq36iyVDH2nVa3J.OHMy2zji', NULL, b'1', '2020-05-17 18:10:25', '3671t01b-a322-11e9-920d-84ef1w7c', '2', NULL, NULL, '2020-05-17 18:10:25'),
(3, 'Admin', 'User', 'admin@gmail.com', '$2y$10$gFcwQEoPCeFSwzplBDrfL.HPMCPPSfwFLuVC5liS9flAmVjpTtjdW', NULL, b'1', '2020-04-19 14:36:45', '6ff9c004-bab9-402c-ba8a-eb08377a', '1', '46cce318dc66ce5f83d176f221463921c09315f3', NULL, '2020-04-19 14:36:45'),
(4, 'Muhammad', 'Majeed', 'admin@admin.com', '$2y$10$V31Fa5.1gErsTOZfjnhVxuzdV4bptRLFLIScdc4s/rDKg44ZRvuSi', NULL, b'1', '2020-04-20 10:49:08', '', '2', NULL, NULL, '2020-04-20 13:49:08'),
(5, 'Other', 'user', 'user@example.com', '$2y$10$drWY06d2/F3kzAuTUq4jqufXznQj9eIyMAWT449oLWIDKA.CeLALS', NULL, b'1', '2020-05-17 16:14:40', '3671t01b-a322-11e9-920d-84ef1w7c', '2', NULL, NULL, '2020-05-17 16:14:40'),
(6, 'Test', 'User', 'umar.fnt@gmail.com', '$2y$10$JmsbUxmloiZ.aE/0ozAJGeQN5KEVKWTnJ47XRUGeCg6vjSyrkbpGW', NULL, b'1', '2020-04-19 12:01:58', '', '2', NULL, NULL, '2020-04-19 15:01:58'),
(7, 'new', 'user', 'user1@test.com', '$2y$10$grnD8bJLp0vJHFCSp0hMYuvXfh2.AyPd34tPKeLY0K/.Czt0u/TTK', NULL, b'1', '2020-05-17 23:35:26', '770551', '2', NULL, NULL, '2020-05-17 23:35:26'),
(86761367, 'umar', 'majeed', 'user2@test.com', '$2y$10$3XS69h8qZAslz6bPxSYb6OsoBv.Z8snpX9G28QvTFrQv6XbZP8M72', NULL, b'1', '2020-05-17 23:36:36', '770551', '2', NULL, NULL, '2020-05-17 23:36:36'),
(86761368, '', '', 'umar.leadz@gmail.com', '$2y$10$g5QXKaMbXp8Fh6vCBYZwe.CKR7wO0kxqjR1FAjPgZMY/Jcy/Zoosi', NULL, b'1', '2020-05-21 17:03:01', '', '2', NULL, NULL, '2020-05-21 20:03:01'),
(86761371, '', '', 'test@gmail.com', '$2y$10$IU0Zy.rmb8dpf0VssSswROnAm7u.iqhBn8eFqwp1o1qeH5e/kRd8G', NULL, b'1', '2020-05-21 19:59:39', '', '2', NULL, NULL, '2020-05-21 22:59:39'),
(86761372, '', '', 'test1@test.com', '$2y$10$T5kgSQMx7Lfquj7lcNwLkO5S8SwofolN1qzVMX3zIPFWrIN6ly2da', NULL, b'1', '2020-05-22 08:15:27', '', '5', NULL, NULL, '2020-05-22 11:15:27'),
(86761391, '', '', 'test2@test.com', '$2y$10$pmB.RM.9fytdr5feld9NkeqC3r5p1sklve4bMDdrFMjRZWe07cvQu', NULL, b'1', '2020-05-22 08:34:46', '', '2', NULL, NULL, '2020-05-22 11:34:46'),
(86761392, '', '', 'test3@test.com', '$2y$10$DK41z4Ux5ayHKsS68Cl7ou33gBCIMssc6dRv3m/aRoiKsL/yF4DdC', NULL, b'1', '2020-05-22 09:17:35', '', '2', NULL, NULL, '2020-05-22 12:17:35'),
(86761393, '', '', 'test4@test.com', '$2y$10$WLhE1.RFqCQs6u5XcWOa4O2QDVVxgFoHpEqBCigQ15iD8P3Af2qmS', NULL, b'1', '2020-05-22 17:17:06', '', '2', NULL, NULL, '2020-05-22 20:17:06'),
(86761394, '', '', 'test5@test.com', '$2y$10$xPQOXZdNwkf/IFs9W9QNY.CAhXR4vu8j8cA5LK3hLE2T2gsZTZGHi', NULL, b'1', '2020-05-22 17:57:34', '', '2', NULL, NULL, '2020-05-22 20:57:34'),
(86761396, '', '', 'test6@test.com', '$2y$10$.zGACCa.KqZIl4JOEIqUFOZlrr6O78WcUT7dG24cKZhoImFhhdBMa', NULL, b'1', '2020-05-23 08:44:29', '', '2', NULL, NULL, '2020-05-23 11:44:29'),
(86761399, '', '', 'test7@test.com', '$2y$10$grP.Wet66Qaqj3Ec7DTYkOgfaHbPHEuQyvpcaNBMTP12EXtfrp7lq', NULL, b'1', '2020-05-24 11:23:08', '', '2', NULL, NULL, '2020-05-24 14:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_meals`
--

CREATE TABLE `user_meals` (
  `user_meal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `week` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `meal_type_id` int(11) NOT NULL,
  `is_skipped` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_meals`
--

INSERT INTO `user_meals` (`user_meal_id`, `user_id`, `meal_id`, `week`, `day`, `meal_type_id`, `is_skipped`, `created_at`) VALUES
(1, 86761391, 96, 1, 1, 1, 0, '2020-05-23 00:57:17'),
(2, 86761391, 34, 1, 1, 2, 0, '2020-05-23 00:57:17'),
(3, 86761391, 67, 1, 1, 3, 0, '2020-05-23 00:57:17'),
(4, 86761391, 78, 1, 1, 4, 0, '2020-05-23 00:57:17'),
(5, 86761391, 55, 1, 2, 1, 0, '2020-05-23 00:57:17'),
(6, 86761391, 66, 1, 2, 2, 0, '2020-05-23 00:57:17'),
(7, 86761391, 48, 1, 2, 3, 0, '2020-05-23 00:57:17'),
(8, 86761391, 85, 1, 2, 4, 0, '2020-05-23 00:57:17'),
(9, 86761391, 74, 1, 3, 1, 0, '2020-05-23 00:57:18'),
(10, 86761391, 44, 1, 3, 2, 0, '2020-05-23 00:57:18'),
(11, 86761391, 46, 1, 3, 3, 0, '2020-05-23 00:57:18'),
(12, 86761391, 86, 1, 3, 4, 0, '2020-05-23 00:57:18'),
(13, 86761391, 60, 1, 4, 1, 0, '2020-05-23 00:57:18'),
(14, 86761391, 56, 1, 4, 2, 0, '2020-05-23 00:57:18'),
(15, 86761391, 54, 1, 4, 3, 0, '2020-05-23 00:57:18'),
(16, 86761391, 80, 1, 4, 4, 0, '2020-05-23 00:57:18'),
(17, 86761391, 83, 1, 5, 1, 0, '2020-05-23 00:57:19'),
(18, 86761391, 47, 1, 5, 2, 0, '2020-05-23 00:57:19'),
(19, 86761391, 69, 1, 5, 3, 0, '2020-05-23 00:57:19'),
(20, 86761391, 80, 1, 5, 4, 0, '2020-05-23 00:57:19'),
(21, 86761391, 74, 1, 6, 1, 0, '2020-05-23 00:57:19'),
(22, 86761391, 44, 1, 6, 2, 0, '2020-05-23 00:57:19'),
(23, 86761391, 70, 1, 6, 3, 0, '2020-05-23 00:57:19'),
(24, 86761391, 91, 1, 6, 4, 0, '2020-05-23 00:57:19'),
(25, 86761391, 89, 1, 7, 1, 0, '2020-05-23 00:57:19'),
(26, 86761391, 34, 1, 7, 2, 0, '2020-05-23 00:57:19'),
(27, 86761391, 70, 1, 7, 3, 0, '2020-05-23 00:57:19'),
(28, 86761391, 65, 1, 7, 4, 0, '2020-05-23 00:57:19'),
(29, 86761391, 72, 2, 1, 1, 0, '2020-05-23 00:57:20'),
(30, 86761391, 35, 2, 1, 2, 0, '2020-05-23 00:57:20'),
(31, 86761391, 49, 2, 1, 3, 0, '2020-05-23 00:57:20'),
(32, 86761391, 75, 2, 1, 4, 0, '2020-05-23 00:57:20'),
(33, 86761391, 72, 2, 2, 1, 0, '2020-05-23 00:57:20'),
(34, 86761391, 52, 2, 2, 2, 0, '2020-05-23 00:57:20'),
(35, 86761391, 45, 2, 2, 3, 0, '2020-05-23 00:57:20'),
(36, 86761391, 76, 2, 2, 4, 0, '2020-05-23 00:57:20'),
(37, 86761391, 72, 2, 3, 1, 0, '2020-05-23 00:57:21'),
(38, 86761391, 61, 2, 3, 2, 0, '2020-05-23 00:57:21'),
(39, 86761391, 50, 2, 3, 3, 0, '2020-05-23 00:57:21'),
(40, 86761391, 78, 2, 3, 4, 0, '2020-05-23 00:57:21'),
(41, 86761391, 96, 2, 4, 1, 0, '2020-05-23 00:57:21'),
(42, 86761391, 44, 2, 4, 2, 0, '2020-05-23 00:57:21'),
(43, 86761391, 46, 2, 4, 3, 0, '2020-05-23 00:57:21'),
(44, 86761391, 85, 2, 4, 4, 0, '2020-05-23 00:57:21'),
(45, 86761391, 94, 2, 5, 1, 0, '2020-05-23 00:57:22'),
(46, 86761391, 52, 2, 5, 2, 0, '2020-05-23 00:57:22'),
(47, 86761391, 36, 2, 5, 3, 0, '2020-05-23 00:57:22'),
(48, 86761391, 84, 2, 5, 4, 0, '2020-05-23 00:57:22'),
(49, 86761391, 72, 2, 6, 1, 0, '2020-05-23 00:57:22'),
(50, 86761391, 68, 2, 6, 2, 0, '2020-05-23 00:57:22'),
(51, 86761391, 45, 2, 6, 3, 0, '2020-05-23 00:57:22'),
(52, 86761391, 85, 2, 6, 4, 0, '2020-05-23 00:57:22'),
(53, 86761391, 71, 2, 7, 1, 0, '2020-05-23 00:57:22'),
(54, 86761391, 32, 2, 7, 2, 0, '2020-05-23 00:57:22'),
(55, 86761391, 46, 2, 7, 3, 0, '2020-05-23 00:57:22'),
(56, 86761391, 80, 2, 7, 4, 0, '2020-05-23 00:57:22'),
(57, 86761391, 60, 3, 1, 1, 0, '2020-05-23 00:57:23'),
(58, 86761391, 68, 3, 1, 2, 0, '2020-05-23 00:57:23'),
(59, 86761391, 46, 3, 1, 3, 0, '2020-05-23 00:57:23'),
(60, 86761391, 85, 3, 1, 4, 0, '2020-05-23 00:57:23'),
(61, 86761391, 83, 3, 2, 1, 0, '2020-05-23 00:57:23'),
(62, 86761391, 66, 3, 2, 2, 0, '2020-05-23 00:57:23'),
(63, 86761391, 49, 3, 2, 3, 0, '2020-05-23 00:57:23'),
(64, 86761391, 84, 3, 2, 4, 0, '2020-05-23 00:57:23'),
(65, 86761391, 55, 3, 3, 1, 0, '2020-05-23 00:57:24'),
(66, 86761391, 47, 3, 3, 2, 0, '2020-05-23 00:57:24'),
(67, 86761391, 45, 3, 3, 3, 0, '2020-05-23 00:57:24'),
(68, 86761391, 75, 3, 3, 4, 0, '2020-05-23 00:57:24'),
(69, 86761391, 77, 3, 4, 1, 0, '2020-05-23 00:57:24'),
(70, 86761391, 68, 3, 4, 2, 0, '2020-05-23 00:57:24'),
(71, 86761391, 69, 3, 4, 3, 0, '2020-05-23 00:57:24'),
(72, 86761391, 84, 3, 4, 4, 0, '2020-05-23 00:57:24'),
(73, 86761391, 63, 3, 5, 1, 0, '2020-05-23 00:57:25'),
(74, 86761391, 44, 3, 5, 2, 0, '2020-05-23 00:57:25'),
(75, 86761391, 69, 3, 5, 3, 0, '2020-05-23 00:57:25'),
(76, 86761391, 90, 3, 5, 4, 0, '2020-05-23 00:57:25'),
(77, 86761391, 82, 3, 6, 1, 0, '2020-05-23 00:57:25'),
(78, 86761391, 44, 3, 6, 2, 0, '2020-05-23 00:57:25'),
(79, 86761391, 48, 3, 6, 3, 0, '2020-05-23 00:57:25'),
(80, 86761391, 65, 3, 6, 4, 0, '2020-05-23 00:57:25'),
(81, 86761391, 77, 3, 7, 1, 0, '2020-05-23 00:57:25'),
(82, 86761391, 44, 3, 7, 2, 0, '2020-05-23 00:57:26'),
(83, 86761391, 46, 3, 7, 3, 0, '2020-05-23 00:57:26'),
(84, 86761391, 79, 3, 7, 4, 0, '2020-05-23 00:57:26'),
(85, 86761391, 33, 4, 1, 1, 0, '2020-05-23 00:57:26'),
(86, 86761391, 61, 4, 1, 2, 0, '2020-05-23 00:57:26'),
(87, 86761391, 46, 4, 1, 3, 0, '2020-05-23 00:57:26'),
(88, 86761391, 79, 4, 1, 4, 0, '2020-05-23 00:57:26'),
(89, 86761391, 72, 4, 2, 1, 0, '2020-05-23 00:57:26'),
(90, 86761391, 61, 4, 2, 2, 0, '2020-05-23 00:57:26'),
(91, 86761391, 62, 4, 2, 3, 0, '2020-05-23 00:57:26'),
(92, 86761391, 73, 4, 2, 4, 0, '2020-05-23 00:57:26'),
(93, 86761391, 77, 4, 3, 1, 0, '2020-05-23 00:57:27'),
(94, 86761391, 35, 4, 3, 2, 0, '2020-05-23 00:57:27'),
(95, 86761391, 59, 4, 3, 3, 0, '2020-05-23 00:57:27'),
(96, 86761391, 75, 4, 3, 4, 0, '2020-05-23 00:57:27'),
(97, 86761391, 71, 4, 4, 1, 0, '2020-05-23 00:57:27'),
(98, 86761391, 34, 4, 4, 2, 0, '2020-05-23 00:57:27'),
(99, 86761391, 69, 4, 4, 3, 0, '2020-05-23 00:57:27'),
(100, 86761391, 86, 4, 4, 4, 0, '2020-05-23 00:57:27'),
(101, 86761391, 94, 4, 5, 1, 0, '2020-05-23 00:57:28'),
(102, 86761391, 47, 4, 5, 2, 0, '2020-05-23 00:57:28'),
(103, 86761391, 49, 4, 5, 3, 0, '2020-05-23 00:57:28'),
(104, 86761391, 80, 4, 5, 4, 0, '2020-05-23 00:57:28'),
(105, 86761391, 74, 4, 6, 1, 0, '2020-05-23 00:57:28'),
(106, 86761391, 61, 4, 6, 2, 0, '2020-05-23 00:57:28'),
(107, 86761391, 70, 4, 6, 3, 0, '2020-05-23 00:57:28'),
(108, 86761391, 90, 4, 6, 4, 0, '2020-05-23 00:57:28'),
(109, 86761391, 77, 4, 7, 1, 0, '2020-05-23 00:57:28'),
(110, 86761391, 44, 4, 7, 2, 0, '2020-05-23 00:57:28'),
(111, 86761391, 48, 4, 7, 3, 0, '2020-05-23 00:57:28'),
(112, 86761391, 87, 4, 7, 4, 0, '2020-05-23 00:57:29'),
(113, 86761392, 83, 1, 1, 1, 0, '2020-05-23 00:58:19'),
(114, 86761392, 52, 1, 1, 2, 0, '2020-05-23 00:58:20'),
(115, 86761392, 45, 1, 1, 3, 0, '2020-05-23 00:58:20'),
(116, 86761392, 80, 1, 1, 4, 0, '2020-05-23 00:58:20'),
(117, 86761392, 81, 1, 2, 1, 0, '2020-05-23 00:58:20'),
(118, 86761392, 68, 1, 2, 2, 0, '2020-05-23 00:58:20'),
(119, 86761392, 37, 1, 2, 3, 0, '2020-05-23 00:58:20'),
(120, 86761392, 95, 1, 2, 4, 0, '2020-05-23 00:58:20'),
(121, 86761392, 29, 1, 3, 1, 0, '2020-05-23 00:58:20'),
(122, 86761392, 47, 1, 3, 2, 0, '2020-05-23 00:58:20'),
(123, 86761392, 69, 1, 3, 3, 0, '2020-05-23 00:58:20'),
(124, 86761392, 76, 1, 3, 4, 0, '2020-05-23 00:58:20'),
(125, 86761392, 77, 1, 4, 1, 0, '2020-05-23 00:58:21'),
(126, 86761392, 30, 1, 4, 2, 0, '2020-05-23 00:58:21'),
(127, 86761392, 45, 1, 4, 3, 0, '2020-05-23 00:58:21'),
(128, 86761392, 88, 1, 4, 4, 0, '2020-05-23 00:58:21'),
(129, 86761392, 93, 1, 5, 1, 0, '2020-05-23 00:58:21'),
(130, 86761392, 66, 1, 5, 2, 0, '2020-05-23 00:58:21'),
(131, 86761392, 51, 1, 5, 3, 0, '2020-05-23 00:58:21'),
(132, 86761392, 92, 1, 5, 4, 0, '2020-05-23 00:58:21'),
(133, 86761392, 53, 1, 6, 1, 0, '2020-05-23 00:58:21'),
(134, 86761392, 56, 1, 6, 2, 0, '2020-05-23 00:58:22'),
(135, 86761392, 54, 1, 6, 3, 0, '2020-05-23 00:58:22'),
(136, 86761392, 87, 1, 6, 4, 0, '2020-05-23 00:58:22'),
(137, 86761392, 29, 1, 7, 1, 0, '2020-05-23 00:58:22'),
(138, 86761392, 44, 1, 7, 2, 0, '2020-05-23 00:58:22'),
(139, 86761392, 62, 1, 7, 3, 0, '2020-05-23 00:58:22'),
(140, 86761392, 80, 1, 7, 4, 0, '2020-05-23 00:58:22'),
(141, 86761392, 71, 2, 1, 1, 0, '2020-05-23 00:58:22'),
(142, 86761392, 27, 2, 1, 2, 0, '2020-05-23 00:58:22'),
(143, 86761392, 38, 2, 1, 3, 0, '2020-05-23 00:58:22'),
(144, 86761392, 73, 2, 1, 4, 0, '2020-05-23 00:58:23'),
(145, 86761392, 83, 2, 2, 1, 0, '2020-05-23 00:58:23'),
(146, 86761392, 66, 2, 2, 2, 0, '2020-05-23 00:58:23'),
(147, 86761392, 49, 2, 2, 3, 0, '2020-05-23 00:58:23'),
(148, 86761392, 91, 2, 2, 4, 0, '2020-05-23 00:58:23'),
(149, 86761392, 89, 2, 3, 1, 0, '2020-05-23 00:58:23'),
(150, 86761392, 30, 2, 3, 2, 0, '2020-05-23 00:58:23'),
(151, 86761392, 48, 2, 3, 3, 0, '2020-05-23 00:58:23'),
(152, 86761392, 84, 2, 3, 4, 0, '2020-05-23 00:58:23'),
(153, 86761392, 53, 2, 4, 1, 0, '2020-05-23 00:58:24'),
(154, 86761392, 27, 2, 4, 2, 0, '2020-05-23 00:58:24'),
(155, 86761392, 45, 2, 4, 3, 0, '2020-05-23 00:58:24'),
(156, 86761392, 87, 2, 4, 4, 0, '2020-05-23 00:58:24'),
(157, 86761392, 74, 2, 5, 1, 0, '2020-05-23 00:58:24'),
(158, 86761392, 52, 2, 5, 2, 0, '2020-05-23 00:58:24'),
(159, 86761392, 49, 2, 5, 3, 0, '2020-05-23 00:58:24'),
(160, 86761392, 90, 2, 5, 4, 0, '2020-05-23 00:58:24'),
(161, 86761392, 63, 2, 6, 1, 0, '2020-05-23 00:58:24'),
(162, 86761392, 47, 2, 6, 2, 0, '2020-05-23 00:58:24'),
(163, 86761392, 28, 2, 6, 3, 0, '2020-05-23 00:58:24'),
(164, 86761392, 78, 2, 6, 4, 0, '2020-05-23 00:58:25'),
(165, 86761392, 89, 2, 7, 1, 0, '2020-05-23 00:58:25'),
(166, 86761392, 47, 2, 7, 2, 0, '2020-05-23 00:58:25'),
(167, 86761392, 69, 2, 7, 3, 0, '2020-05-23 00:58:25'),
(168, 86761392, 92, 2, 7, 4, 0, '2020-05-23 00:58:25'),
(169, 86761392, 29, 3, 1, 1, 0, '2020-05-23 00:58:25'),
(170, 86761392, 68, 3, 1, 2, 0, '2020-05-23 00:58:25'),
(171, 86761392, 67, 3, 1, 3, 0, '2020-05-23 00:58:25'),
(172, 86761392, 65, 3, 1, 4, 0, '2020-05-23 00:58:25'),
(173, 86761392, 81, 3, 2, 1, 0, '2020-05-23 00:58:26'),
(174, 86761392, 68, 3, 2, 2, 0, '2020-05-23 00:58:26'),
(175, 86761392, 62, 3, 2, 3, 0, '2020-05-23 00:58:26'),
(176, 86761392, 78, 3, 2, 4, 0, '2020-05-23 00:58:26'),
(177, 86761392, 74, 3, 3, 1, 0, '2020-05-23 00:58:26'),
(178, 86761392, 30, 3, 3, 2, 0, '2020-05-23 00:58:26'),
(179, 86761392, 45, 3, 3, 3, 0, '2020-05-23 00:58:26'),
(180, 86761392, 79, 3, 3, 4, 0, '2020-05-23 00:58:27'),
(181, 86761392, 77, 3, 4, 1, 0, '2020-05-23 00:58:27'),
(182, 86761392, 61, 3, 4, 2, 0, '2020-05-23 00:58:27'),
(183, 86761392, 45, 3, 4, 3, 0, '2020-05-23 00:58:27'),
(184, 86761392, 90, 3, 4, 4, 0, '2020-05-23 00:58:27'),
(185, 86761392, 81, 3, 5, 1, 0, '2020-05-23 00:58:27'),
(186, 86761392, 56, 3, 5, 2, 0, '2020-05-23 00:58:28'),
(187, 86761392, 28, 3, 5, 3, 0, '2020-05-23 00:58:28'),
(188, 86761392, 80, 3, 5, 4, 0, '2020-05-23 00:58:28'),
(189, 86761392, 53, 3, 6, 1, 0, '2020-05-23 00:58:28'),
(190, 86761392, 66, 3, 6, 2, 0, '2020-05-23 00:58:28'),
(191, 86761392, 70, 3, 6, 3, 0, '2020-05-23 00:58:28'),
(192, 86761392, 76, 3, 6, 4, 0, '2020-05-23 00:58:28'),
(193, 86761392, 83, 3, 7, 1, 0, '2020-05-23 00:58:28'),
(194, 86761392, 68, 3, 7, 2, 0, '2020-05-23 00:58:28'),
(195, 86761392, 69, 3, 7, 3, 0, '2020-05-23 00:58:29'),
(196, 86761392, 75, 3, 7, 4, 0, '2020-05-23 00:58:29'),
(197, 86761392, 83, 4, 1, 1, 0, '2020-05-23 00:58:29'),
(198, 86761392, 52, 4, 1, 2, 0, '2020-05-23 00:58:29'),
(199, 86761392, 59, 4, 1, 3, 0, '2020-05-23 00:58:29'),
(200, 86761392, 91, 4, 1, 4, 0, '2020-05-23 00:58:29'),
(201, 86761392, 93, 4, 2, 1, 0, '2020-05-23 00:58:29'),
(202, 86761392, 56, 4, 2, 2, 0, '2020-05-23 00:58:29'),
(203, 86761392, 37, 4, 2, 3, 0, '2020-05-23 00:58:29'),
(204, 86761392, 95, 4, 2, 4, 0, '2020-05-23 00:58:29'),
(205, 86761392, 89, 4, 3, 1, 0, '2020-05-23 00:58:30'),
(206, 86761392, 52, 4, 3, 2, 0, '2020-05-23 00:58:30'),
(207, 86761392, 59, 4, 3, 3, 0, '2020-05-23 00:58:30'),
(208, 86761392, 78, 4, 3, 4, 0, '2020-05-23 00:58:30'),
(209, 86761392, 77, 4, 4, 1, 0, '2020-05-23 00:58:30'),
(210, 86761392, 27, 4, 4, 2, 0, '2020-05-23 00:58:30'),
(211, 86761392, 49, 4, 4, 3, 0, '2020-05-23 00:58:30'),
(212, 86761392, 73, 4, 4, 4, 0, '2020-05-23 00:58:30'),
(213, 86761392, 74, 4, 5, 1, 0, '2020-05-23 00:58:30'),
(214, 86761392, 27, 4, 5, 2, 0, '2020-05-23 00:58:30'),
(215, 86761392, 37, 4, 5, 3, 0, '2020-05-23 00:58:30'),
(216, 86761392, 91, 4, 5, 4, 0, '2020-05-23 00:58:31'),
(217, 86761392, 93, 4, 6, 1, 0, '2020-05-23 00:58:31'),
(218, 86761392, 47, 4, 6, 2, 0, '2020-05-23 00:58:31'),
(219, 86761392, 46, 4, 6, 3, 0, '2020-05-23 00:58:31'),
(220, 86761392, 95, 4, 6, 4, 0, '2020-05-23 00:58:31'),
(221, 86761392, 55, 4, 7, 1, 0, '2020-05-23 00:58:31'),
(222, 86761392, 68, 4, 7, 2, 0, '2020-05-23 00:58:31'),
(223, 86761392, 28, 4, 7, 3, 0, '2020-05-23 00:58:31'),
(224, 86761392, 84, 4, 7, 4, 0, '2020-05-23 00:58:31'),
(225, 86761393, 63, 1, 1, 1, 0, '2020-05-23 01:19:44'),
(226, 86761393, 32, 1, 1, 2, 0, '2020-05-23 01:19:44'),
(227, 86761393, 51, 1, 1, 3, 0, '2020-05-23 01:19:44'),
(228, 86761393, 75, 1, 1, 4, 0, '2020-05-23 01:19:44'),
(229, 86761393, 72, 1, 2, 1, 0, '2020-05-23 01:19:44'),
(230, 86761393, 44, 1, 2, 2, 0, '2020-05-23 01:19:44'),
(231, 86761393, 51, 1, 2, 3, 0, '2020-05-23 01:19:44'),
(232, 86761393, 84, 1, 2, 4, 0, '2020-05-23 01:19:44'),
(233, 86761393, 71, 1, 3, 1, 0, '2020-05-23 01:19:45'),
(234, 86761393, 52, 1, 3, 2, 0, '2020-05-23 01:19:45'),
(235, 86761393, 62, 1, 3, 3, 0, '2020-05-23 01:19:45'),
(236, 86761393, 78, 1, 3, 4, 0, '2020-05-23 01:19:45'),
(237, 86761393, 72, 1, 4, 1, 0, '2020-05-23 01:19:45'),
(238, 86761393, 44, 1, 4, 2, 0, '2020-05-23 01:19:45'),
(239, 86761393, 69, 1, 4, 3, 0, '2020-05-23 01:19:45'),
(240, 86761393, 78, 1, 4, 4, 0, '2020-05-23 01:19:45'),
(241, 86761393, 89, 1, 5, 1, 0, '2020-05-23 01:19:45'),
(242, 86761393, 34, 1, 5, 2, 0, '2020-05-23 01:19:45'),
(243, 86761393, 37, 1, 5, 3, 0, '2020-05-23 01:19:46'),
(244, 86761393, 84, 1, 5, 4, 0, '2020-05-23 01:19:46'),
(245, 86761393, 74, 1, 6, 1, 0, '2020-05-23 01:19:46'),
(246, 86761393, 52, 1, 6, 2, 0, '2020-05-23 01:19:46'),
(247, 86761393, 69, 1, 6, 3, 0, '2020-05-23 01:19:46'),
(248, 86761393, 80, 1, 6, 4, 0, '2020-05-23 01:19:46'),
(249, 86761393, 72, 1, 7, 1, 0, '2020-05-23 01:19:46'),
(250, 86761393, 44, 1, 7, 2, 0, '2020-05-23 01:19:46'),
(251, 86761393, 45, 1, 7, 3, 0, '2020-05-23 01:19:46'),
(252, 86761393, 84, 1, 7, 4, 0, '2020-05-23 01:19:46'),
(253, 86761393, 60, 2, 1, 1, 0, '2020-05-23 01:19:46'),
(254, 86761393, 61, 2, 1, 2, 0, '2020-05-23 01:19:46'),
(255, 86761393, 45, 2, 1, 3, 0, '2020-05-23 01:19:46'),
(256, 86761393, 86, 2, 1, 4, 0, '2020-05-23 01:19:46'),
(257, 86761393, 72, 2, 2, 1, 0, '2020-05-23 01:19:46'),
(258, 86761393, 66, 2, 2, 2, 0, '2020-05-23 01:19:47'),
(259, 86761393, 51, 2, 2, 3, 0, '2020-05-23 01:19:47'),
(260, 86761393, 73, 2, 2, 4, 0, '2020-05-23 01:19:47'),
(261, 86761393, 72, 2, 3, 1, 0, '2020-05-23 01:19:47'),
(262, 86761393, 32, 2, 3, 2, 0, '2020-05-23 01:19:47'),
(263, 86761393, 67, 2, 3, 3, 0, '2020-05-23 01:19:47'),
(264, 86761393, 90, 2, 3, 4, 0, '2020-05-23 01:19:47'),
(265, 86761393, 72, 2, 4, 1, 0, '2020-05-23 01:19:47'),
(266, 86761393, 52, 2, 4, 2, 0, '2020-05-23 01:19:47'),
(267, 86761393, 38, 2, 4, 3, 0, '2020-05-23 01:19:47'),
(268, 86761393, 84, 2, 4, 4, 0, '2020-05-23 01:19:47'),
(269, 86761393, 77, 2, 5, 1, 0, '2020-05-23 01:19:47'),
(270, 86761393, 35, 2, 5, 2, 0, '2020-05-23 01:19:47'),
(271, 86761393, 45, 2, 5, 3, 0, '2020-05-23 01:19:47'),
(272, 86761393, 75, 2, 5, 4, 0, '2020-05-23 01:19:47'),
(273, 86761393, 77, 2, 6, 1, 0, '2020-05-23 01:19:48'),
(274, 86761393, 52, 2, 6, 2, 0, '2020-05-23 01:19:48'),
(275, 86761393, 38, 2, 6, 3, 0, '2020-05-23 01:19:48'),
(276, 86761393, 79, 2, 6, 4, 0, '2020-05-23 01:19:48'),
(277, 86761393, 55, 2, 7, 1, 0, '2020-05-23 01:19:48'),
(278, 86761393, 44, 2, 7, 2, 0, '2020-05-23 01:19:48'),
(279, 86761393, 46, 2, 7, 3, 0, '2020-05-23 01:19:48'),
(280, 86761393, 80, 2, 7, 4, 0, '2020-05-23 01:19:48'),
(281, 86761393, 74, 3, 1, 1, 0, '2020-05-23 01:19:48'),
(282, 86761393, 61, 3, 1, 2, 0, '2020-05-23 01:19:48'),
(283, 86761393, 48, 3, 1, 3, 0, '2020-05-23 01:19:48'),
(284, 86761393, 85, 3, 1, 4, 0, '2020-05-23 01:19:48'),
(285, 86761393, 77, 3, 2, 1, 0, '2020-05-23 01:19:49'),
(286, 86761393, 35, 3, 2, 2, 0, '2020-05-23 01:19:49'),
(287, 86761393, 70, 3, 2, 3, 0, '2020-05-23 01:19:49'),
(288, 86761393, 76, 3, 2, 4, 0, '2020-05-23 01:19:49'),
(289, 86761393, 33, 3, 3, 1, 0, '2020-05-23 01:19:49'),
(290, 86761393, 52, 3, 3, 2, 0, '2020-05-23 01:19:49'),
(291, 86761393, 46, 3, 3, 3, 0, '2020-05-23 01:19:49'),
(292, 86761393, 75, 3, 3, 4, 0, '2020-05-23 01:19:49'),
(293, 86761393, 63, 3, 4, 1, 0, '2020-05-23 01:19:49'),
(294, 86761393, 52, 3, 4, 2, 0, '2020-05-23 01:19:49'),
(295, 86761393, 46, 3, 4, 3, 0, '2020-05-23 01:19:49'),
(296, 86761393, 78, 3, 4, 4, 0, '2020-05-23 01:19:49'),
(297, 86761393, 63, 3, 5, 1, 0, '2020-05-23 01:19:49'),
(298, 86761393, 56, 3, 5, 2, 0, '2020-05-23 01:19:49'),
(299, 86761393, 59, 3, 5, 3, 0, '2020-05-23 01:19:49'),
(300, 86761393, 88, 3, 5, 4, 0, '2020-05-23 01:19:49'),
(301, 86761393, 89, 3, 6, 1, 0, '2020-05-23 01:19:50'),
(302, 86761393, 34, 3, 6, 2, 0, '2020-05-23 01:19:50'),
(303, 86761393, 62, 3, 6, 3, 0, '2020-05-23 01:19:50'),
(304, 86761393, 79, 3, 6, 4, 0, '2020-05-23 01:19:50'),
(305, 86761393, 71, 3, 7, 1, 0, '2020-05-23 01:19:50'),
(306, 86761393, 56, 3, 7, 2, 0, '2020-05-23 01:19:50'),
(307, 86761393, 45, 3, 7, 3, 0, '2020-05-23 01:19:50'),
(308, 86761393, 75, 3, 7, 4, 0, '2020-05-23 01:19:50'),
(309, 86761393, 55, 4, 1, 1, 0, '2020-05-23 01:19:50'),
(310, 86761393, 32, 4, 1, 2, 0, '2020-05-23 01:19:50'),
(311, 86761393, 50, 4, 1, 3, 0, '2020-05-23 01:19:51'),
(312, 86761393, 90, 4, 1, 4, 0, '2020-05-23 01:19:51'),
(313, 86761393, 33, 4, 2, 1, 0, '2020-05-23 01:19:51'),
(314, 86761393, 47, 4, 2, 2, 0, '2020-05-23 01:19:51'),
(315, 86761393, 69, 4, 2, 3, 0, '2020-05-23 01:19:51'),
(316, 86761393, 79, 4, 2, 4, 0, '2020-05-23 01:19:51'),
(317, 86761393, 74, 4, 3, 1, 0, '2020-05-23 01:19:51'),
(318, 86761393, 34, 4, 3, 2, 0, '2020-05-23 01:19:51'),
(319, 86761393, 38, 4, 3, 3, 0, '2020-05-23 01:19:51'),
(320, 86761393, 80, 4, 3, 4, 0, '2020-05-23 01:19:51'),
(321, 86761393, 82, 4, 4, 1, 0, '2020-05-23 01:19:52'),
(322, 86761393, 35, 4, 4, 2, 0, '2020-05-23 01:19:52'),
(323, 86761393, 48, 4, 4, 3, 0, '2020-05-23 01:19:52'),
(324, 86761393, 95, 4, 4, 4, 0, '2020-05-23 01:19:52'),
(325, 86761393, 81, 4, 5, 1, 0, '2020-05-23 01:19:52'),
(326, 86761393, 56, 4, 5, 2, 0, '2020-05-23 01:19:52'),
(327, 86761393, 38, 4, 5, 3, 0, '2020-05-23 01:19:52'),
(328, 86761393, 86, 4, 5, 4, 0, '2020-05-23 01:19:52'),
(329, 86761393, 53, 4, 6, 1, 0, '2020-05-23 01:19:52'),
(330, 86761393, 56, 4, 6, 2, 0, '2020-05-23 01:19:52'),
(331, 86761393, 38, 4, 6, 3, 0, '2020-05-23 01:19:52'),
(332, 86761393, 79, 4, 6, 4, 0, '2020-05-23 01:19:52'),
(333, 86761393, 53, 4, 7, 1, 0, '2020-05-23 01:19:53'),
(334, 86761393, 35, 4, 7, 2, 0, '2020-05-23 01:19:53'),
(335, 86761393, 37, 4, 7, 3, 0, '2020-05-23 01:19:53'),
(336, 86761393, 78, 4, 7, 4, 0, '2020-05-23 01:19:53'),
(337, 86761394, 89, 1, 1, 1, 0, '2020-05-23 01:58:17'),
(338, 86761394, 68, 1, 1, 2, 0, '2020-05-23 01:58:17'),
(339, 86761394, 54, 1, 1, 3, 0, '2020-05-23 01:58:17'),
(340, 86761394, 92, 1, 1, 4, 0, '2020-05-23 01:58:17'),
(341, 86761394, 53, 1, 2, 1, 0, '2020-05-23 01:58:17'),
(342, 86761394, 56, 1, 2, 2, 0, '2020-05-23 01:58:17'),
(343, 86761394, 37, 1, 2, 3, 0, '2020-05-23 01:58:17'),
(344, 86761394, 80, 1, 2, 4, 0, '2020-05-23 01:58:17'),
(345, 86761394, 74, 1, 3, 1, 0, '2020-05-23 01:58:17'),
(346, 86761394, 44, 1, 3, 2, 0, '2020-05-23 01:58:17'),
(347, 86761394, 69, 1, 3, 3, 0, '2020-05-23 01:58:17'),
(348, 86761394, 78, 1, 3, 4, 0, '2020-05-23 01:58:17'),
(349, 86761394, 71, 1, 4, 1, 0, '2020-05-23 01:58:18'),
(350, 86761394, 66, 1, 4, 2, 0, '2020-05-23 01:58:18'),
(351, 86761394, 51, 1, 4, 3, 0, '2020-05-23 01:58:18'),
(352, 86761394, 92, 1, 4, 4, 0, '2020-05-23 01:58:18'),
(353, 86761394, 82, 1, 5, 1, 0, '2020-05-23 01:58:18'),
(354, 86761394, 68, 1, 5, 2, 0, '2020-05-23 01:58:18'),
(355, 86761394, 38, 1, 5, 3, 0, '2020-05-23 01:58:18'),
(356, 86761394, 80, 1, 5, 4, 0, '2020-05-23 01:58:18'),
(357, 86761394, 82, 1, 6, 1, 0, '2020-05-23 01:58:18'),
(358, 86761394, 52, 1, 6, 2, 0, '2020-05-23 01:58:18'),
(359, 86761394, 28, 1, 6, 3, 0, '2020-05-23 01:58:18'),
(360, 86761394, 90, 1, 6, 4, 0, '2020-05-23 01:58:18'),
(361, 86761394, 77, 1, 7, 1, 0, '2020-05-23 01:58:18'),
(362, 86761394, 44, 1, 7, 2, 0, '2020-05-23 01:58:18'),
(363, 86761394, 51, 1, 7, 3, 0, '2020-05-23 01:58:18'),
(364, 86761394, 80, 1, 7, 4, 0, '2020-05-23 01:58:18'),
(365, 86761394, 29, 2, 1, 1, 0, '2020-05-23 01:58:18'),
(366, 86761394, 47, 2, 1, 2, 0, '2020-05-23 01:58:18'),
(367, 86761394, 69, 2, 1, 3, 0, '2020-05-23 01:58:18'),
(368, 86761394, 76, 2, 1, 4, 0, '2020-05-23 01:58:18'),
(369, 86761394, 29, 2, 2, 1, 0, '2020-05-23 01:58:19'),
(370, 86761394, 61, 2, 2, 2, 0, '2020-05-23 01:58:19'),
(371, 86761394, 62, 2, 2, 3, 0, '2020-05-23 01:58:19'),
(372, 86761394, 78, 2, 2, 4, 0, '2020-05-23 01:58:19'),
(373, 86761394, 63, 2, 3, 1, 0, '2020-05-23 01:58:19'),
(374, 86761394, 56, 2, 3, 2, 0, '2020-05-23 01:58:19'),
(375, 86761394, 48, 2, 3, 3, 0, '2020-05-23 01:58:19'),
(376, 86761394, 87, 2, 3, 4, 0, '2020-05-23 01:58:19'),
(377, 86761394, 89, 2, 4, 1, 0, '2020-05-23 01:58:19'),
(378, 86761394, 30, 2, 4, 2, 0, '2020-05-23 01:58:19'),
(379, 86761394, 37, 2, 4, 3, 0, '2020-05-23 01:58:19'),
(380, 86761394, 78, 2, 4, 4, 0, '2020-05-23 01:58:19'),
(381, 86761394, 82, 2, 5, 1, 0, '2020-05-23 01:58:19'),
(382, 86761394, 56, 2, 5, 2, 0, '2020-05-23 01:58:19'),
(383, 86761394, 50, 2, 5, 3, 0, '2020-05-23 01:58:19'),
(384, 86761394, 78, 2, 5, 4, 0, '2020-05-23 01:58:19'),
(385, 86761394, 81, 2, 6, 1, 0, '2020-05-23 01:58:19'),
(386, 86761394, 66, 2, 6, 2, 0, '2020-05-23 01:58:19'),
(387, 86761394, 49, 2, 6, 3, 0, '2020-05-23 01:58:19'),
(388, 86761394, 85, 2, 6, 4, 0, '2020-05-23 01:58:20'),
(389, 86761394, 71, 2, 7, 1, 0, '2020-05-23 01:58:20'),
(390, 86761394, 30, 2, 7, 2, 0, '2020-05-23 01:58:20'),
(391, 86761394, 50, 2, 7, 3, 0, '2020-05-23 01:58:20'),
(392, 86761394, 91, 2, 7, 4, 0, '2020-05-23 01:58:20'),
(393, 86761394, 71, 3, 1, 1, 0, '2020-05-23 01:58:20'),
(394, 86761394, 61, 3, 1, 2, 0, '2020-05-23 01:58:20'),
(395, 86761394, 69, 3, 1, 3, 0, '2020-05-23 01:58:20'),
(396, 86761394, 95, 3, 1, 4, 0, '2020-05-23 01:58:20'),
(397, 86761394, 72, 3, 2, 1, 0, '2020-05-23 01:58:20'),
(398, 86761394, 27, 3, 2, 2, 0, '2020-05-23 01:58:20'),
(399, 86761394, 62, 3, 2, 3, 0, '2020-05-23 01:58:20'),
(400, 86761394, 92, 3, 2, 4, 0, '2020-05-23 01:58:20'),
(401, 86761394, 82, 3, 3, 1, 0, '2020-05-23 01:58:20'),
(402, 86761394, 52, 3, 3, 2, 0, '2020-05-23 01:58:20'),
(403, 86761394, 70, 3, 3, 3, 0, '2020-05-23 01:58:20'),
(404, 86761394, 79, 3, 3, 4, 0, '2020-05-23 01:58:20'),
(405, 86761394, 53, 3, 4, 1, 0, '2020-05-23 01:58:20'),
(406, 86761394, 47, 3, 4, 2, 0, '2020-05-23 01:58:20'),
(407, 86761394, 69, 3, 4, 3, 0, '2020-05-23 01:58:21'),
(408, 86761394, 85, 3, 4, 4, 0, '2020-05-23 01:58:21'),
(409, 86761394, 77, 3, 5, 1, 0, '2020-05-23 01:58:21'),
(410, 86761394, 27, 3, 5, 2, 0, '2020-05-23 01:58:21'),
(411, 86761394, 36, 3, 5, 3, 0, '2020-05-23 01:58:21'),
(412, 86761394, 86, 3, 5, 4, 0, '2020-05-23 01:58:21'),
(413, 86761394, 29, 3, 6, 1, 0, '2020-05-23 01:58:21'),
(414, 86761394, 52, 3, 6, 2, 0, '2020-05-23 01:58:21'),
(415, 86761394, 51, 3, 6, 3, 0, '2020-05-23 01:58:21'),
(416, 86761394, 79, 3, 6, 4, 0, '2020-05-23 01:58:21'),
(417, 86761394, 53, 3, 7, 1, 0, '2020-05-23 01:58:21'),
(418, 86761394, 44, 3, 7, 2, 0, '2020-05-23 01:58:21'),
(419, 86761394, 36, 3, 7, 3, 0, '2020-05-23 01:58:21'),
(420, 86761394, 76, 3, 7, 4, 0, '2020-05-23 01:58:21'),
(421, 86761394, 77, 4, 1, 1, 0, '2020-05-23 01:58:21'),
(422, 86761394, 52, 4, 1, 2, 0, '2020-05-23 01:58:21'),
(423, 86761394, 51, 4, 1, 3, 0, '2020-05-23 01:58:21'),
(424, 86761394, 80, 4, 1, 4, 0, '2020-05-23 01:58:21'),
(425, 86761394, 29, 4, 2, 1, 0, '2020-05-23 01:58:22'),
(426, 86761394, 68, 4, 2, 2, 0, '2020-05-23 01:58:22'),
(427, 86761394, 70, 4, 2, 3, 0, '2020-05-23 01:58:22'),
(428, 86761394, 76, 4, 2, 4, 0, '2020-05-23 01:58:22'),
(429, 86761394, 74, 4, 3, 1, 0, '2020-05-23 01:58:22'),
(430, 86761394, 47, 4, 3, 2, 0, '2020-05-23 01:58:22'),
(431, 86761394, 67, 4, 3, 3, 0, '2020-05-23 01:58:22'),
(432, 86761394, 79, 4, 3, 4, 0, '2020-05-23 01:58:22'),
(433, 86761394, 53, 4, 4, 1, 0, '2020-05-23 01:58:22'),
(434, 86761394, 52, 4, 4, 2, 0, '2020-05-23 01:58:22'),
(435, 86761394, 45, 4, 4, 3, 0, '2020-05-23 01:58:22'),
(436, 86761394, 75, 4, 4, 4, 0, '2020-05-23 01:58:22'),
(437, 86761394, 83, 4, 5, 1, 0, '2020-05-23 01:58:22'),
(438, 86761394, 66, 4, 5, 2, 0, '2020-05-23 01:58:22'),
(439, 86761394, 46, 4, 5, 3, 0, '2020-05-23 01:58:22'),
(440, 86761394, 79, 4, 5, 4, 0, '2020-05-23 01:58:22'),
(441, 86761394, 77, 4, 6, 1, 0, '2020-05-23 01:58:22'),
(442, 86761394, 52, 4, 6, 2, 0, '2020-05-23 01:58:22'),
(443, 86761394, 70, 4, 6, 3, 0, '2020-05-23 01:58:22'),
(444, 86761394, 73, 4, 6, 4, 0, '2020-05-23 01:58:22'),
(445, 86761394, 89, 4, 7, 1, 0, '2020-05-23 01:58:22'),
(446, 86761394, 66, 4, 7, 2, 0, '2020-05-23 01:58:22'),
(447, 86761394, 54, 4, 7, 3, 0, '2020-05-23 01:58:23'),
(448, 86761394, 88, 4, 7, 4, 0, '2020-05-23 01:58:23'),
(449, 86761396, 72, 1, 1, 1, 0, '2020-05-23 16:48:06'),
(450, 86761396, 61, 1, 1, 2, 0, '2020-05-23 16:48:06'),
(451, 86761396, 28, 1, 1, 3, 0, '2020-05-23 16:48:06'),
(452, 86761396, 78, 1, 1, 4, 0, '2020-05-23 16:48:06'),
(453, 86761396, 83, 1, 2, 1, 0, '2020-05-23 16:48:06'),
(454, 86761396, 56, 1, 2, 2, 0, '2020-05-23 16:48:06'),
(455, 86761396, 50, 1, 2, 3, 0, '2020-05-23 16:48:06'),
(456, 86761396, 65, 1, 2, 4, 0, '2020-05-23 16:48:07'),
(457, 86761396, 83, 1, 3, 1, 0, '2020-05-23 16:48:07'),
(458, 86761396, 30, 1, 3, 2, 0, '2020-05-23 16:48:07'),
(459, 86761396, 67, 1, 3, 3, 0, '2020-05-23 16:48:07'),
(460, 86761396, 86, 1, 3, 4, 0, '2020-05-23 16:48:07'),
(461, 86761396, 82, 1, 4, 1, 0, '2020-05-23 16:48:07'),
(462, 86761396, 30, 1, 4, 2, 0, '2020-05-23 16:48:07'),
(463, 86761396, 67, 1, 4, 3, 0, '2020-05-23 16:48:07'),
(464, 86761396, 90, 1, 4, 4, 0, '2020-05-23 16:48:07'),
(465, 86761396, 83, 1, 5, 1, 0, '2020-05-23 16:48:07'),
(466, 86761396, 30, 1, 5, 2, 0, '2020-05-23 16:48:07'),
(467, 86761396, 49, 1, 5, 3, 0, '2020-05-23 16:48:07'),
(468, 86761396, 65, 1, 5, 4, 0, '2020-05-23 16:48:07'),
(469, 86761396, 71, 1, 6, 1, 0, '2020-05-23 16:48:07'),
(470, 86761396, 27, 1, 6, 2, 0, '2020-05-23 16:48:07'),
(471, 86761396, 36, 1, 6, 3, 0, '2020-05-23 16:48:07'),
(472, 86761396, 88, 1, 6, 4, 0, '2020-05-23 16:48:07'),
(473, 86761396, 74, 1, 7, 1, 0, '2020-05-23 16:48:07'),
(474, 86761396, 44, 1, 7, 2, 0, '2020-05-23 16:48:08'),
(475, 86761396, 28, 1, 7, 3, 0, '2020-05-23 16:48:08'),
(476, 86761396, 90, 1, 7, 4, 0, '2020-05-23 16:48:08'),
(477, 86761396, 71, 2, 1, 1, 0, '2020-05-23 16:48:08'),
(478, 86761396, 44, 2, 1, 2, 0, '2020-05-23 16:48:08'),
(479, 86761396, 69, 2, 1, 3, 0, '2020-05-23 16:48:08'),
(480, 86761396, 85, 2, 1, 4, 0, '2020-05-23 16:48:08'),
(481, 86761396, 71, 2, 2, 1, 0, '2020-05-23 16:48:08'),
(482, 86761396, 47, 2, 2, 2, 0, '2020-05-23 16:48:08'),
(483, 86761396, 50, 2, 2, 3, 0, '2020-05-23 16:48:08'),
(484, 86761396, 88, 2, 2, 4, 0, '2020-05-23 16:48:08'),
(485, 86761396, 74, 2, 3, 1, 0, '2020-05-23 16:48:08'),
(486, 86761396, 68, 2, 3, 2, 0, '2020-05-23 16:48:08'),
(487, 86761396, 48, 2, 3, 3, 0, '2020-05-23 16:48:08'),
(488, 86761396, 75, 2, 3, 4, 0, '2020-05-23 16:48:08'),
(489, 86761396, 72, 2, 4, 1, 0, '2020-05-23 16:48:08'),
(490, 86761396, 56, 2, 4, 2, 0, '2020-05-23 16:48:08'),
(491, 86761396, 28, 2, 4, 3, 0, '2020-05-23 16:48:08'),
(492, 86761396, 65, 2, 4, 4, 0, '2020-05-23 16:48:08'),
(493, 86761396, 82, 2, 5, 1, 0, '2020-05-23 16:48:08'),
(494, 86761396, 44, 2, 5, 2, 0, '2020-05-23 16:48:09'),
(495, 86761396, 62, 2, 5, 3, 0, '2020-05-23 16:48:09'),
(496, 86761396, 90, 2, 5, 4, 0, '2020-05-23 16:48:09'),
(497, 86761396, 74, 2, 6, 1, 0, '2020-05-23 16:48:09'),
(498, 86761396, 27, 2, 6, 2, 0, '2020-05-23 16:48:09'),
(499, 86761396, 69, 2, 6, 3, 0, '2020-05-23 16:48:09'),
(500, 86761396, 76, 2, 6, 4, 0, '2020-05-23 16:48:09'),
(501, 86761396, 29, 2, 7, 1, 0, '2020-05-23 16:48:09'),
(502, 86761396, 30, 2, 7, 2, 0, '2020-05-23 16:48:09'),
(503, 86761396, 70, 2, 7, 3, 0, '2020-05-23 16:48:09'),
(504, 86761396, 95, 2, 7, 4, 0, '2020-05-23 16:48:09'),
(505, 86761396, 60, 3, 1, 1, 0, '2020-05-23 16:48:09'),
(506, 86761396, 27, 3, 1, 2, 0, '2020-05-23 16:48:09'),
(507, 86761396, 62, 3, 1, 3, 0, '2020-05-23 16:48:09'),
(508, 86761396, 92, 3, 1, 4, 0, '2020-05-23 16:48:09'),
(509, 86761396, 53, 3, 2, 1, 0, '2020-05-23 16:48:09'),
(510, 86761396, 52, 3, 2, 2, 0, '2020-05-23 16:48:09'),
(511, 86761396, 37, 3, 2, 3, 0, '2020-05-23 16:48:09'),
(512, 86761396, 87, 3, 2, 4, 0, '2020-05-23 16:48:09'),
(513, 86761396, 94, 3, 3, 1, 0, '2020-05-23 16:48:10'),
(514, 86761396, 68, 3, 3, 2, 0, '2020-05-23 16:48:10'),
(515, 86761396, 37, 3, 3, 3, 0, '2020-05-23 16:48:10'),
(516, 86761396, 78, 3, 3, 4, 0, '2020-05-23 16:48:10'),
(517, 86761396, 53, 3, 4, 1, 0, '2020-05-23 16:48:10'),
(518, 86761396, 47, 3, 4, 2, 0, '2020-05-23 16:48:10'),
(519, 86761396, 37, 3, 4, 3, 0, '2020-05-23 16:48:10'),
(520, 86761396, 76, 3, 4, 4, 0, '2020-05-23 16:48:10'),
(521, 86761396, 72, 3, 5, 1, 0, '2020-05-23 16:48:10'),
(522, 86761396, 27, 3, 5, 2, 0, '2020-05-23 16:48:10'),
(523, 86761396, 46, 3, 5, 3, 0, '2020-05-23 16:48:10'),
(524, 86761396, 88, 3, 5, 4, 0, '2020-05-23 16:48:10'),
(525, 86761396, 74, 3, 6, 1, 0, '2020-05-23 16:48:10'),
(526, 86761396, 61, 3, 6, 2, 0, '2020-05-23 16:48:10'),
(527, 86761396, 46, 3, 6, 3, 0, '2020-05-23 16:48:10'),
(528, 86761396, 86, 3, 6, 4, 0, '2020-05-23 16:48:10'),
(529, 86761396, 72, 3, 7, 1, 0, '2020-05-23 16:48:10'),
(530, 86761396, 68, 3, 7, 2, 0, '2020-05-23 16:48:10'),
(531, 86761396, 28, 3, 7, 3, 0, '2020-05-23 16:48:11'),
(532, 86761396, 65, 3, 7, 4, 0, '2020-05-23 16:48:11'),
(533, 86761396, 71, 4, 1, 1, 0, '2020-05-23 16:48:11'),
(534, 86761396, 27, 4, 1, 2, 0, '2020-05-23 16:48:11'),
(535, 86761396, 37, 4, 1, 3, 0, '2020-05-23 16:48:11'),
(536, 86761396, 84, 4, 1, 4, 0, '2020-05-23 16:48:11'),
(537, 86761396, 81, 4, 2, 1, 0, '2020-05-23 16:48:11'),
(538, 86761396, 61, 4, 2, 2, 0, '2020-05-23 16:48:11'),
(539, 86761396, 48, 4, 2, 3, 0, '2020-05-23 16:48:11'),
(540, 86761396, 92, 4, 2, 4, 0, '2020-05-23 16:48:11'),
(541, 86761396, 72, 4, 3, 1, 0, '2020-05-23 16:48:11'),
(542, 86761396, 68, 4, 3, 2, 0, '2020-05-23 16:48:11'),
(543, 86761396, 54, 4, 3, 3, 0, '2020-05-23 16:48:11'),
(544, 86761396, 75, 4, 3, 4, 0, '2020-05-23 16:48:11'),
(545, 86761396, 74, 4, 4, 1, 0, '2020-05-23 16:48:12'),
(546, 86761396, 30, 4, 4, 2, 0, '2020-05-23 16:48:12'),
(547, 86761396, 45, 4, 4, 3, 0, '2020-05-23 16:48:12'),
(548, 86761396, 75, 4, 4, 4, 0, '2020-05-23 16:48:12'),
(549, 86761396, 71, 4, 5, 1, 0, '2020-05-23 16:48:12'),
(550, 86761396, 56, 4, 5, 2, 0, '2020-05-23 16:48:12'),
(551, 86761396, 46, 4, 5, 3, 0, '2020-05-23 16:48:12'),
(552, 86761396, 86, 4, 5, 4, 0, '2020-05-23 16:48:12'),
(553, 86761396, 74, 4, 6, 1, 0, '2020-05-23 16:48:12'),
(554, 86761396, 61, 4, 6, 2, 0, '2020-05-23 16:48:12'),
(555, 86761396, 54, 4, 6, 3, 0, '2020-05-23 16:48:12'),
(556, 86761396, 79, 4, 6, 4, 0, '2020-05-23 16:48:13'),
(557, 86761396, 71, 4, 7, 1, 0, '2020-05-23 16:48:13'),
(558, 86761396, 47, 4, 7, 2, 0, '2020-05-23 16:48:13'),
(559, 86761396, 45, 4, 7, 3, 0, '2020-05-23 16:48:13'),
(560, 86761396, 85, 4, 7, 4, 0, '2020-05-23 16:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `user_payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_id` varchar(100) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `months` int(11) NOT NULL,
  `given_name` varchar(50) NOT NULL,
  `payment_method` varchar(10) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`user_payment_id`, `user_id`, `p_id`, `amount`, `months`, `given_name`, `payment_method`, `created_date`) VALUES
(1, 86761396, '18A62228FT8916900', '42.00', 1, 'John', 'pp', '2020-05-23 16:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `user_preference_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `familiar_id` int(11) NOT NULL,
  `physically_active_id` int(11) NOT NULL,
  `preparation_time_id` int(11) NOT NULL,
  `willingness_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_preference_meat_types`
--

CREATE TABLE `user_preference_meat_types` (
  `user_id` int(11) NOT NULL,
  `meat_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_preference_meat_types`
--

INSERT INTO `user_preference_meat_types` (`user_id`, `meat_type_id`) VALUES
(7, 1),
(7, 3),
(7, 2),
(0, 1),
(0, 2),
(0, 3),
(0, 4),
(0, 5),
(0, 6),
(0, 7),
(86761372, 1),
(86761372, 2),
(86761372, 3),
(86761372, 4),
(86761372, 5),
(86761372, 6),
(86761372, 7),
(86761391, 1),
(86761391, 2),
(86761391, 4),
(86761391, 5),
(86761391, 6),
(86761391, 7),
(86761392, 1),
(86761392, 3),
(86761392, 4),
(86761392, 5),
(86761392, 6),
(86761392, 7),
(86761393, 1),
(86761393, 2),
(86761393, 4),
(86761393, 5),
(86761393, 6),
(86761393, 7),
(86761394, 1),
(86761394, 3),
(86761394, 4),
(86761394, 5),
(86761394, 7),
(86761396, 1),
(86761396, 3),
(86761396, 4),
(86761396, 5),
(86761396, 6),
(86761396, 7),
(86761399, 1),
(86761399, 2),
(86761399, 4),
(86761399, 5),
(86761399, 6),
(86761399, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_preference_product_types`
--

CREATE TABLE `user_preference_product_types` (
  `user_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_preference_product_types`
--

INSERT INTO `user_preference_product_types` (`user_id`, `product_type_id`) VALUES
(7, 4),
(7, 5),
(7, 6),
(7, 8),
(86761368, 1),
(86761368, 4),
(86761368, 5),
(86761368, 6),
(86761368, 7),
(86761368, 8),
(86761368, 9),
(86761368, 10),
(86761368, 11),
(86761368, 12),
(86761368, 13),
(86761371, 1),
(86761371, 2),
(86761371, 5),
(86761371, 6),
(86761371, 7),
(86761371, 8),
(86761371, 9),
(86761371, 10),
(86761371, 11),
(86761371, 12),
(86761371, 13),
(0, 1),
(0, 2),
(0, 3),
(0, 4),
(0, 6),
(0, 7),
(0, 8),
(0, 9),
(0, 10),
(0, 11),
(0, 12),
(0, 13),
(0, 1),
(0, 2),
(0, 3),
(0, 4),
(0, 6),
(0, 7),
(0, 8),
(0, 9),
(0, 10),
(0, 11),
(0, 12),
(0, 13),
(86761372, 1),
(86761372, 2),
(86761372, 3),
(86761372, 4),
(86761372, 6),
(86761372, 7),
(86761372, 8),
(86761372, 9),
(86761372, 10),
(86761372, 11),
(86761372, 12),
(86761372, 13),
(86761391, 1),
(86761391, 2),
(86761391, 3),
(86761391, 5),
(86761391, 6),
(86761391, 7),
(86761391, 8),
(86761391, 9),
(86761391, 10),
(86761391, 11),
(86761391, 12),
(86761391, 13),
(86761392, 1),
(86761392, 2),
(86761392, 3),
(86761392, 5),
(86761392, 6),
(86761392, 7),
(86761392, 8),
(86761392, 9),
(86761392, 10),
(86761392, 11),
(86761392, 12),
(86761392, 13),
(86761393, 1),
(86761393, 2),
(86761393, 3),
(86761393, 5),
(86761393, 6),
(86761393, 7),
(86761393, 8),
(86761393, 9),
(86761393, 10),
(86761393, 11),
(86761393, 12),
(86761393, 13),
(86761394, 1),
(86761394, 2),
(86761394, 3),
(86761394, 4),
(86761394, 5),
(86761394, 6),
(86761394, 7),
(86761394, 8),
(86761394, 10),
(86761394, 11),
(86761394, 12),
(86761394, 13),
(86761396, 1),
(86761396, 2),
(86761396, 4),
(86761396, 5),
(86761396, 6),
(86761396, 7),
(86761396, 8),
(86761396, 9),
(86761396, 10),
(86761396, 11),
(86761396, 12),
(86761396, 13),
(86761399, 1),
(86761399, 2),
(86761399, 4),
(86761399, 5),
(86761399, 6),
(86761399, 7),
(86761399, 8),
(86761399, 9),
(86761399, 10),
(86761399, 11),
(86761399, 12),
(86761399, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user_summary`
--

CREATE TABLE `user_summary` (
  `user_summary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `BMI` decimal(11,0) NOT NULL,
  `Kcal` decimal(11,0) NOT NULL,
  `bmr` decimal(11,0) NOT NULL,
  `water_intake` decimal(2,1) NOT NULL,
  `height` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` int(2) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `target_weight` int(11) NOT NULL,
  `unit_system` int(1) NOT NULL,
  `is_meals_created` bit(1) NOT NULL DEFAULT b'0',
  `meal_created_date` datetime DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_summary`
--

INSERT INTO `user_summary` (`user_summary_id`, `user_id`, `BMI`, `Kcal`, `bmr`, `water_intake`, `height`, `age`, `gender`, `weight`, `target_weight`, `unit_system`, `is_meals_created`, `meal_created_date`, `create_at`) VALUES
(1, 0, '30', '760', '633', '0.0', 135, 35, 1, 55, 45, 1, b'0', NULL, '2020-05-22 00:55:19'),
(2, 0, '30', '760', '633', '0.0', 135, 35, 1, 55, 45, 1, b'0', NULL, '2020-05-22 00:55:34'),
(3, 0, '30', '760', '633', '0.0', 135, 35, 1, 55, 45, 1, b'0', NULL, '2020-05-22 00:55:54'),
(4, 86761368, '30', '760', '633', '0.0', 135, 35, 1, 55, 45, 1, b'0', NULL, '2020-05-22 01:03:03'),
(5, 0, '30', '760', '633', '0.0', 135, 35, 1, 55, 45, 1, b'0', NULL, '2020-05-22 01:06:21'),
(6, 0, '30', '760', '633', '0.0', 135, 35, 1, 55, 45, 1, b'0', NULL, '2020-05-22 01:06:43'),
(7, 0, '30', '760', '633', '0.0', 135, 35, 1, 55, 45, 1, b'0', NULL, '2020-05-22 01:07:08'),
(8, 0, '30', '760', '633', '0.0', 135, 35, 1, 55, 45, 1, b'0', NULL, '2020-05-22 01:08:45'),
(9, 86761371, '47', '1835', '1335', '0.0', 160, 65, 1, 120, 160, 1, b'0', NULL, '2020-05-22 03:59:39'),
(10, 0, '21', '816', '680', '0.0', 160, 65, 2, 55, 45, 1, b'0', NULL, '2020-05-22 16:14:01'),
(11, 0, '21', '816', '680', '0.0', 160, 65, 2, 55, 45, 1, b'0', NULL, '2020-05-22 16:14:38'),
(12, 86761372, '21', '816', '680', '0.0', 160, 65, 2, 55, 45, 1, b'0', NULL, '2020-05-22 16:15:27'),
(13, 86761391, '21', '1023', '853', '0.0', 160, 25, 2, 55, 45, 1, b'1', '2020-05-22 21:57:29', '2020-05-22 16:34:47'),
(14, 86761392, '22', '2508', '2090', '0.0', 135, 85, 1, 160, 140, 2, b'1', '2020-05-22 21:58:31', '2020-05-22 17:17:35'),
(15, 86761393, '26', '1309', '1091', '0.0', 185, 45, 2, 90, 45, 1, b'1', '2020-05-22 22:19:53', '2020-05-23 01:17:07'),
(16, 86761394, '35', '1595', '1160', '0.0', 160, 25, 1, 90, 80, 1, b'1', '2020-05-22 22:58:23', '2020-05-23 01:57:34'),
(17, 86761396, '27', '1135', '826', '0.0', 150, 13, 1, 60, 50, 1, b'1', '2020-05-23 13:48:13', '2020-05-23 16:44:30'),
(18, 86761399, '31', '1027', '856', '0.0', 160, 55, 1, 80, 75, 1, b'0', NULL, '2020-05-24 19:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `willingness`
--

CREATE TABLE `willingness` (
  `willingness_id` int(11) NOT NULL,
  `willingness_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `familiar`
--
ALTER TABLE `familiar`
  ADD PRIMARY KEY (`familiar_id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`meal_id`);

--
-- Indexes for table `meal_details`
--
ALTER TABLE `meal_details`
  ADD PRIMARY KEY (`meal_detail_id`);

--
-- Indexes for table `meal_meat_types`
--
ALTER TABLE `meal_meat_types`
  ADD PRIMARY KEY (`meal_meat_id`);

--
-- Indexes for table `meal_product_types`
--
ALTER TABLE `meal_product_types`
  ADD PRIMARY KEY (`meal_product_id`);

--
-- Indexes for table `meal_recipe_steps`
--
ALTER TABLE `meal_recipe_steps`
  ADD PRIMARY KEY (`meal_recipe_step_id`);

--
-- Indexes for table `meal_types`
--
ALTER TABLE `meal_types`
  ADD PRIMARY KEY (`meal_type_id`);

--
-- Indexes for table `meat_types`
--
ALTER TABLE `meat_types`
  ADD PRIMARY KEY (`meat_type_id`);

--
-- Indexes for table `physically_active`
--
ALTER TABLE `physically_active`
  ADD PRIMARY KEY (`physically_active_id`);

--
-- Indexes for table `preparation_times`
--
ALTER TABLE `preparation_times`
  ADD PRIMARY KEY (`preparation_time_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`,`user_role_id`),
  ADD UNIQUE KEY `email_3` (`email`,`user_role_id`);

--
-- Indexes for table `user_meals`
--
ALTER TABLE `user_meals`
  ADD PRIMARY KEY (`user_meal_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`user_payment_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`user_preference_id`);

--
-- Indexes for table `user_summary`
--
ALTER TABLE `user_summary`
  ADD PRIMARY KEY (`user_summary_id`);

--
-- Indexes for table `willingness`
--
ALTER TABLE `willingness`
  ADD PRIMARY KEY (`willingness_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `familiar`
--
ALTER TABLE `familiar`
  MODIFY `familiar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `meal_details`
--
ALTER TABLE `meal_details`
  MODIFY `meal_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `meal_meat_types`
--
ALTER TABLE `meal_meat_types`
  MODIFY `meal_meat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `meal_product_types`
--
ALTER TABLE `meal_product_types`
  MODIFY `meal_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `meal_recipe_steps`
--
ALTER TABLE `meal_recipe_steps`
  MODIFY `meal_recipe_step_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=852;

--
-- AUTO_INCREMENT for table `meal_types`
--
ALTER TABLE `meal_types`
  MODIFY `meal_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meat_types`
--
ALTER TABLE `meat_types`
  MODIFY `meat_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `physically_active`
--
ALTER TABLE `physically_active`
  MODIFY `physically_active_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preparation_times`
--
ALTER TABLE `preparation_times`
  MODIFY `preparation_time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86761400;

--
-- AUTO_INCREMENT for table `user_meals`
--
ALTER TABLE `user_meals`
  MODIFY `user_meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `user_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `user_preference_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_summary`
--
ALTER TABLE `user_summary`
  MODIFY `user_summary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `willingness`
--
ALTER TABLE `willingness`
  MODIFY `willingness_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
