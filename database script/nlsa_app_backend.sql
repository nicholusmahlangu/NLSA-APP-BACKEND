-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 08:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nlsa_app_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactforms`
--

CREATE TABLE `contactforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_17_122209_create_personal_access_tokens_table', 1),
(5, '2025_07_18_074439_create_contactforms_table', 1),
(6, '2025_07_25_065755_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Story` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `Title`, `Description`, `Image`, `Story`, `created_at`, `updated_at`) VALUES
(1, 'Why the Sea is Salty', 'Once upon a time, there were two brothers—one was rich, and the other was poor. The poor brother ran out of food and went to his rich brother, begging for something to eat.', 'image.png', 'Once upon a time, there were two brothers—one was rich, and the other was poor. The poor brother ran out of food and went to his rich brother, begging for something to eat.\r\n\r\nThe rich brother, not happy about helping, said, “I’ll give you this ham, but you must take it to Dead Man’s Hall.”\r\n\r\nGrateful for the food, the poor brother agreed. He walked all day and finally reached a large building at dusk. Outside, an old man was chopping wood.\r\n\r\n“Excuse me, sir,” said the poor brother. “Is this the way to Dead Man’s Hall?”\r\n\r\n“Yes, you’ve arrived,” replied the old man. “Inside, they will want to buy your ham. But don’t sell it unless they give you the hand-mill that stands behind the door.”\r\n\r\nThe poor brother thanked the old man, went inside, and everything happened just as the old man had said. The poor brother left with the hand-mill and asked the old man how to use it. Then, he set off home.\r\n\r\nThe hand-mill was magical. When the poor brother got home, he asked it to grind a feast of food and drink. To stop the mill, he simply had to say, “Thank you, magic mill, you can stop now.”\r\n\r\nWhen the rich brother saw that his brother was no longer poor, he became jealous. “Give me that mill!” he demanded. The poor brother, having everything he needed, agreed to sell it but didn’t tell his rich brother how to stop it.\r\n\r\nThe rich brother eagerly asked the mill to grind food when he got home, but because he didn’t know how to stop it, the mill kept grinding until food overflowed from the house and across the fields. In a panic, he ran to his poor brother’s house. “Please take it back!” he cried. “If it doesn’t stop, the whole town will be buried!”\r\n\r\nThe poor brother took the mill back and was never poor or hungry again.\r\n\r\nSoon, the story of the magic mill spread far and wide. One day, a sailor knocked at the poor brother’s door. “Does the mill grind salt?” he asked.\r\n\r\n“Of course,” replied the brother. “It will grind anything you ask.”\r\n\r\nThe sailor, eager to stop traveling far for salt, offered a thousand coins for the mill. Though the brother was hesitant, he eventually agreed.\r\n\r\nIn his hurry, the sailor forgot to ask how to stop the mill. Once at sea, he placed the mill on deck and commanded, “Grind salt, and grind quickly!”\r\n\r\nThe mill obeyed, but it didn’t stop. The pile of salt grew and grew until the ship sank under its weight.\r\n\r\nThe mill still lies at the bottom of the sea, grinding salt to this day, and that’s why the sea is salty.\r\n\r\nMoral: Be careful with what you desire, and always learn to control the power you possess.', '2025-07-25 07:18:58', NULL),
(2, 'The Hidden Treasure of the Pyramid', 'So far, Aryan wasn’t enjoying Egypt very much. “You can write about the pyramids in your vacation report,” said his mom. But Aryan didn’t find the pyramids or the guide very interesting', 'image.png', 'So far, Aryan wasn’t enjoying Egypt very much. “You can write about the pyramids in your vacation report,” said his mom. But Aryan didn’t find the pyramids or the guide very interesting.\n\n“This pyramid was built as a tomb for an ancient Egyptian king,” the guide explained. “A special magic keeps his tomb hidden, even though many people have searched for his treasure.”\n\n“I don’t believe that,” said Aryan. Just then, he noticed a small door on the side of the pyramid. While his parents weren’t looking, he quietly opened the door and slipped inside. He found a long tunnel with strange writings on the walls. Aryan’s heart started beating faster with excitement. Finally, something fun was happening!\n\nHe crawled through the tunnel until it opened up into a large room lit by flaming torches. There, he saw a mummy wrapped in white cloth, surrounded by sparkling treasures. Golden goblets, necklaces, bowls, and statues shone with bright rubies and emeralds.\n\n“I’ve found the mummy’s treasure!” Aryan exclaimed. But as soon as his finger touched a golden lamp, WHOOSH! Something pulled him out of the chamber and back to his parents and the tour guide.\n\nAryan looked around, confused. The small door had disappeared. “Are you all right?” asked his mom. Aryan tried to explain, but to his surprise, he only said, “I’m fine, thanks.” Something was stopping him from talking about the chamber! He glanced at the guide, who simply winked.\n\n“As I said,” the guide continued, “the ancient magic won’t let anyone reveal the king’s tomb.”\n\nAryan smiled. Even though he couldn’t write about it in his vacation report, he knew he would never forget the thrill of discovering the secret chamber and the mummy’s treasure.\n\nMoral: Sometimes, the most exciting adventures are the ones we keep in our hearts.', '2025-07-25 07:29:42', NULL),
(4, 'The Grateful Shoemaker and the Helpful Elves', 'Once upon a time, there was a poor shoemaker named Ramesh who lived with his wife, Sita. One day, Ramesh said, “We only have enough leather left to make one more pair of shoes.”', 'image.png', 'Once upon a time, there was a poor shoemaker named Ramesh who lived with his wife, Sita. One day, Ramesh said, “We only have enough leather left to make one more pair of shoes.”<br>\r\n\r\nRamesh cut the leather, preparing to sew the shoes, and then went to bed. Late at night, two little elves, Chintu and Mintu, sneaked into the shop. They found the leather and started working.<br>\r\n\r\nThe next morning, Ramesh was surprised to find the best pair of shoes he had ever seen. A rich man came by, saw the shoes, and loved them so much that he paid Ramesh double the price.<br>\r\n\r\nRamesh was happy and told Sita, “Now we can buy more leather.”<br>\r\n\r\nThat evening, Ramesh cut out leather for two more pairs of shoes and went to bed. Once again, Chintu and Mintu came and worked all night. In the morning, Ramesh found two beautiful pairs of shoes, which he sold for a lot of money.<br>\r\n\r\nWith this money, Ramesh bought enough leather to make four more pairs of shoes. Sita then asked, “Who is helping us?”<br>\r\n\r\nThat night, Ramesh cut the new leather, and he and Sita hid to see what would happen. Soon, they saw Chintu and Mintu working hard to make the shoes.<br>\r\n\r\n“We should thank them for their help,” Ramesh told Sita. “Let’s make them some nice clothes.”<br>\r\n\r\nSo, they made two small pairs of trousers, two cozy coats, and two warm scarves for the elves. That night, Ramesh and Sita hid again and watched as Chintu and Mintu found the new clothes. The elves quickly dressed up and danced happily into the night.<br>\r\n\r\nRamesh and Sita never saw the elves again, but they continued to make fine shoes and were never poor again.<br>\r\n\r\nMoral: Helping others without expecting anything in return can bring unexpected rewards.', '2025-07-25 08:42:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('272JDWKBvCvdF2M6pQouOxF4aQ9p0WMRRLbDb0Mk', NULL, '127.0.0.1', 'PostmanRuntime/7.44.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3J4ZzRNNUtaNGo3aXFwQ2p4UkRkdFF1OGdSN0FWMWFBYmtxVjduQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753433180),
('3gzH9SuQQnqoamIUDaAsATzZb51CVBP92bFmtrdx', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUxtSXVJZ1FrTUtMUzB4MnVHT2JiQW14SUJvVFN2ZG95Zk5XalYxRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753434998),
('3I3AtOtwb7zwRhzhTMzkvRVx3rRg3hJ6ou9V663o', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1Jtbm9HWGhtNEhieFFudUNRenA1dlJQcHl4WVliY25hRDhPRXR3YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429601),
('3IipZtjl2LFdtriWtOhErre10Vy1LZ6aaNdggWvE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFluWDZsTDZpZ3V0azVOTnlaRmJXanZ3VncybDV3S0k4aEhETlo0MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429888),
('6Fe2B27ArkAbHKrpAvDowgSULn1O1SwBdwD1yUG2', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzB0WGNZRUZGRkV4bUZUSUtvVmNsSER4Zk9WTFlUaFgydTdRQUtwUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753433647),
('7Oobq2MQn7v24wR7d5YZwH8a8RnA6AieUhH3XFzZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib291NHV0dW5RWU10OUNFcUpTeVVKTDhqdGtBaVpLVVowdUNOb1Z6TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429602),
('8CmH9brnutpxxVuYMg1GTLConrJp0uSqbOxWCltf', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzRxdDBwMzE2VU80OTBBeVlvRHQxTzdtQjA5WU5RbGI0bzNsd2FkeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753432033),
('8GlPLx3hdOZHE7NZskD0Wj1dyI1yep5B7XzXWZt0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDIzbjl2U3VGVWRrVjBUMWV1VVpXR2ZqT0RDbWFEaGhCVWVseUtLUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753428760),
('a1N6JOaFqQOrVzzeBgWuZtaZ6FgfCohnRadJP8jP', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaW1xZVJEQXgyNE1sblBldjBFYkdIbzFIZGRRR3hmcHVqdktDM1dGayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753447176),
('AIfMGjx7S8YIvxxvmgKB0q6S338yoO0uSgJhZmV5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2MwUGkzODUyRURQRHFCcjQ4ZEFPZ2JwN3VlWEhtSHgxUzdjeXpkSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429605),
('CBfiJufv42m9QDox7pPivkTijLDjgprIUP8NMQLw', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVE0TklBNnZFWmNndWlZQUlpVmhuWHJlanJRc3pkNFltQTVwSlBGQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753433593),
('CiRugbjXNX8j2GShAblJKL8kAirmFw2a45Q2znlY', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXlLazFIRkNIcTl0QVF3WGFEeENuMlFDWFBaN2pTZGNiMXc5WFpudyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753435190),
('cpP56FtnJqs9aiUSPQQtUbyqv6SnhbvCSyRnsbHe', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk9CNUFFY2VFR0g2WHh5bmNseVloSVpkODZyUTNiSzZWbW14SHd5VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753447168),
('CTVUviSLG2VGeSEzCCRS2chvxLT3Sabt9urx50PS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1dBcFF6ZHpEQURtcUJXNEU1a1ZiQWVWYkhRNXdzcnJTc0E1QldPYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429728),
('dFYw9he0KsRbkWEhaiZBtsnOSnbzVZVRIVxCjx7W', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmJLTXFsWGdLb0w0bjlxYmRpYzlaNGFIb3JIMHhsakREMUVqbko4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753430796),
('DzPcPa2Ajkxh13wGeGWNyA5z6ZkjHeqFnYBCspli', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnFYRkpGNFBVS25wc3VXbFJnVEhWTmVWWWVuTlpEWFV5aUpGTkp4UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753432197),
('e1ATZjMceYOZG7zZPI1kcPaizVpIWaoI0N75caze', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkV3ZDlka3NyVkYxVHQyNkpSbzlxR0R5cGhQZUF2N2xtNjhPSnBZYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753435419),
('EceaqXfh4UXqsjpSV1LrXilQ8E3dYT44aV09wKDk', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWlSUnFVSlhLWmNVY1EzUjVHbXl0TzJ4cVB5bEo4WXNpekNlVEdtdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753435624),
('GjvZMvbQYqCa0rdHdVjWYQJLozk1KvoZXKyu0gis', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnN4bER2WUF2QTdIOFJyUDdqcWdPNUdzMnlvMzVJTVNBY2NvYmpFbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753435182),
('hanyE1dMcyz5PYW1Jo2eimg9VpURXEjcsx2E71pV', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWl2Q2pSUG45TmhMaXgxVm1rblNyQUV0YTcwSG9ZWVJveGdXNlg3UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753432073),
('HBwgFelutlFYaLRWGry4wAQchqrzlIXENtm1DB61', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidk1FQ2tLVDFDQWlxZXhiNVRQZ0VBZ0t1S3pWaWZGUGhKd1pVTmJlTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753433192),
('hHQwhdWX9xWHfp2Qqjj5AZbWlv8IWw3Aap316kaQ', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHJwSWt0YVBid05KZGdUZXE0NVBRWHRuVHgwNWVaYVFGZlJTVm04cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753435010),
('i5f4PH3IDHwAyfykghhlPm6NB94uCGUjWdkUclho', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlJ0R3F2MThiR0wzeTAySnRNV283Q3RKUk5DdGQxMmRVeTI1eEpZcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753430301),
('II56n1FwWrXKjPGgjihvIoDzwcAjS0jD9vdWATrc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjlYelNwNVRMbFZhcFNkZXZaM0I1aXJTdjNOa1ZqY1RFMFdSOGZBNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429900),
('iTk3hTw7JFqHRCtwAi0QbnrEnA8bqzmAtJDmtipN', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUZoQUdpOHp1OGYyd1E1VTlxdVlodEJIUFRBcEN0MlZuNDk4TzF6WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753432195),
('knu7ECH7HEEflrwdEhDOjSKJjzHEI8r92NlpbApl', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVdrMDhnUXJlR3BOczE1UlZlT1ozS2x1cmZUbTJEY2F0eVk5dkFwSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753447132),
('kqr8f1XNzlo2osmLDTdwFGhu2w9mLINCDpAMSsGH', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkxPRkxGSkpLMlVBeWVaNmlmd3hwYzBma0ZQTzNOdTFNUVNzVWJlVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753432854),
('KW2vDA9m1m4HuVm6gML3BQJoAdMaUhy5a3ldZscI', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE5wM1NlTmt6Q0RYcTVYSmNEdldxTmR5QlJpMmVrdmYyUkZXc3c0aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753440334),
('LRBpGMvPOdgvZ4epU6RzdidhUZWU8kbCo9Oebhx8', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTZMcWJ6YmZ2ZzV4eGdUcEFOdUppMzkxN3Y5OXhDMnEwcFFKM1RtYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753431886),
('MNSBusxOuOg3diR9tJPt0TVOIGoSYQHU74uii6OI', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWg2OE9WMFk4V2FmUUF0MEJxY25lanNJRzVHUXVsdmwzTVlVUDZEaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753432217),
('mv6NTF8IfRf9oDeTDKX2uMrLZF34Dz71qZd2uzro', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXNjSGN2NzRRT2MwdjJscmhCSHpHMUNkZFExMjBSaDRmTjNnWlNHWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753433640),
('nk84pzC4dQG2erhKT0U7QkIrRh9VrJflqATLjEzH', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWFHcFBjbzA0TVlqZEhyYkx1cGxtNDZvcGRiUUdpSzJVUnZkOGJwMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753435637),
('O4OO6OkPkMPXuOO9cYFbBOVxKdBoxO0Wp8fTmBGP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1ZhV1BDd0RnQmpLTEx2R0JyZlM4TXJ6SmlMMHZMcTdQRmZBWjZEdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429603),
('OKdJhRYzjlCLeAwo3z3FBfmtRGBP8QumikPoiX7b', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHhrOUtuQkxCVFgweEptVzBUNUhYVEV1N1EyUzE2UkZGdE9HWlo2VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753435642),
('p3jNRNdU256dQdIvP05jrbRX819sXVxlDeAPEffI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNklPUWN0Z2c1OFM5b09TT2xEb2VWNHhRQlZuNjlQMzRPWWxFN1pQTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429892),
('PPYnXrAROKRqAZzRWGZZ0NkSnjd1TUyxY00UOnRo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEhacmJDeklYNXJQSDNEdTZ4ZUQ3RzFjWG9wSHVldTFnRHFSVVFzWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429852),
('qGfybk3fji53erT7OH7ykPDgQWdQknodJklBZ8PS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjliaHluYmF2QUlKYTlGaTFMbUFvRnNIaHpIUklVbExLdWNxZjJkYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753428742),
('r91m3fhZmDO8eW6FS6uWEBww7qekYNig1OHWvKDn', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnNjMWExR1A3cVFMcDNFMDBmR25xV0h1V1NvOHRQWEY2UDZrQ2ZnRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753432071),
('sap9sksROHgW9IVUxBsjskMz52JIJuHxnnxN1H8U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFpUU3BZNThtOVNseUZpVXkxa0k1WFcyRW91c3F5dkF6MllZbUxyaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429790),
('sFCkLiWfCjXzF2sRN4harwGxpmS8VdPfbruMNA9x', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibW9aOVZLdXBRaVpXWENDcDRRMnlGRnFwOVQ0akFMbDlYeTBJTFlaVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429893),
('SGULF6gZ29ndw1soWVPS31V2OCgeWrrKQQxHxlOU', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWdpcDJqeTBLQXJSUXhNZDc5QVdLd29XMjZic3BxOWZWQ3RRRDVPZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753432221),
('sWnI2zqsVp7LO51bKW8UlObca4aWXQq5eJC8sCQp', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm9EM2lRdXpXZnJNU1FoOVZtcFNSOTFUQnRuQ3pkZDVISWxPWDZpeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753435013),
('TGzyIwXZrCyj53tXiDHGM6ShMUmgLxrJWhvyJRuI', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUo3NUZZSW9CVGpLcFZuOFVJNHYxMlFvZGliaHdmdUwzd0dDZ1p5cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753435150),
('TzSV8sGd5pPnt1BnEoNnqyY5fiuR8qkjSKex51ZY', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnowVXdjQzFxWGxNYmpmMmwxY2RTb291dW9VT2cwRUFpWEc1SmhJayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753433199),
('UAjesbprNuTrtIHqfpeqZ7RXtSBPy2VA7APNfdoz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzNPdzNhUW9KM3dxQ2toM01tMGRvMWhlZlFNMEdMY0QyVTBRWHFwciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753428796),
('Up5uBvIstp3E3u04jpUsRCTdOha2uOlQvg44M7SZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUJDVjVyT3hId2xjMkhsZ3d4Z1Awa0cyMFZqR3NMTHBFTUx4Tm5MeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429703),
('Vqtwa3Ehpb7rfWVjgzqlkA4iZqLmUjoJVSdzai8c', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjNmUDFTYk83dU5YdGhLZkdMQmladnB2ZkxCREZaTzFrckN3T0JYQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753430212),
('wAp0CsrgOLcx2B9CrLJuMnPBIMOq2f3Fo0RvNoTg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1VwaE9DRUZRU2lFdUxtZlZYTkthSWZ3dmdoVnRoMlN1UGNUVk4weCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753428793),
('WDhEFe5daCs7CyEW3dp2DPt2sXzlJc7gdHbLMrsk', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlhLVGpUSG4xdUU3bUhEcjVmUUF1bnpjZDc4ZXp6UWtBczdOaVcwbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753433637),
('WkDHRf8iSEgTRh29EGrmzpbw02gAX47z9vGYjRLv', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGtVOU5Sb09LVTJHelE4cjlHMzl3Y2VjYnltY3lISnVGY1J3M25qdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753431998),
('x5LGXeIrReA4EQ49t8YZwXM7Y5Hk4wYNcGJZUI8q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVQ5UlRPclptZWR5TjZ5dXB6YjRkalRFNXhqN2pDVUtrUllFa2VSWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429724),
('YCOspLmC5uIgDt2if0iWDqU4SXh7XjuYTouzN4w5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmtGVkNpaFNjb0dqa1dBdU9peVdHU0dvYzNJWVNmNE5SY2s1Z3RwMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753429600),
('yNvmZ28uKyujQQAW9gXwtDv9y3AuI0IgopBaZzak', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibU1INmRLYTFXM3g4eWphZThrOVA1WENPN2NDdEdCaDBKSkFpZlJPdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753428739),
('zAbmoIwJjhuts7ADJjZAvh9a66xekSxiXz7yRupK', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMktTS21kc0FjVElsdW5SRmF2c3dNcEZiTjRXQVVERzRxZk5VempnMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753435155);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contactforms_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
