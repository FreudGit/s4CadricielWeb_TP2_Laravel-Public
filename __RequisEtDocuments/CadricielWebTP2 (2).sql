-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 13 oct. 2023 à 23:40
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `CadricielWebTP2`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Labore porro impedit vel animi.w', 'Quod in sapiente reprehenderit ut quo. Eaque accusantium necessitatibus illum culpa. Est placeat sit sint alias iste sint reprehenderit similique. Sed ab vitae quasi sint necessitatibus a sapiente. Aut sint eius aperiam debitis voluptas ipsum. Corrupti corrupti voluptas sunt consectetur. Odio distinctio non laudantium saepe cum. Consequatur exercitationem pariatur molestiae earum dolorum sed. Veniam veritatis aut vel. Possimus dolor temporibus sint laborum consequuntur. Consequatur esse itaque corrupti nobis perspiciatis ipsam facilis dignissimos. Aut suscipit adipisci enim. Sint dignissimos exercitationem quia sint voluptatem. Ipsa deserunt error hic exercitationem. Libero aut incidunt fugit non non. Autem ea nisi ea voluptatem nihil. Tenetur consequatur officiis voluptates illo ut maxime. Quia quis molestiae expedita nihil. Qui aliquam voluptas porro nihil reiciendis quia. Excepturi quisquam voluptates magnam sed. Atque nulla maxime incidunt porro odio voluptatem quis aut. Nostrum cum inventore voluptas sed maiores temporibus. Quis sapiente id quam. Velit est in tenetur amet voluptatem. Eos reprehenderit nulla voluptates et. Enim excepturi assumenda omnis rerum quibusdam. Cum voluptatem exercitationem quidem ut excepturi odio esse.', 1, '2023-09-29 17:12:20', '2023-10-13 19:53:19'),
(2, 'Eaque dolor animi aut.ee', 'Culpa aut eum qui consequatur facere sunt ab qui. Aut impedit eum in officia rerum. Nesciunt expedita at aspernatur perferendis. Maxime consequuntur dignissimos odit pariatur sequi atque. Porro minus sequi tenetur ut porro. Quod vel eum iure molestias quia. Sint atque nobis corrupti nihil id cumque quae. Ab amet qui inventore ea repudiandae sit accusantium eos. Voluptatem nisi ex sapiente illo. Quis ex ut unde perspiciatis fugiat cumque. Iste eos voluptas fuga eius qui. Aut quisquam id qui soluta delectus. Laudantium dolorum sit dolor quis reprehenderit. Nihil qui occaecati tempora similique consectetur sapiente et iure. Autem qui quia autem. Nihil a asperiores fuga quia quos nisi veritatis. Dolor quia necessitatibus dolorem cum ex consequatur. Tempore neque ut perspiciatis. Qui fugiat inventore praesentium itaque. Vel ratione voluptate maiores delectus ex modi illo. Et asperiores id nisi magnam. Asperiores qui et consequatur quia. Commodi assumenda adipisci reprehenderit et totam. Quod mollitia unde fuga tenetur quis nulla. Neque quis possimus consequatur sit veniam occaecati voluptate. Enim cupiditate ipsum amet error assumenda vitae et. Aut odio eum iusto est et voluptas. Sed sit ex autem sint. Iure voluptate beatae magnam itaque ut dignissimos dolorem rerum. Doloribus earum occaecati amet porro consequatur. Soluta eligendi voluptatem reprehenderit ea. Ad nobis cupiditate et quas voluptas commodi libero. Est amet id consequatur rerum ipsum ut est. Reprehenderit beatae repellat enim praesentium dicta. Et et ut quasi laboriosam incidunt soluta. Aut non non qui nisi.', 2, '2023-09-29 17:12:20', '2023-09-29 17:49:24'),
(3, 'Cumque sed ea dolore eos est eligendi vitae illum.', 'In beatae labore error nulla nostrum veniam corrupti ut. Dolorem rem explicabo natus illum ad officia vero omnis. Minus unde qui et aut quia velit. Aliquid libero modi neque sit cumque. Qui amet a omnis rerum quaerat exercitationem. In odio magni nostrum autem sed est fuga. Voluptatem voluptas quasi nihil tempora aspernatur molestiae corporis. Aut suscipit dolores veritatis. Numquam sunt recusandae ut ullam iste et. Qui enim sunt dicta laudantium eaque totam error vel. Minima vitae facere vero dignissimos quisquam repellat. Quae eos ut id commodi at eum eos tempora. Doloremque exercitationem asperiores natus eligendi aut. Officia fugit at corrupti officia sint. Quo deleniti expedita sunt perferendis iure et natus. Iure qui voluptate illo eos fugit alias qui. Quos odio placeat corrupti. Ex eum qui assumenda qui deleniti totam. Amet est adipisci quaerat libero maxime iure. Rerum laborum ad saepe deleniti qui fuga hic labore. Magni accusamus sint repellat sed voluptatem exercitationem rerum.', 3, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(4, 'Magni fugit sunt et quibusdam consectetur et.', 'Vel voluptatem reprehenderit est repellendus asperiores. Hic ut aspernatur atque sit et repellendus qui corporis. Pariatur aut architecto quo debitis in aliquid iusto. Harum qui dolor ut architecto. Illo quia soluta et voluptatibus sequi sit harum. Beatae quidem nihil suscipit maiores. Commodi ea veritatis saepe animi. Cum commodi est cumque dicta vero sed sit. Atque voluptas in cupiditate natus. Minus enim consequatur et dolorem sit excepturi rerum repellendus. Qui dolores et deserunt necessitatibus sed. Asperiores et quasi debitis nostrum rem qui. Nostrum dolorum quisquam sunt incidunt. Enim sint qui a ut enim et vitae qui. Adipisci perferendis qui nulla necessitatibus. Provident eos id odio quo animi. Explicabo velit porro a sint illum. Aut est voluptates iste aut omnis cum. Tempora dolor libero modi repellendus. Maiores quibusdam nemo error explicabo optio dolorem repellendus fugit. Debitis sit unde delectus sed. Sequi quis nemo distinctio in ea. Accusamus nihil ratione nihil omnis ipsam nobis. Eum ab vel quis est. Et sit vitae quidem. Eligendi est ea ut vel. Id rem id praesentium hic soluta. Ipsa corporis quia unde temporibus error rerum. Est et quo rerum vitae quia quaerat ab magnam. Maxime laborum provident doloribus. Voluptas excepturi cumque magni molestias. Voluptas magnam nobis eum ratione laudantium adipisci repellat. Ratione voluptatem aut et rerum voluptas molestias at. Eos delectus accusamus dicta molestiae quis. Eveniet soluta nemo sunt itaque ut doloribus autem vel. Voluptatem iste sed officia laboriosam eveniet. Sed veniam et a sit.', 4, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(5, 'Tempora accusantium adipisci delectus optio.', 'Sequi ut aperiam nihil exercitationem sint. Eum est fugit est dolore sint quia provident. Odio aperiam illum consectetur exercitationem debitis sunt ut. Distinctio eius ut reprehenderit sed sunt placeat. Quo quia aut est quo. Sint voluptate sequi a neque. Qui a ex quos inventore. At nihil aut harum dolores. Rerum quos et ducimus enim. Voluptatem deserunt consequuntur sit omnis nam et ut. Et minus cumque sit est eum. Reprehenderit ut cupiditate dolores aut non blanditiis mollitia. Assumenda minima saepe vel sit omnis corporis quaerat sit. Vitae et aperiam rerum porro delectus suscipit quisquam. Et ut ad perspiciatis aut est aut consequatur. Cupiditate iste dolore voluptas eum mollitia sequi ut. Architecto tempore aut aperiam. Nam ab repellendus ut numquam deserunt voluptas. Molestias suscipit perspiciatis dolore commodi dolorem.', 5, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(6, 'Et rerum numquam nesciunt voluptatem quo provident fugit.', 'Nulla nam voluptatem expedita doloremque ut earum molestiae. Non ut sint repellendus amet quaerat. Iusto quae quod debitis aut. Sunt amet quia doloremque voluptate. Illo maxime et temporibus veritatis. Voluptatibus tempore id eveniet impedit ut. Quisquam velit sint eum id quam. Inventore eaque fugiat fugit et. Rerum ut sit labore error. Ipsa dolores non impedit reiciendis sed. Nihil quo impedit sit ut eligendi sint. Aut laboriosam eius nesciunt voluptas ab laudantium. Molestiae impedit saepe consequatur ea sed. Dolorum amet vel fugiat. Sapiente itaque et culpa id. Dolores et occaecati minus. Voluptatem esse voluptatem vel. Explicabo iure expedita ad ad non consectetur. Quod corrupti ratione sit voluptatibus. Tenetur dolor non harum aut ullam velit voluptates. Voluptatem corporis similique aut pariatur. Perferendis nihil et ullam sequi minus quos. Commodi vero et cupiditate aliquam maiores iste. Esse voluptatum vel illo voluptas enim impedit aut sunt. Quo iusto dicta ut deserunt tempora. Accusantium est qui autem praesentium voluptatem est aliquid. Nulla ut quia ea atque est laborum delectus. Nisi quae earum assumenda et doloremque dignissimos dolore natus. Et dicta amet nobis vitae est rerum tenetur vel. Reiciendis et qui non odio numquam. Sequi unde nam rerum laudantium. Rerum accusamus rerum sint autem. Numquam quis nostrum neque temporibus culpa sunt repellendus. Consequuntur in quia laborum minima voluptas fugiat. Eaque ut veritatis facere nostrum aperiam porro. Omnis quaerat et praesentium eveniet ducimus porro. Eius aspernatur sit recusandae explicabo porro voluptas non. Nemo minus fugiat soluta excepturi amet aspernatur eum. Maiores ea ut id soluta iure explicabo. Distinctio dolor deleniti necessitatibus fugit. Similique impedit repellat autem facilis explicabo.', 6, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(7, 'Nihil et consequatur aperiam nihil reprehenderit tenetur cum.', 'Quo deleniti non deleniti quibusdam. Cum voluptas perspiciatis accusamus aut. Numquam unde excepturi reprehenderit quidem. Vel enim quia est omnis natus quia. Quisquam explicabo libero velit molestiae dolores cum vel. Ipsam aperiam est repudiandae sed. Non placeat quae voluptas tempora qui incidunt iure iste. Dignissimos eveniet eligendi quo ipsum sit ullam deserunt voluptas. Iure in corrupti molestias recusandae dolores nesciunt quo. Sapiente autem quod quo accusantium. Natus et enim veritatis nihil molestias odit. Voluptatem nulla et vel necessitatibus sint itaque. Aut facere fuga reiciendis. Iure doloremque dolor porro saepe dolores autem voluptas sed. Et quam rerum consequatur illum doloremque illo sapiente. Nobis magni repudiandae consectetur cupiditate. Dolores sint voluptatibus facilis recusandae molestias labore eligendi. Quo voluptatem explicabo et autem maxime aliquam. Animi labore suscipit adipisci ut quis rerum ullam. Quo nisi voluptates voluptas soluta. Nam non et voluptates ullam.', 7, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(8, 'Ut quod provident magnam qui quo.', 'Nisi unde exercitationem at aut et molestiae quisquam. Non in quos vel eos sunt qui occaecati magni. Sint doloremque voluptas distinctio rerum et. Nam deserunt provident ullam nam quia adipisci quia. Consequatur ut possimus sint cumque molestias nisi. Sed rerum aliquam laborum distinctio. Incidunt accusantium et voluptatem qui nam. Itaque repellendus error excepturi at. Enim quam eaque ipsum unde. Aperiam ipsam harum quo harum labore modi. Voluptatem dolores consectetur odio sequi consequatur. Aut eligendi et tempora corporis illo et. Qui quibusdam dolor at sit veniam sit. Ipsum est sint veniam esse. Dolorem alias vero optio maiores in. Dignissimos at consectetur voluptas. Odio est dicta exercitationem ea error. Minus dolore dignissimos vero. Molestiae dolore molestiae est est odit excepturi perferendis. Sint non beatae accusamus molestiae repellendus. A repellendus excepturi enim beatae sed. Optio iste est odit odio ad expedita.', 8, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(9, 'Et adipisci autem saepe velit expedita veritatis.', 'Et nam explicabo ut porro eius. Laborum alias repellat nulla qui recusandae dignissimos hic. Ratione eos eligendi rerum et blanditiis. Aut ipsam magnam deserunt dolor. Cupiditate ut adipisci iusto molestiae reprehenderit et. Placeat cumque delectus aut suscipit ipsam at alias fuga. Nemo omnis rem iste placeat iusto ut et. Ea modi voluptas et. Ullam laborum omnis ab culpa ipsam eligendi fugit dicta. Occaecati quia est deleniti consequatur. Et minus ipsa ullam rerum ipsa velit dignissimos. Modi et aut pariatur numquam quod id esse. Nam non voluptatem maiores necessitatibus nihil nulla et ipsam. Ut in amet temporibus et perspiciatis. Qui facere et officiis quaerat. At corrupti voluptatum consequuntur ut. Mollitia maiores sed facilis et. Qui aut sunt provident numquam sapiente quos et. Qui nesciunt qui magni doloribus dolorum earum rem quis. Tempora est eum maiores quae. Voluptatem velit libero perferendis quasi et atque et. Occaecati laudantium aut qui eveniet est voluptas neque aut. Beatae occaecati cumque necessitatibus incidunt ut nobis est. Dolore suscipit beatae voluptas saepe ea quia in.', 16, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(10, 'At omnis consequatur ipsum alias nihil exercitationem.', 'Culpa reprehenderit sint quae aspernatur eos impedit. Dolor laboriosam excepturi error dolore provident nemo. Officia dolor explicabo excepturi totam minima omnis. Velit omnis aspernatur dolores qui illum rerum. Nostrum omnis dignissimos est eveniet omnis nesciunt. Ipsum consectetur amet a. Quam iure reiciendis aut eos. Recusandae provident esse quis expedita. Ratione non enim ipsum quidem. Qui et perferendis aut delectus tempora perspiciatis quasi excepturi. Molestiae ad molestiae eligendi quo eos voluptatem ea. Voluptatum non tempora corrupti. Ullam ut quo et fugit ut deleniti aut laudantium. Est voluptatem reiciendis suscipit quos. Voluptas ex suscipit et modi animi consequatur dolor. Odit est dolorem illum nam quo illo. Aut asperiores quis vel ipsa voluptatem earum. Dolorem adipisci sunt sapiente et et numquam qui. Quia quo similique exercitationem nesciunt qui nobis praesentium et. Ut id dolorem quo qui. Quidem facere harum nulla vel. Fugit possimus quis consequatur aut ratione. Perferendis praesentium neque dolorem sed voluptatem. Reiciendis neque voluptas fugit ad. Aut quos nisi alias itaque ut. Blanditiis vitae corporis ratione consequatur. In est ipsum fugiat accusantium. Possimus molestiae qui officiis placeat. Fuga asperiores qui unde quasi eligendi animi est vero. Odit voluptate aut sit sed et voluptatem. Consequatur voluptatem omnis perferendis sequi ab ipsam. Unde alias molestiae iste autem rerum laudantium molestias totam. Est adipisci quis laboriosam aliquam pariatur tenetur. Fuga nostrum ipsum molestias esse. Saepe sed error vel. Facilis nesciunt commodi consequuntur ducimus quam dolor accusamus quam. Maxime voluptatem eum ut natus sit alias consectetur cupiditate. Earum et illo veniam culpa voluptas molestiae voluptates. Repellendus et ab velit modi et.', 10, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(11, 'Beatae et autem deleniti tempore sed totam.', 'Eum molestias et sed dolorum sint omnis quisquam mollitia. Aperiam et est quasi et. Recusandae id omnis excepturi consequatur distinctio dolores ut officiis. Placeat autem debitis temporibus consequatur. Illum consequatur cupiditate voluptas molestias. Quisquam eius consequatur velit blanditiis omnis. Non ipsum consequatur necessitatibus voluptatem sed. Quidem accusantium totam autem. Quo repellat ducimus perferendis facilis eos numquam. Beatae cupiditate consequatur eum quia ab laborum. Qui ex temporibus eius eum iste dolorem et. Rerum totam rerum expedita rerum. Soluta aut nobis et autem numquam sunt similique. Sit omnis et dolores officia molestias quo eos. Ab alias blanditiis qui doloribus. Aut voluptate quo vel sit et voluptas beatae. Non ipsum velit molestiae unde natus labore. Minima voluptas ut consectetur sequi ullam. Hic corporis dolorem doloribus vel. Perspiciatis dolores magnam cum blanditiis mollitia ratione iure voluptatem. Dignissimos nam vitae aut sapiente illum odio. Repellendus est aut animi et. Ducimus earum quod vel voluptates eos esse libero. Earum similique nulla officiis nemo odit consequatur atque. Sint quia nihil alias fugit eum velit. Ea ea commodi deleniti aut aut suscipit sed. Rerum omnis reprehenderit quidem voluptate amet eveniet possimus eveniet. Sint iste eos quod est. Excepturi distinctio voluptatem neque est voluptatem. Consectetur ea ipsum et laudantium modi necessitatibus. Eum aliquam nihil ut ut consectetur. Consequatur ut quibusdam placeat nemo et in necessitatibus. Asperiores occaecati voluptatibus optio architecto ut ea soluta. Dignissimos enim accusantium necessitatibus quaerat. Ea excepturi minima iste provident. Omnis corporis dolor qui. Est nemo vel molestiae omnis temporibus vel ad.', 11, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(12, 'Voluptates rerum ut sunt occaecati facere exercitationem eos.', 'Magnam est non quos sequi earum. Eos quibusdam sed nesciunt iusto hic qui. Cupiditate eius quia dolor itaque sit. Qui amet optio consectetur debitis. Eaque perferendis suscipit debitis ducimus reiciendis voluptatem. Et quia numquam vel et facere illo ut tenetur. Assumenda omnis ad qui laudantium quasi. Aut ipsum voluptatem voluptatem repellat. Cupiditate a qui quaerat magnam nesciunt ducimus. Enim officiis consequatur et non libero sint molestiae. Nesciunt accusantium voluptates nesciunt omnis ad. Non omnis nesciunt sit ad possimus voluptatem et voluptatibus. Et assumenda rem laudantium ducimus qui perferendis et. A quas laboriosam officiis repellendus. Accusantium libero sint velit. Sint molestiae harum qui ipsam. Vel voluptas cupiditate dolor quis rem. Ea est qui illum nesciunt. Expedita accusamus porro at nesciunt molestiae tempore. Impedit asperiores laboriosam voluptate. Sed quisquam quia inventore odio consectetur. Ad pariatur dignissimos quo id laudantium asperiores necessitatibus reiciendis. Consequuntur consequatur aut laborum modi molestias voluptas. Tenetur reiciendis voluptatibus adipisci ut. Facere culpa est dignissimos ipsum. Quam occaecati suscipit laboriosam iste soluta. Nulla molestiae reprehenderit itaque aut quidem voluptatem.', 12, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(13, 'Quae sint eos quia deserunt ea minus fugit.', 'Vitae eius commodi laborum excepturi dolores repellendus et. Possimus sit deserunt tempora nemo quis reprehenderit. Ut omnis rerum dolores aspernatur vero architecto. Rerum qui accusantium dolorem. Veniam dicta maiores voluptas autem odit. Quia praesentium id qui et alias quis. Corporis cum rerum aut neque aut id. Hic error eos omnis quis quis. Sint tempora iste velit consequatur. Facere expedita fugit deserunt est est eos. In dicta perspiciatis sit esse necessitatibus minima deleniti. Rerum esse sint et sunt rerum. Dolorum ea et sapiente recusandae occaecati sequi rerum. Molestiae dolore qui inventore minima. Dolores iste architecto repellat aperiam excepturi. Impedit in rerum eos eveniet. Ex molestiae ab quod consequatur sint. Autem eaque molestias alias ut. Voluptatem quis est sit vel velit et et ullam. Mollitia adipisci adipisci dolores aut voluptatum. Expedita esse reiciendis architecto est aliquam. Mollitia rerum eum numquam nulla odio. Quos sapiente eum qui temporibus ratione minus. Consequatur voluptatem vitae sed quasi. Est laudantium veritatis et rerum consequuntur sed consequatur. Aliquam commodi aperiam eligendi nemo ut ipsa facere. Amet beatae impedit ut vel totam. Magni aspernatur animi sequi occaecati sint et. Necessitatibus fuga voluptas et fugit. Laboriosam vitae rem cumque earum labore consequatur ipsam. Omnis accusamus illo aut iure laudantium dolorum. Natus voluptate facere sit nobis consequatur. Animi veniam vel doloribus debitis. Eaque molestiae ut et minus et. In molestias aut qui ut quasi. At a autem tempora rem laborum. Inventore rerum ex facilis aliquam occaecati et ad et. Nobis distinctio molestiae voluptatem ullam commodi omnis nobis.', 13, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(14, 'Harum earum fugiat voluptatem voluptas dolor.', 'Voluptatem qui aut esse facilis illum. Quis velit illo deserunt velit. Odit at molestias tenetur laborum consequatur et aliquam. Quia est ducimus minima suscipit omnis eveniet minima. Ea est voluptatem est nisi maxime ipsa dolores. Est voluptatem consequatur et voluptatem. Vero est praesentium laboriosam qui ea. Omnis enim quae commodi atque veniam rerum voluptates. Dolore ut maiores atque et. Architecto debitis sit rerum quo. Voluptatem iure ullam dolorem et. Eum cupiditate aliquid animi sunt rerum quia. Eum et in ratione tempore debitis. Culpa sunt dolorem perspiciatis omnis est qui. Itaque laudantium accusantium dolore optio qui. Quia aut eveniet voluptatem ex. Excepturi ut nobis aut consequatur ipsum nihil quod. Omnis nobis dolore nemo magni. Vel est ipsa dolorem quia in aut quo est. Sed ut omnis sit sunt dolorem occaecati. Maiores iusto voluptatum odio adipisci iste qui eos. Quis voluptatibus aut saepe quia eos totam sit vero. Ut dolores officiis corrupti sint placeat consequuntur est. Earum velit quaerat sint libero quia repellendus incidunt deleniti. Fugiat velit dolorum enim molestiae ut quod. Est minus quis nesciunt. Eligendi quidem officiis id quia ut quia labore sequi. Laborum dolores totam et unde iste maiores. Autem aliquam mollitia maxime voluptatem quam. Dolorem perferendis dolorum ullam. Reiciendis et officiis error iure aperiam velit in qui. Hic expedita maxime voluptatem accusamus. Illo sed dolores tenetur quasi et.', 14, '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(15, 'Vero magni qui alias esse autem nihil et non.', 'Impedit nesciunt repudiandae et. Et omnis nostrum accusamus aut. Pariatur et qui nemo consectetur dolorum. Quis aliquam distinctio facere numquam. Et consectetur consectetur dolorem eius quia et. Rerum pariatur consequuntur fuga quaerat. Blanditiis eum quibusdam repellat sit. Itaque recusandae ipsum cupiditate quia fugiat iste aliquam. Esse perspiciatis voluptas et. Atque in et sint. Officia in laudantium quasi suscipit velit et. Debitis fugit et nobis consequatur vel omnis. Libero ut voluptates beatae nisi est. Sit eveniet doloribus ab voluptatem quos unde velit. Excepturi veritatis est nam sed neque. Velit laborum totam itaque. Molestiae quibusdam rerum nulla temporibus et. Labore vitae voluptatum voluptatibus exercitationem animi est cupiditate. Repellat similique soluta ut laudantium qui dolores. Harum sed et sint optio non. Eos qui velit quisquam fugit delectus nihil laudantium non. Eligendi ex sunt eveniet libero maxime. Culpa ipsa eaque ea iste. Dolorem tempora nam qui accusantium explicabo. Fugiat sed consectetur repellendus. Non et quasi earum. Nesciunt accusamus quasi veritatis consequatur esse. Aut aut aliquam accusamus. Accusamus recusandae nihil quas ut atque. Ut ullam facere vel neque iste dignissimos est. Nisi necessitatibus eius id repellendus. Ut harum voluptas temporibus dolores quia porro ut. Tempore voluptatibus dolor explicabo ad doloremque. Rerum et ipsum veniam earum fuga. Perferendis eveniet ut perferendis sit non quod dolores. Quasi perspiciatis aut sit facere. Ipsum accusamus pariatur deleniti atque id ullam adipisci. Similique voluptas hic neque officia repudiandae. Illo sint alias optio quo. Ab nulla laudantium consequatur molestiae voluptate. Ex nihil sit aspernatur dolorum voluptate. Quis vero ut cumque sed qui.', 15, '2023-09-29 17:12:20', '2023-09-29 17:12:20');

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `user_id`, `title_en`, `title_fr`, `file_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 17, 'adad777', 'as666', 'documents/CpS185fkQvSbFkC1KNS98HZpq3FT7mMMm4mdykek.pdf', '2023-10-13 18:12:29', '2023-10-13 20:26:16', NULL),
(2, 17, 'anglais', 'francais', 'documents/5KMI1jwUmJM5D3HQiH0Q3tSzUQpIXVUTMnSSpUMh.pdf', '2023-10-13 19:57:50', '2023-10-13 19:57:50', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `phone`, `email`, `date_de_naissance`, `ville_id`, `created_at`, `updated_at`) VALUES
(1, 'Phoebe Durgane', '33089 Franecki Road Apt. 203South Burdetteburgh, NH 92413', '+1.240.251.0910', 'quigley.josiane@example.net', '1984-05-28', 9, '2023-09-29 17:11:52', '2023-10-14 01:23:42'),
(2, 'Garnett Paucek', '875 Wisoky Brooks Suite 365\nTorranceland, UT 61798', '+1.719.944.6475', 'uhyatt@example.org', '1972-05-21', 7, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(3, 'Solon Konopelski', '5393 Katlyn Walks Suite 072\nNorth Otilia, MI 18209-5063', '+1.772.976.6331', 'greyson.jaskolski@example.com', '1985-03-22', 14, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(4, 'Alisa Dietrich', '47906 Daija Heights Suite 224\nLake Margret, WY 84839', '+18632408647', 'kemard@example.com', '1987-07-14', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(5, 'Kyra Ratke', '6733 Kutch Hill Suite 218\nWaelchimouth, VA 05342', '1-336-556-9284', 'kendall20@example.com', '1988-03-24', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(6, 'Chandler Olson', '7654 Hickle Dam Apt. 641\nBryanafort, NY 21553', '+1-770-799-8139', 'lexie.spinka@example.org', '1997-04-23', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(7, 'Maxwell Hand', '59815 Luigi Cliff\nAlbertview, SC 69169-7263', '+1-916-709-5524', 'ubogan@example.com', '1980-05-18', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(8, 'Ernestina Kling', '64129 Maud Hills\nLake Nellaburgh, CA 54891-2104', '424.728.6970', 'schimmel.antonietta@example.net', '1992-12-18', 10, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(9, 'Krista VonRueden', '7503 Armstrong Canyon Suite 685\nAudieside, RI 97257-3001', '725.671.4154', 'lmann@example.net', '1985-05-28', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(10, 'Zane Murazik', '4949 Wellington Crescent\nPort Bernardton, IA 34577-9805', '+12282384798', 'graham.glenda@example.org', '1976-10-27', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(11, 'Mozelle Nikolaus', '586 Grayce Key Suite 153\nPhoebeton, NY 85694-5436', '(669) 791-7861', 'mueller.van@example.org', '1979-09-24', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(12, 'Meggie Quitzon', '16342 Spencer Summit\nGrahamtown, CT 37453-7534', '+19862773612', 'moore.aletha@example.net', '1981-05-21', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(13, 'Alessandro Pouros', '26930 Gracie Fords\nWest Dock, VT 92044', '(810) 226-0325', 'rcrooks@example.net', '2002-02-13', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(14, 'Kody Gutmann', '6742 Schmitt Valley Suite 635\nNorth Hillardborough, MS 93181-8087', '607-715-5967', 'bella.lemke@example.org', '2002-09-07', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(15, 'Cydney Langosh', '12485 Francisca Keys Suite 822\nBaumbachside, IN 85377-6001', '510.575.8030', 'laura76@example.net', '1988-11-23', 8, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(16, 'Robyn Durgan', '4315 Leslie Fields Apt. 956\nSchneidermouth, AR 16325', '(925) 345-7366', 'xzboncak@example.net', '1971-05-25', 14, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(17, 'Justus Renner', '361 Glennie Square Suite 617\nBinsbury, KS 96137-6824', '586-700-3354', 'edgardo.kutch@example.net', '1971-07-06', 9, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(18, 'Mathew Dibbert', '658 Alisha Valleys\nKyleshire, AL 39822', '301-399-1578', 'gmetz@example.net', '1978-09-27', 9, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(19, 'Judge Von', '1444 Lourdes Circles Suite 373\nBergstromshire, SD 25811-2197', '+15188019617', 'emard.demond@example.com', '1989-03-08', 11, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(20, 'Julian Jones', '68236 Bechtelar Island\nPort Sabrina, IN 00386', '352-239-5129', 'connelly.lauren@example.org', '1997-02-08', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(21, 'Sydney O\'Keefe', '6683 Olen Mountains\nPort Margarettstad, IA 56048', '+16059680683', 'mia63@example.org', '1991-07-27', 15, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(22, 'Madaline Herman', '66126 Zulauf Row Suite 408\nEast Marciaside, VT 09800-6798', '458.322.4560', 'oreilly.joany@example.com', '2003-07-22', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(23, 'Sheila Larkin', '779 Pollich Roads\nEstevanland, LA 24089', '662.799.7314', 'roselyn.kerluke@example.org', '1999-08-01', 3, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(24, 'Vanessa Reichert', '185 Keeling Islands\nLake Napoleon, WV 55954', '424-736-6739', 'ulittle@example.net', '1987-06-06', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(25, 'Florencio Emard', '609 Brakus Mill Apt. 735\nNorth Zelda, DC 97180-8202', '+1.209.303.7889', 'carroll.jerel@example.org', '1970-05-30', 10, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(26, 'Randall Reichel', '7690 Jones Brook Apt. 060\nKundestad, OH 24568-6752', '+1-206-839-7245', 'schultz.weston@example.org', '1972-08-23', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(27, 'Sylvia Conroy', '57391 Isac Drive Suite 204\nHuelland, MA 88840-8026', '+1 (352) 577-0493', 'kemmer.hallie@example.org', '1973-06-08', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(28, 'Kevon Langworth', '6202 Hintz Motorway Apt. 006\nOkunevashire, IL 50324', '864-735-3854', 'blick.mathias@example.com', '1979-04-09', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(29, 'Erich Roberts', '5584 Little Row\nEffertzfurt, CA 30579', '+1 (607) 782-0129', 'freddy15@example.com', '1993-12-18', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(30, 'Raoul Russel', '698 Arvel Stravenue\nLorenport, ID 16171', '(430) 759-0122', 'pokuneva@example.org', '1973-06-17', 15, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(31, 'Billie Parker', '44130 Raynor Plaza Apt. 557\nHarrisport, TX 89599-3478', '+1 (463) 296-6214', 'gorczany.alessandro@example.org', '1994-04-10', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(32, 'Benton Nader', '9588 Beahan Manors\nNew Donatoport, AL 81760', '+16818256588', 'wbrekke@example.net', '1970-07-23', 7, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(33, 'Camron Dietrich', '1375 Ruecker Mountains Suite 330\nPort Janie, WI 87253-7484', '1-669-688-8933', 'iruecker@example.com', '1989-01-08', 3, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(34, 'Talia Tremblay', '22422 Rogahn Trail\nBinsfurt, MA 81102', '562-298-8568', 'reichel.dan@example.org', '1970-10-11', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(35, 'Flo Nicolas', '33598 Micaela Ridges Apt. 214\nCarriemouth, ME 62108', '1-402-451-6982', 'runolfsson.kavon@example.org', '1981-11-16', 11, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(36, 'Juliana Robel', '5207 Rodriguez Ridges\nSouth Adelia, TX 12960-6622', '+12189610412', 'schuyler.franecki@example.org', '1986-09-15', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(37, 'Toney Pfannerstill', '873 Cassin Causeway\nCasperburgh, WA 39318', '985-892-4458', 'mcclure.fred@example.com', '2003-04-13', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(38, 'Dominic Mitchell', '4671 Gia Summit Apt. 246\nEast Birdie, WA 93399-3897', '+19788006284', 'dicki.maryam@example.org', '1984-08-14', 12, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(39, 'Humberto Mante', '96520 Wisozk Prairie Apt. 269\nWest Joaquinmouth, PA 48534', '(385) 699-3230', 'marion.wehner@example.com', '1975-02-26', 14, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(40, 'Quinton Robel', '34812 Bogan Knoll Suite 564\nRennerfort, NY 92068-5192', '(209) 552-1003', 'vyundt@example.com', '1998-10-17', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(41, 'Genesis Ziemann', '120 Wehner Inlet\nPansychester, MS 53583', '1-262-633-7318', 'westley09@example.com', '1993-09-13', 15, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(42, 'William Goyette', '579 Kuvalis Square\nBretthaven, TX 00832-2530', '+1-689-449-6649', 'aliyah.erdman@example.org', '1975-08-24', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(43, 'Florida Romaguera', '29648 Hammes Way Suite 578\nKerluketown, HI 59256', '716.579.9757', 'abauch@example.net', '1985-06-29', 14, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(44, 'Macie Wehner', '5903 VonRueden Port Suite 379\nNew Ignaciobury, ID 67908-7010', '(541) 655-6433', 'fgutmann@example.net', '1985-03-02', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(45, 'Jaleel Christiansen', '8039 McKenzie Station Suite 413\nJakubowskimouth, WV 75382-6105', '+1.843.861.8881', 'fruecker@example.net', '2000-09-07', 7, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(46, 'Glenda Howell', '5022 Francisca Ranch\nHaydenshire, KY 25446-0593', '(469) 823-0993', 'khalil.feeney@example.com', '1972-08-17', 15, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(47, 'Dakota Blanda', '7837 Alessandro Drive Suite 986\nEast Meagan, NY 46276', '+1.580.757.8936', 'reynold.shanahan@example.net', '1981-01-16', 3, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(48, 'Brannon Bahringer', '8608 Eloisa Summit\nNorth Faye, MO 22207-2589', '+1 (678) 994-9549', 'sjerde@example.net', '1980-07-29', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(49, 'Enrique Boehm', '58034 Schneider Groves Apt. 977\nPort Jimmy, IN 30666', '(985) 501-6668', 'delbert.emmerich@example.org', '1996-04-13', 8, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(50, 'Ward Hahn', '3456 Bernard Path Apt. 694\nRosaliaside, AK 07648', '+1-248-539-7469', 'edgar.mante@example.com', '1978-03-02', 12, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(51, 'Margot Ledner', '545 Larson Ford Suite 190\nDonnellymouth, TN 26403-3116', '336.475.0148', 'gay41@example.net', '1975-01-07', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(52, 'Mariano Padberg', '93433 Dickinson Spurs Apt. 106\nLake Joaquinberg, TN 44484', '210.681.1950', 'ceasar.barrows@example.com', '1985-03-08', 9, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(53, 'Giovanni Anderson', '3063 Helga Springs Suite 875\nPort Cordellside, IL 85324', '1-223-247-2736', 'erna.gleichner@example.org', '1995-03-13', 1, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(54, 'Collin Krajcik', '5431 Glover Junctions\nEast Raleigh, WV 91429', '+1-862-239-2600', 'drowe@example.net', '1974-06-19', 14, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(55, 'Myra Armstrong', '387 Erdman Spur\nSandraville, MA 28029', '1-380-859-6758', 'uklein@example.com', '2002-05-06', 11, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(56, 'Gunnar Raynor', '862 Effie Plaza Apt. 757\nNew Libby, CO 79082', '351-849-5096', 'reinger.ozella@example.com', '2001-07-21', 9, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(57, 'Erick Zulauf', '16382 Nedra Run Suite 470\nSouth Vivianetown, FL 58153', '+1.972.609.6569', 'ftremblay@example.com', '1978-12-14', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(58, 'Elias Kuhn', '766 Funk Lodge Suite 051\nSimonisview, OR 53666-0275', '1-364-478-7828', 'chaz.stracke@example.net', '1986-06-06', 1, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(59, 'Georgiana Dickens', '4993 Blanca Glens Suite 197\nNorth Daphne, MN 19015', '713.324.7136', 'rosalia51@example.com', '1996-03-12', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(60, 'Einar Greenfelder', '4996 Riley Villages\nLake Neva, KS 28594-0090', '(551) 836-7262', 'larue86@example.org', '1986-10-02', 8, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(61, 'Orion Bradtke', '561 Hodkiewicz Shoals\nKaleighville, NH 59436', '+1-234-903-0363', 'oberbrunner.mercedes@example.net', '1984-01-12', 8, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(62, 'Adonis Jacobs', '4145 Hamill Ridges Apt. 382\nJakubowskichester, ME 24356-3407', '1-640-995-4245', 'baumbach.maximilian@example.org', '1991-07-28', 3, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(63, 'Hailee Parisian', '25107 Zboncak Viaduct\nCarterport, MA 30214-2852', '(512) 227-8940', 'tomas.klein@example.net', '1981-07-02', 7, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(64, 'Maida Hoeger', '94750 Cole Common Apt. 659\nChristianstad, ME 56903-0764', '1-516-500-4764', 'purdy.lavon@example.com', '2003-11-06', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(65, 'Chase Kessler', '8361 Baumbach Viaduct\nNorth Enricoland, WV 51056', '1-309-360-8483', 'mbraun@example.org', '1993-08-21', 12, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(66, 'Rosalee Zemlak', '9876 Sigrid Field\nNorth Delia, OR 07836-6852', '+18623973238', 'evie59@example.org', '1995-09-26', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(67, 'Bessie Barrows', '47459 Krystina Point Apt. 412\nNew Estebanfort, DE 52011-4619', '(321) 849-6132', 'calista52@example.net', '1983-08-20', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(68, 'Payton Volkman', '477 Mervin Throughway\nShanahanbury, NC 77404-0395', '1-509-893-9711', 'gerhard98@example.net', '1975-12-15', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(69, 'Alexandria Doyle', '619 Bruen Rapids Suite 429\nHarmonyland, UT 22072-0724', '954-661-8507', 'rocio.smith@example.org', '1987-02-21', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(70, 'Felton Mraz', '4166 Wolff Junction\nSouth Cassandra, MT 23845-9339', '+13513342874', 'sigrid81@example.com', '1972-11-22', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(71, 'Marietta Reichel', '23104 Satterfield Bridge Suite 280\nEast Arielfurt, MI 14118-8662', '(214) 927-1021', 'leland.dubuque@example.net', '1985-12-16', 1, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(72, 'Casandra Rath', '81028 Riley Shoals Apt. 159\nNorth Vinnie, NY 90449-7771', '(351) 776-1297', 'amira30@example.com', '1986-10-15', 7, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(73, 'Alena Olson', '572 Ullrich Corners Apt. 684\nWest Noahland, HI 85340-6186', '1-832-872-9112', 'lorena54@example.org', '1982-03-17', 9, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(74, 'Ladarius Lesch', '8625 Bell Views\nOlinburgh, MA 37678', '234-908-9626', 'schoen.will@example.com', '1989-08-03', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(75, 'Laury Huels', '865 Lueilwitz Plain Suite 209\nBoyertown, TN 43923-2942', '463-691-3264', 'leannon.henriette@example.com', '1985-05-24', 12, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(76, 'Roma Pagac', '21755 Weber Avenue\nNew Selina, WI 06797-5813', '1-865-556-0342', 'mia32@example.net', '1987-10-13', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(77, 'Elvie Collins', '64857 Bauch Gardens Apt. 176\nStrosinhaven, DE 98393-3709', '1-878-445-0347', 'walter.anahi@example.org', '1996-08-19', 14, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(78, 'Lillie Mertz', '183 Sheldon Well\nNelsonshire, ND 54078', '+14072247629', 'hcronin@example.net', '1984-09-21', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(79, 'Jude Considine', '3336 Austin Dam Apt. 857\nNew Frederic, NV 73957', '+1-229-585-1120', 'jacquelyn.harris@example.org', '1999-06-06', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(80, 'Elissa Nitzsche', '6331 Bethany Plains Apt. 457\nNorth Jaquelineside, FL 78699', '+18507591930', 'lowell.huels@example.com', '1973-11-24', 8, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(81, 'Lon Walker', '6145 Torrey Hill Suite 506\nPort Jerryside, CT 05263', '828-722-2506', 'obartoletti@example.net', '1995-11-17', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(82, 'Myah Breitenberg', '19494 Jamie Harbors\nSerenafurt, CA 70736-4563', '+1.352.782.6002', 'yhessel@example.com', '1990-11-07', 14, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(83, 'Vito Schmitt', '2391 Williamson Dam Apt. 494\nElijahtown, WV 98141-9859', '+18055036445', 'janae.kling@example.net', '1971-11-07', 12, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(84, 'Willard Hessel', '743 Camila Inlet Apt. 050\nMosciskiport, MO 36269', '+1.689.570.4091', 'daron.schamberger@example.net', '2002-04-29', 3, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(85, 'Elvis Veum', '6261 Lockman Lane Apt. 323\nNorth Johnsonberg, IN 78450-3214', '+1.478.908.4110', 'shanon03@example.com', '1989-05-20', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(86, 'Genesis Denesik', '38646 Dillon Turnpike Suite 212\nPort Ezrafort, SC 16923-4950', '+1-540-224-8894', 'nkiehn@example.net', '1975-11-07', 1, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(87, 'Beverly Morissette', '6310 Ferry Course\nWilkinsonside, HI 66352', '831.835.4453', 'oweimann@example.net', '1977-01-11', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(88, 'Assunta Kuhlman', '46929 Hermann Ramp Apt. 991\nPagacborough, MN 08874', '+13045234520', 'kaley64@example.com', '1981-05-04', 15, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(89, 'Kenna Heaney', '38133 Baumbach Gateway\nHalleview, SD 76957-3603', '+1.985.399.7673', 'kasandra.hermann@example.org', '1979-11-23', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(90, 'Nikolas Satterfield', '778 Florence Brook Apt. 510\nAntoninaport, ND 30264', '720-979-2794', 'marta68@example.org', '1987-03-24', 8, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(91, 'Jimmy Cassin', '297 Nicholaus Mills Apt. 117\nPort Elmore, NY 75207', '+18542063291', 'horace90@example.org', '2003-10-17', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(92, 'Rosemarie Heidenreich', '7962 Elinore Squares Apt. 779\nBirdiestad, SC 46143-2197', '+1-812-443-9552', 'harris.nels@example.org', '1983-08-05', 6, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(93, 'Vern Lakin', '99679 Bartholome Drives Apt. 235\nJosefinaville, NJ 05327', '802-380-4277', 'price@example.net', '2001-04-20', 8, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(94, 'Mariano Mraz', '417 Ona Ferry\nEast Rozella, SD 30000', '+1.978.605.7776', 'xpurdy@example.net', '1985-05-03', 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(95, 'Effie Ebert', '42987 Mraz Loaf Apt. 843\nCalitown, MA 25135-4667', '(458) 373-2186', 'bgreenholt@example.net', '1993-03-15', 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(96, 'Jake Sawayn', '6889 Rutherford Falls Apt. 318\nPort Nadia, RI 74982-7530', '504-246-3981', 'parker.marks@example.org', '1980-02-26', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(97, 'Elda Hagenes', '5396 Gutkowski Passage\nNorth Parisborough, CT 05453', '+16407632841', 'alberto71@example.net', '1979-09-20', 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(98, 'Enrique O\'Hara', '1728 Brook Wall Suite 369\nLake Maudiehaven, MN 63005', '408.588.7994', 'hessel.trever@example.net', '1993-10-11', 7, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(99, 'Kasandra Rogahn', '274 Hand Turnpike Apt. 263\nWest Eudorafurt, DE 70755-4792', '925-342-0916', 'adriel72@example.com', '1999-10-20', 13, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(100, 'Lea Lueilwitz', '45578 Gutkowski Freeway\nPort Dorotheaville, DE 80690', '+15809993025', 'tom.lueilwitz@example.org', '1991-04-03', 7, '2023-09-29 17:11:52', '2023-09-29 17:11:52');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_09_164322_create_villes_table', 1),
(6, '2023_09_10_164123_create_etudiants_table', 1),
(7, '2023_09_28_205026_create_blog_posts_table', 1),
(8, '2023_10_13_134318_create_documents_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sim Dibbert', 'sophia.rath@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z2RAbRBLG3', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(2, 'Vincenzo Hayes', 'gklocko@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5MKmS44fI5', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(3, 'Domenic Schmitt', 'maggio.marlene@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MRmoP1s99S', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(4, 'Walker Bergstrom', 'durgan.taylor@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yuBmlysiAF', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(5, 'Miss Hettie Schroeder', 'theodora.hettinger@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yzfhWpHYn4', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(6, 'Jaylen Stamm', 'elton.prohaska@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cly3654MdV', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(7, 'Garett Conn IV', 'mckenna.huel@example.org', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NBBijrLxN2', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(8, 'Rey Schultz', 'orie78@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7AAYrqMgmb', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(9, 'Lonnie Waters', 'phermiston@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FFXaTSkobo', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(10, 'Alanna Heathcote', 'orion.brakus@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WEQhXSCf4A', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(11, 'Cesar Baumbach Jr.', 'kuhn.nathanael@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xBXSeE0ufQ', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(12, 'Dr. Amos Roob', 'alexzander38@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cb0QCGESeW', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(13, 'Ronaldo Kertzmann', 'blake27@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fNU09ksh6t', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(14, 'Dr. Gaston Maggio', 'henriette06@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zZGQoBscZd', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(15, 'Kurtis Kerluke', 'albert.maggio@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0nefs7sV5n', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(16, 'a@a', 'a@a', NULL, '$2y$10$f68dynbus.yVbiuIMPzLu.Yk/k3eu08z/qOb5qTdmwJY2lkYKLDjW', NULL, '2023-09-29 17:42:57', '2023-09-29 17:42:57'),
(17, 'francois', 'francois@francois', NULL, '$2y$10$1cvIpTeUfZo1ep1DKNW53eHgd5XOxgWNMwNHi/M/U..YGk0TJxTZ6', NULL, '2023-10-11 18:13:34', '2023-10-11 18:13:34');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'South Fatimamouth', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(2, 'East Wilfredoland', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(3, 'New Rachael', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(4, 'Everettton', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(5, 'Weissnattown', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(6, 'West Amaliaberg', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(7, 'South Myron', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(8, 'Bergstromchester', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(9, 'Terrillshire', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(10, 'Mylesland', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(11, 'Criststad', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(12, 'South Kellyberg', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(13, 'Port Margueriteville', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(14, 'North Alekhaven', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(15, 'Port Lucius', '2023-09-29 17:11:28', '2023-09-29 17:11:28');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_user_id_foreign` (`user_id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `etudiants_email_unique` (`email`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
