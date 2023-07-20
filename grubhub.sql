-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 05:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grubhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `ingre`
--

CREATE TABLE `ingre` (
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `ing_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `ing_name`) VALUES
(4, 'Broccoli'),
(34, 'Cheese'),
(17, 'Chicken'),
(15, 'Cilantro'),
(10, 'daal'),
(3, 'Eggplant'),
(14, 'Ginger'),
(12, 'lentils'),
(29, 'Mango'),
(30, 'Milk'),
(2, 'Oil'),
(9, 'Onion'),
(1, 'Potato'),
(19, 'Rice'),
(8, 'Salt'),
(5, 'Spinach'),
(31, 'Sugar'),
(6, 'Tomato'),
(11, 'turmeric'),
(20, 'Water'),
(18, 'Yogurt');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `r_id` int(11) NOT NULL,
  `name` varchar(23) NOT NULL,
  `ingredients` text NOT NULL,
  `instruction` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`r_id`, `name`, `ingredients`, `instruction`, `image`) VALUES
(1, 'Chowmein', 'Soya sauce, Noodles, Water, Salt, Galic paste, Vegetables', 'Chowmein is a quick and easy stir-fried noodle dish that can be made in just a few minutes. To make chowmein, boil the noodles, stir-fry vegetables in a wok, add cooked noodles and seasonings, and toss everything together. Serve hot and enjoy a tasty and satisfying meal.', 'chowmein.jpg'),
(2, 'Brownie', 'Butter, Sugar, Flour, Cocoa Powder, Baking Powder, Salt, Egg, Vanilla extract', 'Melt 1/2 cup of butter and mix with 1 cup of sugar, 1/2 cup of flour, 1/3 cup of cocoa powder, 1/4 tsp of baking powder, and 1/4 tsp of salt. Add 2 beaten eggs and 1 tsp of vanilla extract. Bake at 350°F for 20-25 minutes.', 'brownie.jpg'),
(3, 'Samosa', 'Potato, Oil, Wheat Flour, Salt', 'Mix flour, salt, and oil. Knead into dough. Stuff with spiced potato mix. Fry until golden. Enjoy crispy samosas.', 'samosa.png'),
(4, 'French Fries', 'Potato, Oil, Salt', 'To make French fries, peel and cut 2-3 potatoes into thin strips. Soak in cold water for 30 minutes, then dry. Heat oil in a deep pan and fry the potatoes until golden brown. Remove from the pan and sprinkle with salt. Serve hot with ketchup or mayonnaise.', 'fries.jpeg'),
(5, 'Dal', 'Oil, Salt, Onion,daal,turmeric,lentils,cumin Seeds', 'To prepare, boil 1 cup of red lentils until soft, then fry 1 chopped onion, 2 cloves of minced garlic, and 1 chopped green chili in 2 tbsp of oil. Add 1 tsp of cumin seeds, 1 tsp of turmeric, and the cooked lentils. Simmer for 10 minutes.', 'dal.jpg'),
(6, 'Vada', 'Oil, Salt, Ginger, Cilantro, Urad Daal', 'Soak 1 cup of urad dal for 4 hours, then grind into a smooth batter. Add 1 tsp of salt, 2 chopped green chilies, 1 tsp of grated ginger, and 1 tbsp of chopped cilantro. Form into small balls and deep fry until golden brown.', 'WhatsApp Image 2023-03-23 at 11.59.46 PM.jpeg'),
(7, 'Cheese toast', 'Bread, Butter, Cheese', ' Toast a slice of bread, spread butter on it, and sprinkle shredded cheese on top. Broil in the oven for 2-3 minutes, or until the cheese is melted and bubbly. Serve hot and enjoy!', 'cheese_toast.jpg'),
(8, 'Chicken Biryani', 'Onion, Salt, Chicken, Yogurt, Rice, Water, Biryani Masala,', 'Marinate 1 lb of chicken with 1 cup of yogurt and 2 tbsp of biryani masala. In a separate pan, fry 1 sliced onion and 1 tbsp of ginger-garlic paste. Add 2 cups of rice and the marinated chicken, and cook until the rice is tender. Serve with raita.', 'chicken_biryani.jpg'),
(10, 'Mango Shake', ' Mango, Milk, Sugar', 'Peel the mango.use the mango and milk to make the juicy syrup. Then use the strainer to get the desired shake and u can add sugar according to your own taste', 'mango_shake.jpg'),
(11, 'Chapati', 'Salt, Water, Wheat Flour', 'mix whole wheat flour with water and knead until the dough is smooth. Divide the dough into small balls and roll them out into thin circles. Cook each circle on a hot griddle until it puffs up and has brown spots. ', 'chapati.jpg'),
(13, 'cheese balls', 'Cilantro, Cheese', 'make the cheese balls', 'cheese_balls.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email`) VALUES
('radhika', 'Radhika_1234', 'radhika@gmail.com'),
('Sakshi', 'Sakshi_rungta', 'sakshi@gmail.com'),
('Shruti', 'Shruti1234', 'shruti.agarwal2020@vitstudent.ac.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ingre`
--
ALTER TABLE `ingre`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ing_name` (`ing_name`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
