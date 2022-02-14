-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 02:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_car_buy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `gender`, `phoneno`, `address`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ShazaiB Sarwar', 'Male', '03110472274', 'UMT BOYS HOSTEL MUSTAPHA TOWN LAHORE', 'shazaibs355@gmail.com', 'admin123', '2022-02-13 13:57:34', '2022-02-13 13:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `startdate` date NOT NULL DEFAULT current_timestamp(),
  `enddate` date DEFAULT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalPrice` double(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cars', NULL, NULL),
(2, 'Bikes', NULL, NULL),
(4, 'Accessories', '2022-02-14 12:36:32', '2022-02-14 12:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `catid`, `created_at`, `updated_at`) VALUES
(1, 'Audi', 1, NULL, NULL),
(2, 'BMW', 1, NULL, NULL),
(3, 'Honda', 1, NULL, NULL),
(4, 'Jeep', 1, NULL, NULL),
(5, 'Hundai', 1, NULL, NULL),
(6, 'Lexus', 1, NULL, NULL),
(7, 'Mercedes', 1, NULL, NULL),
(8, 'MG', 1, NULL, NULL),
(9, 'Mitsubishi', 1, NULL, NULL),
(10, 'Nisan', 1, NULL, NULL),
(11, 'Suzuki', 1, NULL, NULL),
(12, 'Tyota', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `phoneno`, `address`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Shazaib', 'Sarwar', '03110472274', 'UMT Boys Hostel Mustapha Town Lahore', 'shazaibs355@gmail.com', '123456', '2022-02-13 05:17:49', '2022-02-13 05:17:49'),
(2, 'Muhammad', 'Faizan Ameen', '03110472274', 'Phool Nagar Dist Kasur', 'info.shasar@gmail.com', '123456', '2022-02-14 06:50:32', '2022-02-14 06:50:32'),
(3, 'Ahmad Raza', 'Sarwar', '03110472274', 'UMT Boys Hostel Mustapha Town Lahore', 'F2018065021@umt.edu.pk', '123456', '2022-02-14 12:54:35', '2022-02-14 12:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `make`
--

CREATE TABLE `make` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `make`
--

INSERT INTO `make` (`id`, `name`, `catid`, `created_at`, `updated_at`) VALUES
(1, 'Audi', 1, NULL, NULL),
(2, 'BMW', 1, NULL, NULL),
(3, 'Honda', 1, NULL, NULL),
(4, 'Jeep', 1, NULL, NULL),
(5, 'Hundai', 1, NULL, NULL),
(6, 'Lexus', 1, NULL, NULL),
(7, 'Mercedes', 1, NULL, NULL),
(8, 'MG', 1, NULL, NULL),
(9, 'Mitsubishi', 1, NULL, NULL),
(10, 'Nisan', 1, NULL, NULL),
(11, 'Suzuki', 1, NULL, NULL),
(12, 'Tyota', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_04_18_062928_create_categories_table', 1),
(2, '2021_04_18_070504_create_shop_table', 1),
(3, '2021_04_20_074316_create_subcategories_table', 1),
(4, '2021_04_20_074549_create_products_table', 1),
(5, '2021_04_25_150358_create_customers_table', 1),
(6, '2021_06_15_191657_create_admin_table', 1),
(7, '2021_07_02_180617_create_rentproducts_table', 1),
(8, '2021_07_03_154434_create_withdraw_table', 1),
(9, '2021_07_04_104318_create_orderproduct_table', 1),
(10, '2021_07_07_153312_create_cartitem_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `rentproductid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`id`, `userid`, `proid`, `rentproductid`, `quantity`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 2736, 'Completed', '2022-02-13 05:55:50', '2022-02-13 09:54:01'),
(3, 1, 2, 4, 3, 11937000, 'Completed', '2022-02-14 04:51:15', '2022-02-14 05:37:27'),
(4, 1, 3, 5, 1, 5000, 'Completed', '2022-02-14 06:06:22', '2022-02-14 06:21:14'),
(5, 1, 5, 6, 6, 47364, 'pending', '2022-02-14 09:54:09', '2022-02-14 09:54:09'),
(6, 1, 6, 6, 1, 790000, 'pending', '2022-02-14 09:54:09', '2022-02-14 09:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `make` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcatid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `make`, `price`, `details`, `subcatid`, `quantity`, `img1`, `img2`, `shopid`, `created_at`, `updated_at`) VALUES
(2, 'Honda Civic 2022', '3', 3979000, 'Honda Civic is manufactured by the Pakistani automobile manufacturer and Honda subsidiary Atlas Honda in Pakistan. \r\n\r\n \r\n\r\nThe first Honda Civic was launched globally in 1972 and had a 1,169 cc four-cylinder water-cooled engine along with front power disc brakes. It was available in different options such as a two- or four-door fastback sedan, three- and a five-door hatchback, as well as a five-door station wagon.\r\n\r\n \r\n\r\nThe second-generation Honda Civic was launched in 1979 and was branded as a 1980 model. It had an angular shape, had more interior space and its engine power was better. This generation of Honda Civic was available in three transmissions: a 4-speed and 5-speed manual, and a 2-speed semi-automatic which Honda used to call “Hondamatic”.\r\n\r\n \r\n\r\nPreviously a subcompact, since 2000 the Civic has been categorized as a compact car.\r\n\r\n \r\n\r\nThe third generation was introduced globally in September 1983 for the 1984 model year. The new model had a more sophisticated design which was not only spacious on the inside but also had a larger wheelbase. Better build quality and comfortable interior helped the 3rd generation Honda Civic in winning the “1983 Car of the Year Japan Award”. \r\n\r\n \r\n\r\nThe Fourth generation Honda Civic was released in September 1987 with a new and better design. The car sported larger dimensions with a lower hood line and fully independent rear suspensions. A wide range of models and trim levels were offered for various markets around the world in this generation.\r\n\r\n \r\n\r\n5th generation Honda Civic was introduced in September 1991 for the 1992 model year. The redesigned Civic featured increased dimensions increasing internal space as well as the overall size of the car. It also had a more aerodynamic styling with a curvier body than before. It came with a raised cowl which allowed for more suspension travel, making the ride smoother and the car’s performance better. Due to this, the 5th generation Honda Civic received the ‘Japan Car of the Year’ award. It was Honda\'s most fuel-efficient model sold at the time. \r\n\r\n \r\n\r\nThe 5th generation Honda Civic initially arrived in the Pakistani market as a completely built unit (CBU) but, after the inception of Honda Atlas Cars Pakistan Limited in 1992, it was officially launched in May 1994. It came with a 1500cc carburetor engine & 5-speed manual transmission. It was commonly referred to as “the dolphin” in the Pakistani market.\r\n\r\n \r\n\r\n6th generation Honda Civic was introduced in the global market in September 1995 for the 1996 model year. It featured bold updated styling which instantly became popular around the world. It also came with different suspension and engine options along with Honda’s first Natural Gas Powered Civic, the GX. \r\n\r\nCommonly referred to as “EK”, the 6th generation Honda Civic was the first Honda to be locally assembled in Pakistan. It came with a variable valve timing engine that had a choice of 1.6L VTi engine and 1.5L conventional fuel injected unit with both manual and automatic transmission variants on offer. The Civic was available in different body styles and engine configurations internationally but only the sedan was available in the Pakistani market.\r\n\r\nThe 7th generation Honda Civic came with few changes to the car’s exterior and more to the interior. Launched in September 2000 for the 2001 model year, the new Civic had a flat rear floor which moved it to the category of compact car size. Available in 1.5L and 1.6L Vtec engines, the new Civic came with Prosmatec (PROgressive, Shift schedule MAnagement TEChnology) transmission. \r\n\r\n \r\n\r\nIt received a facelift in 2004 which instantly became popular in the Pakistani market. Known as the “eagle-eye”, the facelifted 7th generation Civic had a whole new personality. \r\n\r\n \r\n\r\nThe 8th generation Honda Civic was launched globally in September 2005 but came to Pakistan in 2006. It had an impressive 1.8-litre 140bhp engine which had the highest displacement and power as compared to the previous models. It became known as “Reborn” in the Pakistani market; a term used by Honda itself to market this model initially. \r\n\r\n \r\n\r\nThe 9th generation Honda Civic was globally launched in 2011 but came to Pakistan in 2012. It came with a 1.8 litre engine and Eco Assist technology. It was known as “rebirth” in Pakistan. This generation of Honda Civic is by far the least successful one due to its poor quality build.\r\n\r\n \r\n\r\nThe 10th Generation Honda Civic came into the international market in 2015 with a new design language as well as a range of cleaner, more powerful, and more efficient engines. Known as Civic X, it was launched in the Pakistani market in 2016. It is a front-engine, front-wheel drive, subcompact sedan. It is available in 3 variants in Pakistan: 1.8 Liter, 1.8-Liter VTI Oriel, and 1.5 RS Turbo while globally it is sold in 4 variants LX, EX, EX-T, and EX-L.', 1, 230, 'Civic_10th_Gen_-_PNG.png', '4.jpg', 1, '2022-02-13 08:27:26', '2022-02-13 08:27:26'),
(3, 'Toyota Corolla', '12', 5000, 'The price of Toyota Corolla 2022 in Pakistan ranges from PKR 3,380,000 for the base variant Altis X Manual 1.6 to PKR 4,199,000 for the top of the line Altis Grande X CVT-i 1.8 Black Interior variant. These prices of Toyota Corolla in Pakistan are ex-factory.\r\n\r\nToyota Corolla is a series of compact sedans produced by the Japanese manufacturer Toyota. It has a huge following around the world for its comfort, sleek design and good performance. Over the years, it has gone through several upgrades and its latest generation available in Pakistan is the 11th generation Toyota Corolla. The 12th generation Toyota Corolla has been introduced globally but is not yet available in Pakistan.\r\n\r\nIntroduced to the world in 1966, Toyota Corolla has become one of the best selling cars worldwide. With its compact design and cost-efficiency, it became instantly popular over the years. Corolla became the world\'s best-selling car in 1997, beating its biggest competition, the Volkswagen Beetle.', 1, 23, 'Corolla-X-Cars-Cropped-Pictures-for-Website.jpg', '3.jpg', 1, '2022-02-13 13:16:45', '2022-02-13 13:16:45'),
(4, 'Suzuki Baleno', '11', 8000, 'The price of Suzuki Baleno in Pakistan ranges from PKR 415,000 to PKR 1,670,000 for a used Suzuki Baleno. These prices of Suzuki Baleno in Pakistan vary on model year, mileage, variant and overall condition of the car. The 1st Generation Suzuki Baleno was introduced in 1998. Suzuki Baleno (1998-2005) is a front engine, front wheel drive subcompact sedan. Suzuki Baleno 1st Generation received a facelift that improved the minimalistic and restrained looks of the pre-facelift model that the majority of the customers preferred. The 1st Generation Suzuki Baleno was available in 7 different variants including Gli, GXi, JXL, GL, JXR, Sport and GTi 1.6. The price of the Suzuki Baleno was fairly competitive when compared to other models in the same class.\r\n\r\nExterior\r\nSuzuki Baleno 1st Generation features a fairly restrained and minimalistic design language. The front end of Suzuki Baleno features angular trapezium styled side swept headlights, a rectangular grille with a chrome accent and dual air intakes on the front bumper. The rear end houses angular trapezium styled taillights and an outward sticking rear bumper. The facelift Suzuki Baleno featured a series of cosmetic upgrades, the front end housed new sleek angular headlights, angular trapezium grille with a chrome accent and an outward sticking bumper.', 1, 230, 'Baleno_1998.jpg', '2.jpg', 1, '2022-02-13 13:20:15', '2022-02-13 13:20:15'),
(5, 'Suzuki Cultus', '11', 7894, 'Manufactured by the Japanese automobile manufacturer Suzuki, Cultus is a supermini car which was introduced in 1983. It was sold under different names over the years such as Geo Metro, Chevrolet Sprint, Pontiac Firefly and Holden Barina. The car was discontinued in 2003 but remained in production in Pakistan due to its high demand.\r\n\r\n \r\n\r\nThe first-generation Suzuki Cultus had a 1.0-liter (993 cc), three-cylinder engine and was marketed under different names around the world. The car received a facelift in 1986 with coil springs instead of leaf springs and a remodeled exterior design. The first-generation Suzuki Cultus was introduced in Pakistan in the year 1989 as Suzuki Khyber.\r\n\r\n \r\n\r\nThe second-generation Suzuki Cultus was introduced in 1988. It came with new styling and four-wheel suspension. It came with the options of 1.0 liters, 1.3 liters and 1.6 liters engines and sported a fresh design. \r\n\r\n \r\n\r\nIn the year 2000, Suzuki Cultus was introduced in Pakistan by PakSuzuki motors. The car was a hatchback version of the Margalla and came with 3 Cylinder 1000cc Carbureted Engine as well as 5 Gear Manual Transmission. It came in three variants - VX, VXR and VXL and remained in production till 2007. It is considered the first-generation Suzuki Cultus in Pakistan. \r\n\r\n \r\n\r\nIn 2007, the Suzuki Cultus was revamped with a 4-cylinder EFI engine. This automatically improved the car’s fuel average and made its popularity soar. It was further improved in 2012 with a Euro II engine. This version of Cultus is considered 2nd generation Suzuki Cultus in pakistan. It remained in production till 2017.', 2, 3, 'Suzuki_Cultus_-_PNG.png', 'Suzuki_Cultus_2017_(3).jpg', 1, '2022-02-13 13:23:05', '2022-02-13 13:23:05'),
(6, 'Jeep Wrangler', '12', 790000, 'he 3rd Generation Jeep Wrangler was introduced in 2006. The 2006 Jeep Wrangler is a front engine four wheel drive mid-size Sport Utility Vehicle (SUV). The Jeep Wrangler 2006 featured a vast series of updates that greatly improved interior trim quality and comfort while the familiar Wrangler styling only went through some minor cosmetic changes compared to the 2nd Generation Jeep Wrangler. The 2nd Generation Jeep Wrangler is available in three variants Sport, Sahara and Rubicon.  The Jeep Wrangler 2ndGeneration is also available in 4 versions 2-door convertible, 2-door SUV, 4-Door convertible and 4-door SUV. Production of the Jeep Wrangler 2006 has been ongoing for over 10 years, the Jeep Wrangler was and is available to purchase in the years 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014 and the year 2015.\r\nThe price of the 3rd Generation Jeep Wrangler is fairly competitive when compared to other models in the same class.\r\n\r\nExterior\r\nThe exterior of the 2006 Jeep Wrangler features a unique and distinctive design language. The front end houses circular headlights, a large rectangular grille and an outward sticking bumper. The rear end houses square taillights, the spare wheel and a hinge pull out door. On the 2-door SUV and 4-door SUV the Jeep Wrangler features a normal hardtop roof but on the 2-door and 4-door convertible it features a cloth retractable roof that is able to be stored away in the rear while not in use, the cloth material is available in two colors Black soft top and Dark Khaki soft top. All variants of the 1996 Jeep Wrangler feature identical styling except for the Unlimited Rubicon that featured wider body colored front sills and larger wheels. The overall exterior of the 3rd Generation Jeep Wrangler features unique styling that is instantly recognizable as a Jeep and that sets it apart from its rivals.', 1, 7, '2020-jeep-wrangler-sport-s-4x4-angular-front-exterior.jpg', '2020-jeep-wrangler-sport-s-4x4.jpg', 1, '2022-02-14 09:48:40', '2022-02-14 09:48:40'),
(7, 'Hyundai Tucson', '5', 5549000, 'The price of Hyundai Tucson 2022 in Pakistan ranges from PKR 5,549,000 for the base variant FWD A/T GLS Sport to PKR 5,999,000 for the top of the line AWD A/T Ultimate variant. These prices of Hyundai Tucson in Pakistan are ex-factory.', 14, 98, 'Tucson_-_PNG.png', 'tucson-tl-fl-design-rear-accordion-main-original.jpg', 1, '2022-02-14 11:47:29', '2022-02-14 11:47:29'),
(8, 'Nissan Qashqai', '10', 3979000, 'Nissan Qashqai is a 4-door 4WD/FWD compact crossover by the Japanese car maker. The 2nd generation Nissan Qashqai was unveiled in London on 7th November 2013 and went on sale in 2014. Nissan Qashqai has been in production since 2006. The Nissan Qashqai 2015 is available in Visia, Acenta, Acenta Premium, N-Tec, N-Tec+ and Tekna variants. Nissan Qashqai price in Pakistan begins from 2.1 million Pakistan rupees however; Nissan Qashqai 2015 price begins from AUD 32,490 but local price isn’t available as it is not sold in Pakistan.\r\n\r\nExterior\r\nThe exterior of the 2015 features long swooping lines and bulging wheel arches. Nissan wanted to find the perfect balance between an SUV and a sedan with Qashqai. The headlights were upgraded for the second generation, and new Qashqai comes with daytime running LED headlight and new tail lamps as well. Different size and design alloy wheels are available depending on the variant. The rear side profile makes it look like the crossover is narrow from the back because of the swooping roof line.', 10, 56, 'Nissan_Qashqai.jpg', 'tucson-tl-fl-design-rear-accordion-main-original.jpg', 1, '2022-02-14 11:55:06', '2022-02-14 11:55:06'),
(9, 'Suzuki Swift', '11', 1500000, 'The price of Suzuki Swift in Pakistan ranges from PKR 1,000,000 to PKR 2,600,000 for a used Suzuki Swift. These prices of Suzuki Swift in Pakistan vary on model year, mileage, variant and overall condition of the car.\r\n\r\nThe 1st Generation Suzuki Swift was launched in 2010 by Pak Suzuki in Pakistan. The Swift is front engine front wheel drive subcompact car. The Suzuki Swift 2022 is available in 2 variants DLX Navigation and DLX Automatic Navigation. Suzuki Swift 2022 price is fairly competitive when compared to other models in the same class.\r\n\r\nExterior\r\nSuzuki Swift 2022 exterior features a unique design language. The front end houses sharp sleek upswept headlights, a small rectangular grille with chrome accents, a rectangular air intake and circular fog lights. The rear end houses trapezium styled upswept stacked taillights and a standard case hatchback. All variants of the Suzuki Swift 2022 feature identical styling in every aspect.  The overall exterior of the 1st Generation Swift is unique and well-proportioned and can stand out among the other range of hatchbacks available in Pakistan.', 10, 89, 'Swift_-_PNG.png', '3.jpg', 2, '2022-02-14 12:09:54', '2022-02-14 12:09:54'),
(10, 'Mercedes Benz', '7', 9000000, 'Mercedes Benz SLK Class Price in Pakistan\r\nThe price of Mercedes Benz SLK Class in Pakistan ranges from PKR 8,800,000 to PKR 9,200,000 for a used Mercedes Benz SLK Class. These prices of Mercedes Benz SLK Class in Pakistan vary on model year, mileage, variant and overall condition of the car.\r\n\r\nThe 3rd Generation Mercedes SLK was introduced in 2011. The 3rd Generation SLK is a front engine rear wheel drive compact luxury roadster that was originally introduced by Mercedes in 1996 to slot in below the more premium and expensive Mercedes SL. In 2016 Mercedes Benz SLK was rechristened with the name SLC Class. SLC Class is Mercedes’s attempt at creating a small, fast and light sports car. R172 Generation was available in 5 variants SLK 200 BlueEFFICIENCY, SLK 250 BlueEFFICIENCY, SLK300, SLK350,SLK55 AMG.', 9, 3, 'Mercedes-Benz-SLK-Class-3rd-Gen-(2011-Present).jpg', '2016-mercedes-slk-class-slk-300-roadster.png', 2, '2022-02-14 12:43:34', '2022-02-14 12:43:34'),
(11, 'MG 3', '8', 2200000, 'MG 3 Price in Pakistan is estimated to start from PKR 2,200,000. This estimated price is ex-factory and does not include freight, taxes, and other documentation charges.\r\nMorris Garages (MG) Motors, a Chinese-owned British automotive company, is planning to introduce the first MG hatchback in Pakistan, the MG 3. The car is available in the international market in its 2nd generation. Javed Afridi, the owner of MG Pakistan, has teased the launch of MG 3 in Pakistan with a price tag of fewer than 2 million rupees. If that happens, MG 3 will be one of the most affordable hatchbacks in the country.\r\n\r\nMG Motors Pakistan has recently acquired the greenfield status under the Automotive Development Policy 2016-20. The automotive company is currently selling imported CBU units of two SUVs- MG HS and MG ZS. Soon, MG Pakistan will start the local assembly of its cars. But still, if and when MG 3 joins the MG car lineup, it will come in CBU units, just like its other siblings.\r\n\r\n \r\n\r\nThe MG 3 has been launched globally in two variants- MG 3 Excite and MG 3 Core. The series has become popular due to its affordability.\r\n\r\n \r\n\r\nExterior\r\nThe MG 3 comes standard with its MG ‘Exclusive’ Grille that comes with chrome surround and\r\n\r\nsatin silver inlay highlight. The 5-door hatchback comes in a beautiful and compact design. Both variants have Projector halogen headlamps with manual height adjustment function as well as LED ‘London Eye’ daytime running lights (DRLs). Both variants also come with standard features of Follow me home delayed headlight illumination and automatic headlight illumination system. \r\n\r\n \r\n\r\nOther standard features in the MG 3 include blinking of lights on warning alarm, heated glass rear window with timed cut-off, intermittent rear wiper, and intermittent windscreen wipers. Side sill extensions are only available in the Excite variant and metallic paint is optional in both variants. The MG 3 Core comes with 15-inch alloy wheels and the Excite variant comes with 16-inch two-tone machined alloy wheels.', 4, 89, 'Cars-Pictures-for-Website-mg3.jpg', 'mg3-mmg3-20.jpg', 2, '2022-02-14 12:49:02', '2022-02-14 12:49:02'),
(12, 'BMW X2 2022', '2', 18000000, 'The price of BMW X2 2022 in Pakistan is PKR 11,874,400 for its sDrive18i variant. This price of BMW X2 in Pakistan is ex-factory.Variants	Ex-Factory Price\r\nBMW X2 sDrive18i\r\n1499 cc, Automatic, Petrol	\r\nPKR 11,874,400\r\nGet X2 sDrive18i On Road Price\r\n\r\nBMW X2 2021 Price | BMW X2 2020 Price | BMW X2 2019 Price\r\nOther BMW X2 Variants\r\nX2 xDrive28i', 9, 89, '2018-bmw-x2-main-1554286801.jpg', 'Suzuki_Cultus_2017_(3).jpg', 2, '2022-02-14 12:52:28', '2022-02-14 12:52:28'),
(13, 'Mitsubishi Heavy Truck 2.0', '9', 8999000, 'he 3rd Generation Jeep Wrangler was introduced in 2006. The 2006 Jeep Wrangler is a front engine four wheel drive mid-size Sport Utility Vehicle (SUV). The Jeep Wrangler 2006 featured a vast series of updates that greatly improved interior trim quality and comfort while the familiar Wrangler styling only went through some minor cosmetic changes compared to the 2nd Generation Jeep Wrangler. The 2nd Generation Jeep Wrangler is available in three variants Sport, Sahara and Rubicon.  The Jeep Wrangler 2ndGeneration is also available in 4 versions 2-door convertible, 2-door SUV, 4-Door convertible and 4-door SUV. Production of the Jeep Wrangler 2006 has been ongoing for over 10 years, the Jeep Wrangler was and is available to purchase in the years 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014 and the year 2015.\r\nThe price of the 3rd Generation Jeep Wrangler is fairly competitive when compared to other models in the same class.\r\n\r\nExterior\r\nThe exterior of the 2006 Jeep Wrangler features a unique and distinctive design language. The front end houses circular headlights, a large rectangular grille and an outward sticking bumper. The rear end houses square taillights, the spare wheel and a hinge pull out door. On the 2-door SUV and 4-door SUV the Jeep Wrangler features a normal hardtop roof but on the 2-door and 4-door convertible it features a cloth retractable roof that is able to be stored away in the rear while not in use, the cloth material is available in two colors Black soft top and Dark Khaki soft top. All variants of the 1996 Jeep Wrangler feature identical styling except for the Unlimited Rubicon that featured wider body colored front sills and larger wheels. The overall exterior of the 3rd Generation Jeep Wrangler features unique styling that is instantly recognizable as a Jeep and that sets it apart from its rivals.', 8, 45, 'FE71-600x498.png', '458-4584062_mitsubishi-canter-png-png-download-mitsubishi-fuso-canter.png', 3, '2022-02-14 13:12:27', '2022-02-14 13:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `rentproducts`
--

CREATE TABLE `rentproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customerid` int(11) NOT NULL,
  `TxnRefNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rentproducts`
--

INSERT INTO `rentproducts` (`id`, `customerid`, `TxnRefNo`, `description`, `status`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'T20220213105550', 'Description of transaction', 'pending', 2936.00, '2022-02-13 05:55:50', '2022-02-13 05:55:50'),
(2, 1, 'T20220213134123', 'Description of transaction', 'pending', 3979200.00, '2022-02-13 08:41:23', '2022-02-13 08:41:23'),
(3, 1, 'T20220213134252', 'Description of transaction', 'pending', 3979200.00, '2022-02-13 08:42:52', '2022-02-13 08:42:52'),
(4, 1, 'T20220214095115', 'Description of transaction', 'pending', 11937200.00, '2022-02-14 04:51:15', '2022-02-14 04:51:15'),
(5, 1, 'T20220214110622', 'Description of transaction', 'pending', 5200.00, '2022-02-14 06:06:22', '2022-02-14 06:06:22'),
(6, 1, 'T20220214145409', 'Description of transaction', 'pending', 837564.00, '2022-02-14 09:54:09', '2022-02-14 09:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sofficialnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `fname`, `lname`, `phoneno`, `cnic`, `email`, `password`, `shopname`, `shopaddress`, `sofficialnumber`, `approve`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shazaib', 'Sarwar', '03110472274', '3510313480023', 'shazaibs355@gmail.com', '123456', 'happy', 'lahore 222', NULL, 1, 0, '2022-02-13 05:27:43', '2022-02-13 05:35:32'),
(2, 'Aqib Javed', 'Sarwar', '03049753053', '3510325123489', 'info.shasar@gmail.com', '123456', 'Speedy Fastly Motors in World', 'Allah ho Gol Chakkar Lahore Punjab Lahore Pakistan', NULL, 1, 0, '2022-02-14 12:03:42', '2022-02-14 12:05:03'),
(3, 'Usama Asif', 'Sarwar', '03110472274', '3510325123489', 'shazaibsarwarg@gmail.com', '123456', 'Allaho Motors', 'Phool Nagar, Dist Kasur, Punjab, Pakistan', NULL, 1, 0, '2022-02-14 12:59:27', '2022-02-14 13:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `catid`, `created_at`, `updated_at`) VALUES
(1, 'Jeep', 1, NULL, NULL),
(2, 'Modified', 1, NULL, NULL),
(3, 'Convertible', 1, NULL, NULL),
(4, 'Mini', 1, NULL, NULL),
(5, 'OFF Road', 1, NULL, NULL),
(6, 'Pick Up', 1, NULL, NULL),
(7, 'SUV', 1, NULL, NULL),
(8, 'Truck', 1, NULL, NULL),
(9, 'Sports', 1, NULL, NULL),
(10, 'Couple', 1, NULL, NULL),
(14, 'compact suv', 1, '2022-02-13 19:58:12', '2022-02-13 19:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shopid` int(11) NOT NULL,
  `withdrawto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdrawamount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AmountStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `shopid`, `withdrawto`, `phonenumber`, `withdrawamount`, `AmountStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 'EasyPaisa', '03110472274', '1939686', 'Completed', '2022-02-14 05:43:22', '2022-02-14 05:46:15'),
(2, 1, 'EasyPaisa', '03110472274', '9999950', 'Completed', '2022-02-14 05:48:34', '2022-02-14 06:02:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `make`
--
ALTER TABLE `make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentproducts`
--
ALTER TABLE `rentproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cartitem`
--
ALTER TABLE `cartitem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `make`
--
ALTER TABLE `make`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderproduct`
--
ALTER TABLE `orderproduct`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rentproducts`
--
ALTER TABLE `rentproducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
