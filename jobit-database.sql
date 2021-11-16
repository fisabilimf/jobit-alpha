-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 07:17 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rplpens_jobit`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Goverment', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(2, 'NGO', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(3, 'Bank', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(4, 'Software', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(5, 'Networking', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(6, '2ndOption', '2021-05-16 22:31:10', '2021-05-16 22:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'it_software.png',
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `cname`, `slug`, `address`, `phone`, `website`, `logo`, `cover_photo`, `slogan`, `description`, `created_at`, `updated_at`) VALUES
(0, 0, 'System', 'systemadmin', 'a1rpl.xyz', 12345678, 'a1rpl.xyz', '1625090191.png', 'it_software.png', 'System', 'System', NULL, '2021-06-30 14:56:31'),
(1, 5, 'Pintap', 'pintap', 'Sentral Senayan II, Jakarta 10270, Indonesia', 1, 'https://karir.pintap.id', 'pintap.png', 'it_software.png', '', 'Pintap is a B2B (business-to-business) digital platform that connects micro, small and medium enterprises (MSMEs) in Indonesia with leading consumer goods companies.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(2, 6, 'Rajati Capital', 'rajati', 'UOB Plaza 30th floor, JL MH Thamrin no 8-9', 1, '', 'rajati.png', 'it_software.png', '', 'Rajati Capital is the holding company for numerous media and entertainment companies.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(3, 19, 'Lemonilo', 'lemonilo', 'Ruko Puri Mansion Blok A No 57 - Jl Lingkar Luar Barat Puri Kembangan, Jakarta Barat - DKI Jakarta 11610 - Indonesia, West Jakarta, DKI Jakarta, Indonesia', 705834, 'https://www.lemonilo.com/', 'lemonilo.png', 'it_software.png', '', 'Lemonilo is the biggest LOHAS (Lifestyles of Health and Sustainability) & Wellness meets CPG (Consumer Packaged Goods) vertical startup in Indonesia. We are on a mission to build a healthier, happier society.\r\n\r\nWe apply technology not only to bring a better retail experience to our customers, but also to assist Indonesian SMEs to curate & predict, create, and distribute affordable healthy products that are free from 100+ harmful ingredients.\r\n\r\nAnd for us, it is way beyond technology and products because there are hundreds of SMEs that we empower to reach the scales that otherwise they would not reach. Human empowerment and fair trade are also of utmost importance here at Lemonilo.\r\n\r\nWith a positive mindset, hard-working attitude, and operation excellence, we are not afraid to break boundaries and challenge the status quo—for the benefit of our users. Every time we fall, we will get back again stronger to make sure that any Indonesian can get the healthy body and mind that they deserve. \r\n\r\nOur team hails from Harvard University, NUS, UMich, UC Davis, Universitas Indonesia, UNSW, and CUNY graduates.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(4, 17, 'PT Evotech Distribusi', 'evotech', 'Puri Indah Financial Tower Lt.7 Unit 0709-0711 Jl Puri Lingkar Dalam Blok T8 Jakarta Barat, RT.1/RW.2, Kembangan Sel., Kec. Kembangan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11610, Indonesia', 0, 'https://evotech.co.id/', 'evotech.png', 'it_software.png', '', 'Established in 2006 EVOTECH strives to provide a unique and quality service to our valued customers.  Our pride, our commitment and your trust in this ideal have enabled us to go from strength to strength.\r\n\r\nEVOTECH is now foremost in the world of IT e-business data access,  business intelligence, and management solution systems.  With our carefully selected industry-leading partners, we are your perfect IT Solutions provider right here in Indonesia.\r\n\r\nVision\r\n\r\nAt EVOTECH our vision is to be the best IT Solution provider in the eyes of our customers, shareholders, and communities. We expect and demand the best we have to offer by respecting and honoring our Asian values in both business and service.\r\n\r\nMission\r\n\r\nEVOTECH’s mission is to inspire, lift and provide the tools for change and growth in  Asia by our commitment to innovation and service through IT Solutions.  To provide outstanding services, quality and value to our customers.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(5, 15, 'CARE Technologies', 'caretech', 'Crown Palace A10—A9 Jl. Prof. Dr. Soepomo S.H. No. 231', 1, 'http://www.care.co.id/', 'caretech.png', 'it_software.png', '', 'CARE Technologies is the first generation in Indonesia who launced the desktop and web version of an application for th General Insurance.\r\n\r\nCARE Technologies was established in February 20th, 2006 and located in Tebet – South of Jakarta. Today we have nearly 80 employees with the position IT Programmer and IT Consultant. In 2010 CARE Technologies became first generation who issued an application for General Insurance in the Enterprise version which is still growing until today.\r\n\r\nMostly 80% Insurance Company in Indonesia using CARE Application, and we have client in Thailand and Philippines. CARE Technologies has a schedule in yearly to making Corporate Social Responsibility (CSR) at East Indonesia, focus in education and social problems.\r\nJob Openings at CARE Technologies\r\n', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(6, 4, 'SehatQ', 'sehatq', 'Sinarmas Land Plaza, RT.9/RW.4, Gondangdia', 950, 'https://www.sehatq.com/', 'sehatq.png', 'it_software.png', 'SehatQ, Asisten kesehatan keluarga Anda ', 'SehatQ diluncurkan pada November 2018 oleh PT SehatQ Harsana Emedika. \r\n\r\nProfil\r\nPerjalanan kesehatan dimulai dari pencegahan, pengobatan ketika sakit, dan perawatan setelah sembuh. Kebutuhan masing-masing individu bergantung kepada riwayat keluarga, lingkungan tempat beraktivitas, dan kondisi individu tersebut. Sebagai startup teknologi di bidang kesehatan, SehatQ didirikan untuk memudahkan pengguna mengambil keputusan-keputusan yang terkait kesehatan. Untuk mewujudkan hal ini, SehatQ menyiapkan informasi kesehatan dengan referensi jelas dan kredibel, menyediakan platform komunitas bagi pengguna untuk bertukar informasi dan saling mendukung dalam perjalanan kesehatannya, dan menghubungkan pasien dengan tenaga medis maupun penyedia layanan kesehatan. \r\n\r\nProduk\r\nProduk SehatQ terdiri dari portal informasi dan layanan kesehatan SehatQ.com dan aplikasi berbasis Android dan iOS SehatQ. \r\n\r\nFitur\r\nSehatQ menyediakan rekomendasi kesehatan sesuai kebutuhan individu. Fitur unggulan SehatQ meliputi:\r\n1. Jurnal kesehatan pribadi (Personal Health Records) mySehatQ untuk mengelola data kesehatan keluarga\r\n2. Telekonsultasi dengan tim dokter SehatQ\r\n3. Berita kesehatan terbaru\r\n4. Database penyakit, obat, dan prosedur/tes kesehatan\r\n5. Infografis, animasi, dan video penjelasan yang mudah dipahami\r\n6. Forum diskusi dengan dokter dan komunitas\r\n7. Tool kesehatan interaktif\r\n8. Database fasilitas kesehatan dilengkapi dengan sistem perjanjian', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(7, 3, 'PT Moonlay Technologies', 'moonlay', 'Equity Tower, Senayan, Kebayoran Baru, South Jakarta City, Jakarta, Indonesia', 0, 'https://www.moonlay.com/', 'moonlay.png', 'it_software.png', '', 'Moonlay Technologies is an Information Technology company based in Jakarta, Indonesia. We already served varied industries from banking, manufacturing, building construction, retailing and property management industry. Moonlay Technologies believes its capabilities and cooperation to provide the best solution for business needs. With extensive exposures and numerous experiences, Moonlay Technologies now has three groups, Software Tailor, Brain Resources, and Mokki Design. Each of them consists of talented people with passion, integrity, great qualities, and thrust to deliver real business results.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(8, 15, 'PT Adicipta Inovasi Teknologi', 'adins', 'Jl. Raya Kb. Jeruk No.80, RT.7/RW.1, Kb. Jeruk, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11530, Indonesia', 0, 'https://www.ad-ins.com/\r\n', 'adins.png', 'it_software.png', '', 'Advance Innovations (AdIns) is Independent Software Vendor that established in 2000. We have comprehensive an end-to-end solution for financial businesses such as customer finance and leasing solution, mobile solution, document solution, IT training and development solution, data warehouse and business intelligent solution and payment channel solution. With all of this solutions we are a market leader in this industry with 60% of market share. AdIns has an excellent track record and 100% success rate in project implementation supported by an excellent combination of highly skilled professionals, in-depth business understanding, and extensive experience in financial industry especially banking and multi-finance company.\r\n\r\nFeels Like Home\r\n\r\nWe do not care about who you are, where do you come from, or the colour of your skin. You are one of us and we are one of you. AdIns is home to young innovative professionals, because we know that modern problem need a modern solution. Having fun while working will make an enjoyable, conducive, and comfortable working place and it is one of the privilege that gave to the employees.\r\n\r\nLearning Experience\r\n\r\nIf you are looking for a job, AdIns is not the right place for you, if you have huge thirst of knowledge, AdIns is the perfect place to keep on learning and developing yourself. Learning is the journey of a lifetime, that\'s why AdIners aren\'t just encouraged but also sponsored to take a bunch of certification for free.\r\n\r\nSame Frequency\r\n\r\nWe understand that not everyone can get along with each other and we all have a fear of being judged. You can be yourself without any hesitation because we talk in the same frequency and have the same set of mind on this world. Being bullied and be the bully with no heartache is an everyday thing.\r\n\r\nFacility & Reward\r\n\r\nGreater power comes with greater responsibility, no pain no gain, yin and yang, everything come in pairs and have to be balance. AdIns will see and acknowledge every skill and potential that you have, so do not be afraid and feel free to do more than what they expect. We really appreciate our loyal and dedicated employees with a further study, certification, vacation trip, etc.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(9, 20, 'PGI Data', 'pgi', 'Cohive, Jalan Dr Ide Anak Agung Gde Agung, Jakarta 12950, Indonesia', 274457, 'https://www.pgi-data.com/', 'pgi.png', 'it_software.png', '', 'PGI Data is a boutique house providing Digital Transformation through end-to-end data solutions with its presence in Singapore & Indonesia. We believe in a holistic approach to support business decisions and build a top-quality and cost-effective strategy for businesses to operate successfully.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(10, 15, 'SEVIMA', 'sevima', 'Jalan Medokan Asri Tengah, Surabaya 60295, Indonesia', 1, 'https://sevima.com/', 'sevima.png', 'it_software.png', 'Meet The Best', 'SEVIMA is a fast growing IT company located at Surabaya, East Java, Indonesia. We are the right mixture of the best business analyst and technology specialist, Internationally certified and we have received some International award and recognition from world class technology vendors.\r\n- Trust only the best for your Information Technology Investment, SEVIMA focus to help solve education system problem  in Indonesia.\r\n- We Deliver Benefits\r\nOur aim is to help our clients to achieve their objectives faster and easier. Our young and energetic professionals will ensure you to get a creative & innovative solution for your problems. That\'s why we do not provide only software, but also solution that in turn will benefit our client. We work close with our client to understand better, what they really needs and wants.\r\n- Long Term Relationship\r\nWe realized that in order to keep stay ahead at the front-line, companies need to be flexible and dynamic. SEVIMA is fully aware of this and committed to support your institution. Let SEVIMA handle all the complicated things of your technology systems, so you can focus better on your core business and your company growth.\r\n- We Deliver Values to our Customer with Simple yet Effective Solution\r\nWe Combine Our Teamwork with Openness, Trust, Responsibility & Commitment to Help You', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(11, 15, 'Asuransi Astra', 'astra', 'Asuransi Astra (Garda Center) - TB Simatupang, Gedung Graha Asuransi Astra, Jalan TB Simatupang No.Kav. 15, RT.4/RW.1, Lb. Bulus, Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12440, Indonesia', 1, 'https://www.asuransiastra.com/en/', 'astra.png', 'it_software.png', '', 'Asuransi Astra has been serving customers for more than half a century, precisely since September 12, 1956. The company, known for its Garda Oto motor vehicle insurance products, serves customers through a network of services spread across 28 branch offices, as well as service units and Garda Centers that continue developing. In addition to motor vehicle insurance, other products from Asuransi Astra are Garda Medika health insurance, mining industry insurance, agribusiness industry insurance, shop insurance, gas station insurance, sharia insurance, and others.\r\n\r\nSince 2015, Asuransi Astra has developed its products and services digitally and introduced Garda Mobile as a collection of mobile applications intended for retail, commercial and general customers. The four Garda Mobile applications namely Otocare, Medcare, HR-access, and CR-access are consistently updated through various innovations aimed at customer convenience and comfort. The latest innovation developed in the Garda Mobile Otocare with the presence of GarXia, the first insurance purchase chatbot in Indonesia that can also help customers in reporting claims and the Garda Mall feature that allows users to shop for a variety of automotive needs, Astra Financial financial products, also to buying and selling cars. Asuransi Astra also has four digital products namely Garda Me, Garda Edu, Garda Home, and Garda Trip which can be purchased easily and quickly through the gardaoto.com site.\r\n\r\nAsuransi Astra performance has also been recognized with various awards that have been received, including: Platinum Indonesia Best Brand Award (2002-2019), Top Brand Award (2007-2019), Service Quality Award (2007-2018), Corporate Image Award ( 2007-2019), Indonesian Customer Satisfaction Award (2001-2017), Indonesia Original Brand Award (2017-2019), General Insurance with very good financial performance in the Infobank Insurance Award (2008-2016, 2019), Excellent Service Experience Award (2013 -2020), Contact Center Service Excellence Award (2013-2020), Social Media Award (2012, 2016), Indonesia Sharia Finance Award (2017), Insurance Award (2017-2018), Insurance Consumer Choice Award (2017-2018), Asian Brands (2018), Marketing Award (2018), Indonesia Digital Innovation Award (2018), Markeeter of the Year (2018-2019), Infobrand Mobile Application Choice (2018), Marketeers Editor Choice Award (2018-2019), Indonesia Insurance Innovation Award (2019), Indonesia Digital Popular Brand Award (20 19), and others.\r\n\r\nWith the support of branches and workshops that are spread all over Indonesia, along with the best services and a series of achievements, certainly not stopping the steps of Asuransi Astra innovation through products that are built from the new spirit of Asuransi Astra to always provide comfort and peace for every customer. Therefore, Asuransi Astra will invest time and effort so that you always smile. \"Peace of Mind to Millions\" is the result that Asuransi Astra will provide to each customer.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(12, 16, 'PT Indodev Niaga Internet', 'indodev', 'Jl. Tegal Rotan Raya No.78, Sawah Baru, Kec. Ciputat, Kota Tangerang Selatan, Banten 15413, Indonesia', 1, 'http://www.dataon.com/', 'dataon.png', 'it_software.png', '', 'DataOn is the leading provider of HR, ERP, and Accounting technology solutions and is located in Bintaro, South Tangerang, near Bintaro Xchange Mall.\r\nDataOn has been operating since 1999 and obtains ISO 9001:2015 certification audited by llyods International, and the security of our applications are compliant with OWASP standards.\r\nDataOn has also won TOP IT and Telco 2018 awards for Top HC/HR Solution. \r\nIn early 2017, DataOn made a breaktrough in digital era by launching mobile Human Resource Information System (HRIS) named GreatDayHR which can perfectly cater for business of all sized and gives managers to manage their HR directly from smart phone. ', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(13, 6, 'PT IDStar Cipta Teknologi', 'idstar', 'Wisma Staco Level 7 Casablanca Street Kav. 18 South Jakarta - 12870', 1, 'http://www.idstar.co.id/', 'idstar.png', 'it_software.png', '', 'IDstar is a company that focuses on IT service providers. We will prepare our talents very well, according to our tagline, Service with Quality. Our company has collaborated with several other big companies such as UiPath, Oracle, OutSystems, and many more. Several clients who trust us are BINUS University, Prudential, Maybank, Bank Mega, and others.\r\n\r\nOur Vision:\r\nTO BECOME THE MOST TRUSTED IT RESOURCE PROVIDER IN ASIA PACIFIC\r\n\r\nOur Mission: \r\nTo build real value to customer\'s business\r\nTo deliver mutual benefits for the employee, customers, and shareholders\r\nTo raise individuals to become Professional IT Resources\r\n\r\nFor more complete information, please visit our website at idstar.co.id or our Instagram at https://www.instagram.com/idstar.id/\r\n\r\nWhy should IDstar?\r\n\r\nThe tagline that we highlight is \"Service with Quality\" where we want to give the best to both our talents and our customers. Make sure you join IDstar to get the right job and of course an extraordinary experience. We will equip you with various kinds of workshops to people development so that you are ready to become a generation of stars in the world of IT', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(14, 13, 'PT Takjub Teknologi Indonesia (Ajaib)', 'takjub', 'West Jakarta, DKI Jakarta, Indonesia', 271, 'https://www.ajaib.co.id/', 'takjub.png', 'it_software.png', '', 'Ajaib is an online investing platform in Indonesia, backed by Softbank (Grab, Tokopedia) and Y Combinator (Airbnb, Dropnbox). We\'re after a large market opportunity with $370B sitting in Indonesian savings accounts today uninvested. Registered and supervised by OJK.\r\n \r\nhttps://play.google.com/store/apps/details?id=ajaib.co.id\r\n \r\n\"10 of the Top Fintech Startups in Indonesia for 2019\": http://fintechnews.sg/30115/indonesia/top-indonesia-fintech-startups/\r\n \r\n\"Online investment startup Ajaib secures US$2.1M from SoftBank\": https://e27.co/online-investment-startup-ajaib-secures-us2-1m-from-softbank-20190109/\r\n\r\nWhy Join Us?\r\n\r\nOur vision is to become the dominant player for wealth management/ investing. We just graduated from Y Combinator and raised our venture round from top tier investors in Silicon Valley and the region. We are looking for top talent to join us.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(15, 4, 'Emtrade', 'emtrade', 'Sentra Niaga Puri Indah, Jl. Puri Indah RT.1/RW.2, Kembangan Sel., Kembangan', 0, 'https://www.emtrade.com/v3/', 'emtrade.png', 'it_software.png', '', 'Emtrade is an application that provides education, recommendations and consultation for traders & investors in Indonesian stocks.\r\nGoal-oriented, continuous and never ending improvement, help each others. \r\nAt Emtrade.id, we give options for the engineers to work on site or fully remote.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(16, 12, 'PT Majoo Teknologi Indonesia', 'majoo', 'Sequis Tower', 1, 'https://www.majoo.id/', 'majoo.png', 'it_software.png', '', 'Majoo adalah hasil karya anak bangsa yang tersebar di berbagai kota dengan tujuan sama, semangat berkarya dan bangga untuk membuat perubahan berdampak sosial yang luas. Kami memegang teguh kearifan lokal untuk menciptakan inovasi yang sesuai budaya sendiri dalam pesatnya adaptasi teknologi digital yang membangun Indonesia.\r\n\r\nBanyak bisnis ritel di Indonesia tidak menggunakan alat bantu pengelolaan penjualan karena harganya mahal dan sulit digunakan. Majoo memberikan harga yang sangat terjangkau, secara khusus bagi pengusaha mikro.\r\n\r\nMajoo ingin membuat bisnis menjadi mudah: investasi semakin rendah biaya, peningkatan pelayanan, pemantauan penjualan dan karyawan dapat dilakukan secara online. Pada akhirnya bisnis yang berkembang akan menciptakan lapangan pekerjaan dan peningkatan ekonomi secara luas. Bersama-sama, majoo ingin menjadi bagian tumbuhnya wirausaha sukses dan majunya ekonomi digital Indonesia.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(17, 3, 'PT Anabatic Digital Raya', 'anabatic', 'Graha Anabatic Jl. Scientia Boulevard Kav U2 Summarecon Serpong', 1, 'http://www.anabatic.com', 'anabatic.png', 'it_software.png', '', 'PT Anabatic Digital Raya provides Mission Critical Digital Solution (MCDS) services for banking industry. The Services include:\r\n- Channel Solution\r\n- Customer Experience and Fulfillment Solution\r\n- Operational / Transaction Management\r\n- Governance and Regulatory / Back Office\r\n- Process Integration Platform\r\n- Data Integration Platform\r\n- System Platform\r\nBesides providing system integrator service, Anabatic also develops in-house products reffered to as Own Software License (OSL).', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(18, 8, 'Mitramas Infosys Global', 'mitramas', 'Jalan Tebet Raya No.42, RT.3/RW.2, East Tebet, South Jakarta City, Jakarta, Indonesia', 1, 'http://mitrasolusi.group', 'mitramas.png', 'it_software.png', '', 'Founded in 2003, Mitramas Infosys Global (MIG) is a technology solutions and IT services provider based in Jakarta.  Specializes in the financial services industry, MIG operates up to 20 service points across major islands in Indonesia,  offering a wide variety of essential hardware and software solutions from Core Banking Systems, PC, ATM to business process applications and analytics serving both Government body, State-Owned Enterprise, as well as Private Owned companies.\r\n\r\nDriven by the spirit of delivering top-notch and high-efficiency services to clients, MIG has since evolved to provide IT on-site assistance, enabling companies achieving its digital aspiration goals via top selected talents in software developments, and data analytics spaces to complement its existing hardware and software solutions.  \r\n\r\nThis place offers vast opportunities for young talents to grow and to get exposures across extensive applications of technology in the real-world industries. To top it off, we also provide on-the-job learning opportunities prior to job allocation, allowing our talents to gain a competitive advantage as part of our commitments to serve our clients excellent services.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(19, 5, 'Itsavirus', 'itsavirus', 'Denpasar, Indonesia', 1, 'https://www.itsavirus.com/', 'itsavirus.png', 'it_software.png', '', 'We are Itsavirus, a software company that develops innovative smart city solutions and leverage over a decade of experience. With a relative small group of people, we work on great projects that have a positive impact all over the world. We embrace open source and like to share knowledge. In everything we do we aim to deliver the best result. We use a combination of Scrum and OKR to achieve operational excellence. Moreover, we aim to have a lot of fun while working as well. When we say we\'re the best to work with, we mean it. The only thing that is missing, is you.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(20, 16, 'Nomura Research Institute Indonesia', 'nri', 'Sahid Sudirman Center, Jakarta Pusat 10220, Indonesia', 805583, 'https://www.nri.co.id/', 'nri.png', 'it_software.png', '', 'NRI Indonesia was established in October 2015 as a base of NRI Group for providing IT service/consultancy in Indonesia.\r\n\r\nWe provides wide range of IT solution/consultancy as an integrated service to seek business success together with our clients in huge potential market of Indonesia.\r\n\r\nOur activities cover the following:\r\n- Planning, designing and implementing enterprise system\r\n- Designing/implementing loyalty program\r\n- Big data analytics\r\n- Managing and operating systems particularly in the area of retail and distribution, manufacturing, finance and service industries\r\n\r\nAccording to NRI’s basic philosophy, NRI Indonesia aims co-prosperity with our clients in the long term relationship, and wishes to contribute to economic growth with improvement of human life in Indonesia.', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(23, 42, 'Jobit', 'jobit', 'Surabaya', 812345678, 'a1rpl.xyz', '1625091389.png', '1625091413.PNG', 'Maju tak gentar', 'Jobit terpercaya', '2021-06-30 15:14:36', '2021-06-30 15:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(56, 34, 30, '2021-06-30 14:02:32', '2021-06-30 14:02:32'),
(57, 33, 33, '2021-06-30 14:43:27', NULL),
(58, 33, 33, '2021-06-30 14:43:49', NULL),
(59, 33, 33, '2021-06-30 14:43:49', NULL),
(64, 6, 41, '2021-06-30 15:12:45', '2021-06-30 15:12:45'),
(65, 10, 41, '2021-06-30 15:12:51', '2021-06-30 15:12:51'),
(81, 1, 30, '2021-06-30 17:55:57', '2021-06-30 17:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_date` date NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_min` int(11) DEFAULT NULL,
  `salary_max` int(11) DEFAULT NULL,
  `source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kualifikasi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `company_id`, `title`, `slug`, `roles`, `description`, `category_id`, `position`, `status`, `type`, `last_date`, `address`, `created_at`, `updated_at`, `image`, `salary_min`, `salary_max`, `source`, `kualifikasi`) VALUES
(1, 6, 12, 'UI UX Engineer', 'uiuxindodev', 'UI UX Engineer', 'We are looking for a talented UI UX Developer designer to join our team. You will turn interfaces into rich user experiences, working with our team as you model user behavior, create wireframes, design interface concepts & graphic layouts, and create prototypes.\r\n\r\nAlso do UX Researchers, always trying to find the answer to the twin questions \"Who are our users?\" and \"What do our users want?\"\r\n\r\nYou will be responsible for creating smooth user experiences for our desktop site, mobile site, and mobile apps while working closely with the front-end and mobile teams.\r\n\r\nMinimum Qualifications\r\nREQUIREMENTS:\r\n\r\nProven UI UX experience, UI / UX designs for complex or larger systems will be preferred.\r\nDemonstrable UI design skills with a strong portfolio.\r\nSolid experience in creating wireframes, storyboards, user flows, process flows and site maps.\r\nProficiency in Photoshop, Illustrator, or other visual design and wire-framing tools.\r\nProficiency in HTML, CSS, and JavaScript for rapid prototyping.\r\nExcellent visual design skills with sensitivity to user-system interaction\r\nAbility to present your designs and sell your solutions to various stakeholders.\r\nAbility to solve problems creatively and effectively.\r\nUp-to-date with the latest UI UX trends, techniques, and technologies', 1, 'UI UX Engineer', '0', 'Full Time', '2021-06-30', 'Kota Tangerang Selatan, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'dataon.png', NULL, NULL, NULL, NULL),
(2, 1, 13, 'ETL Developer', 'etldev128128', 'Design, Develop and Test ETL Mappings, Mapplets, Workflows, Worklets to support business requirements.\r\nPerform feasibility, impact analysis and suitable solutions based on the use cases.', 'Design, Develop and Test ETL Mappings, Mapplets, Workflows, Worklets to support business requirements.\r\nPerform feasibility, impact analysis and suitable solutions based on the use cases.\r\nEnsuring data management and governance to maintain the data integrity.\r\nDevelop data mappings to extract the data from XML/Database and loading to the source stating database tables.\r\nCreate shell scripts for ETL purpose.\r\nMinimum Qualifications\r\nBachelor degree in Computer Science, Information System or related field\r\nAt least 1 year of working experience in ETL Developer\r\nRequired skills: SQL/Database Oracle, ETL Tools (Power BI, Tableau)\r\nGood communication and fast learne\r\nExcellent problem-solving skills', 0, 'Product Promoter', '0', 'Full Time', '2021-08-30', 'South Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'idstar.png', NULL, NULL, NULL, NULL),
(3, 16, 20, 'UX Engineer', 'uxengineer19020912', 'Design, develop and build highly scalable, cross-platform, and performant web and mobile applications UI and interaction.', 'Design, develop and build highly scalable, cross-platform, and performant web and mobile applications UI and interaction.\r\nPerform issue analysis, root-cause analysis, and issue resolution\r\nCreate any required technical documentation\r\nMinimum Qualifications\r\nRequirements:\r\n\r\nStrong proficiency with HTML5, CSS3, Javascript and/ or Typescript\r\nOutstanding skills in web styling, react-native styling, and animation\r\nStrong aesthetic, understanding of user-friendly experience/interface, and high attention to details\r\nExtensive knowledge in Android and iOS development\r\nExperience in using Git\r\nPreferred:\r\n\r\nExperience in UI or Graphic Design\r\nHighly experienced in react-native spring or lottie\r\nExtensive knowledge in other programming languages like Java/Kotlin, Swift and C#\r\nExperience in a formal development methodology - Agile/ SCRUM, Iterate, Waterfall\r\nFamiliarity with Visual Studio Code as IDE', 1, 'UX Engineer', '1', 'Full Time', '2021-06-04', 'Jakarta Pusat, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'nri.png', 5000000, 16000000, 'https://www.kalibrr.com/c/nomura-research-institute/jobs/172753/ux-engineer', 'Requirements:\r\n\r\nStrong proficiency with HTML5, CSS3, Javascript and/ or Typescript\r\nOutstanding skills in web styling, react-native styling, and animation\r\nStrong aesthetic, understanding of user-friendly experience/interface, and high attention to details\r\nExtensive knowledge in Android and iOS development\r\nExperience in using Git'),
(4, 14, 14, 'Senior Backend Engineer (JAVA)', 'backend1298921', 'You will be responsible for developing cohesive codes with high proficiency and ensure a robust architecture to support growth.', 'Ajaib is looking for a senior backend engineer to join our growing team and mission to democratize access to investing for millennials in Indonesia.\r\n\r\nYou will be responsible for developing cohesive codes with high proficiency and ensure a robust architecture to support growth.\r\n\r\nRoles and Responsibilities:\r\n\r\nDesign, develop, test, and deploy elegant software solutions impacting hundred of thousands of investors\r\nDeliver high-performance low-latency APIs with complex requirements\r\nStabilize and optimize services under rapid growth demands\r\nBuild fault tolerant distributed systems with no negative impact towards customers or partners\r\nPartner and collaborate with product and business leaders to define priorities while providing solution guidance\r\nShare ideas or suggestions to actively contribute towards our startup engineering culture\r\nDeploy to cloud/on-premise environments and be available to give technical assistance\r\nMinimum Qualifications\r\nA deep passion for technology and software development\r\nMinimum 5 years of software development experience, preferably in distributed systems or event-driven architecture\r\nProficiency within one or more programming languages including C, Go, Java, or Python\r\nHave solid knowledge of Kafka, Redis, MySQL and Cassandra. Bonus for FIX (Financial Information eXchange) protocol\r\nKnowledgeable about Linux, Git and generally comfortable with using the command line\r\nBasic understanding on computer architecture concepts such as concurrency, memory management, networking\r\nSkilled practitioner of deployments onto cloud (AWS, Azure, etc) and on-premise environments\r\nAble to work individually with limited guidance, responsible and self-motivated\r\nBachelor’s or Master’s degree in Computer Science or equivalent experience\r\nStrong written and verbal communications skills', 0, 'Senior Backend Engineer', '1', 'Full Time', '2021-08-31', 'West Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'takjub.png', NULL, NULL, NULL, NULL),
(5, 9, 6, 'Senior Backend Developer', 'backenddeveloper812812809', 'Backend Developer', 'Design and develop highly scalable, reliable and fault-tolerant Application Program Interface (API)\r\nBuild high-quality reusable code\r\nDeveloping and evolving the business’s sites/software/applications using the latest software development infrastructure and methods\r\nConducts unit tests, code reviews, refactors the current source codes, assesses and improves site/software performance, and maintains design and code documentation.\r\nGathering knowledge and defining the industry best practices; gathers and introduces new and relevant technologies and information on factors such as, documentation practices, scalability, testing techniques, and refactoring.\r\nCollaborate with multidisciplinary team of Product Managers, Designers, Developers and DevOps to build high responsiveness and performance web and apps\r\nMinimum Qualifications\r\n1. 6+ years of experience for Restful and Backend system development (API)\r\n\r\n2. Required Skill : Ruby on Rails PHP, Framework Laravel\r\n\r\n3. Have a good understanding in :\r\n\r\nData modeling both RDBMS and NoSQL\r\nSearch engine-based development for Elasticsearch and Solr\r\nCloud infrastructure in AWS and GC\r\nPerks and Benefits\r\nMedical / Health Insurance Medical / Health Insurance\r\nRequired Skills\r\nRuby on Rails', 1, 'Senior Backend Developer', '1', 'Full Time', '2021-05-28', 'Central Jakarta City, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'sehatq.png', NULL, NULL, NULL, NULL),
(6, 8, 3, 'Senior Data Analyst', 'analyst429-2jjkl', 'Data Analyst', 'Analyse current and historical trends and give recommendation to relevant partners\r\nCreate visualization or monitoring of relevant metrics, both business unit level or management\r\nBridge data driven mindset among stakeholders\r\nMinimum Qualifications\r\nBachelor degree or above, education background preferably from Mathematics, Statistics and IT\r\nHave experience in simple statistics modelling or data analyst area for minimum 2 years\r\nHave knowledge and understanding of scripting logic (SQL or other data pulling language)\r\nHave knowledge and understanding of data processing tools (Rstudio, python, etc)\r\nHave knowledge of Google Analytics will be a plus point\r\nAble to perform basic statistical computation\r\nHave an excellent attention to detail\r\nHave an excellent logical comprehension', 1, 'Senior Data Analyst', '1', 'Full Time', '2021-01-20', 'West Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'lemonilo.png', NULL, NULL, NULL, NULL),
(7, 17, 4, 'Junior Developer', 'developer12802108jk', 'Junior Web / Mobile Developer', 'Gather and Analyzed User Requirements, Design and develop as well configure system\r\nDesign and Develop cross-platform mobile application including android and mobile web\r\nConnecting client apps to backend system through web services and APIs\r\nMinimum Qualifications\r\nBachelor degree from Computer Science or System Information or related\r\n1 year experience in programming (preferable in web and/or mobile). Fresh Graduates are most welcome to apply\r\nFamiliar with development of web as well mobile apps such as android\r\nStrong knowledge in web technologies such as HTML/CSS\r\nFamiliar with software development methodologies and testing best practice\r\nFamiliar with Object Oriented Programming and Web Services\r\nPassion to learn new technologies in particular with software\r\nFlexible, pro-active and enthusiastic team player with results oriented\r\nSelf-motivated and able to work independently\r\nKeen in technology particular in web and mobile with low platform code', 0, 'Junior Web/Mobile Developer', '0', 'Full Time', '2021-06-15', 'Kota Jakarta Barat, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'evotech.png', NULL, NULL, NULL, NULL),
(8, 3, 9, 'Java Developer', 'developerkwfpif099090', 'Java Developer', 'Understand and implement requirement of business users.\r\nDevelop and manage Java Web Application and supporting tools.\r\nDesign database if needed for development.\r\nCoordinate with project team to achieve project performance target.\r\nEnsure software run smoothly by user.\r\nMinimum Qualifications\r\nHave at least 2 years in Java Programming experience.\r\nGood understanding of MySQL, Hibernate and JBA, XML\r\nGood understanding of Spring framework, Spring Boot, Rest API\r\nStrong analytical and planning skills;\r\nGood communication and presentation skills;\r\nExcellent problem-solving skills;', 1, 'Java Developer', '0', 'Full Time', '2021-06-22', 'Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'pgi.png', NULL, NULL, NULL, NULL),
(9, 3, 11, 'IT Architect Security', 'security12noiwfdonidon', 'IT Architect Security', 'We\'re looking for IT Architect Security Specialist, with main responsibilities are planning, researching & designing company\'s IT security architectures. Recommend us with latest technology, enhancements, reinforcements, and preparing countermeasures that protect our system.\r\n\r\nJob Descriptions for IT Architect Security as follows:\r\n\r\nAnalyzing, planning, researching, and designing company IT Security architectures and giving us the best recommendations for security\r\nDoing Risk Assessments & Implementing recommendations\r\nEnhance and Reinforce IT security\r\nHaving a great sense of IT Security\r\nReview and update IT Policy\r\nManaging and tuning forcepoint data leakage protection\r\nManage Security Management Report\r\nMinimum Qualifications\r\nCandidate must possess at least a Bachelor\'s Degree in Computer Science/Information Technology or equivalent\r\nAt least 3 Year(s) of working experience on IT Architect Security fields, both software & hardware\r\nUp-to-date about the latest IT security systems\r\nFamiliar with DAST, SAST, standard security systems & frameworks\r\nDeep understanding about security architect & strong technical background', 1, 'IT Architect Security', '0', 'Full Time', '2021-05-31', 'South Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'astra.png', NULL, NULL, NULL, NULL),
(10, 13, 9, '.Net Developer', 'developer128w9w900n', '.Net Developer', 'Develop and code custom web based applications using .NET Framework and SQL server on the backend\r\nDemonstrates flexible and efficient time management\r\nAble to work under pre-agreed timeline and maintaining high-quality standards\r\nContinually maintains knowledge of best practices in Web Development\r\nMinimum Qualifications\r\nDiploma or Bachelor Degree in Computer Science /Information Technology or related major from reputable university\r\n1+ years development experience using C# .Net\r\nHaving experience and knowledge in the following technologies: SQL Server, MySQL, .Net Core, MVC,\r\nDevelopment experience using agile development methodology and process', 1, '.Net Developer', '0', 'Full Time', '2021-07-17', 'Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'pgi.png', NULL, NULL, NULL, NULL),
(11, 3, 10, 'Full Stack Developer', 'developer9709319013', 'Melakukan pengembangan sistem front-end dan back-end sebuah website (menciptakan, menambah fitur, memperbaiki, dsb).', 'Minimum Qualifications\r\nUsia < 35thn\r\nMinimal D3 Informatika\r\nMemiliki pengalaman minimal 3 tahun bekerja di bidang Programming / Developer\r\nPengalaman minimal 2 tahun di PHP, Java, jquery, Code Igniter (CI)\r\nMenguasai pemrograman android/mobile merupakan nilai tambah\r\nMemiliki kemampuan analisa, logika dan pemecahan masalah yang kuat\r\nBisa bekerja dalam tim, Fast learner, fleksibel, dan mudah mempelajari hal baru\r\nPenempatan Surabaya Office', 1, 'Full Stack Developer', '1', 'Full Time', '2021-07-20', 'Surabaya, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'sevima.png', NULL, NULL, NULL, NULL),
(12, 2, 10, 'Product Manager', 'productmanager0812081208', 'Bertanggung jawab terhadap suatu projek, diantaranya mulai dari perencanaan, manajemen tim / sumber daya, hingga membuat laporan & evaluasi', 'Culpa praesentium eum beatae hic ratione aut. Perspiciatis quae reiciendis veniam omnis sequi. Debitis in saepe cupiditate sed laboriosam dolor tempora. Ut dolorum qui labore aut commodi.', 0, 'Product Manager', '0', 'Full Time', '2021-11-18', 'Surabaya, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'sevima.png', NULL, NULL, NULL, NULL),
(13, 12, 6, 'Front-End Developer', 'frontendengineerwebdeveloper219-129-12', 'Front-End Engineer / Web Developer', 'Use a variety of programming languages in order to create user-friendly web pages\r\nMaintain and improve company website\r\nCollaborate with other team members and stakeholders\r\nOptimize our web applications for maximum speed\r\nMinimum Qualifications\r\nMinimum 3 years of experience in Web Development Area as Front End Engineer\r\nMinimum 3 years of experience with ReactJS (Redux)\r\nStrong proficiency in Javascript, HTML, CSS\r\nExperience with data structure libraries\r\nExperience with CI/CD, Refactoring, Unit Testing\r\nExperience with Test Driven Development\r\nHaving good understanding on SEO\r\nExperience with code versioning tools, such as Git\r\nCollaborate with other team members and stakeholders', 1, 'Front-End Engineer / Web Developer', '1', 'Full Time', '2021-05-30', 'Central Jakarta City, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'sehatq.png', NULL, NULL, NULL, NULL),
(14, 13, 8, 'System Analyst', 'analyst120892109129', 'System Analyst', 'Lead and guide the team to provide support for applications used by customers.\r\nCoordinate with clients through periodic or special meetings.\r\nCheck the program improvements that have been done by the team and ensure the solutions provided are right.\r\nMinimum Qualifications\r\nBachelor of Information Systems, Informatics Engineering or Computerized Accounting\r\nHaving experience using Microsoft .Net framework\r\nAble to work with teams and individuals\r\nStrong analytical and planning skills\r\nGood communication and presentation skills\r\nExcellent problem-solving skills', 0, 'System Analyst', '1', 'Full Time', '2021-06-20', 'Kota Jakarta Barat, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'adins.png', NULL, NULL, NULL, NULL),
(15, 7, 9, 'IT Business Analyst', 'analyst1298981289', 'IT Business Analyst', 'Analysis of a customer’s business needs\r\nCommunication with stakeholders, developers, QA and end-users if necessary\r\nMake FSD\r\nSoftware requirements analysis\r\nPrepare project documentation\r\nProblem domain analysis and improvement suggestions\r\nRequirements transmission between the developers and the users.\r\nGather and analyst detail requirement from user / project\r\nMake flow diagram / design and test scenario needed for enhancement\r\nExplain detail to developer\r\nTesting and UAT\r\nDocumentation for requirement and manual guide\r\nMinimum Qualifications\r\nWorking experience at least 1-5 years as Business Analyst\r\nHave a Diploma or Bachelor’s Degree majoring in Computer Science or information technology\r\nHave project experience in banking / insurance / financial institution is preferable\r\nStrong writing and communication skill\r\nKnowing about business process and confidence to have discussion with user\r\nGood working knowledge of system development life cycle and testing methodologies', 0, 'IT Business Analyst', '1', 'Full Time', '2021-07-23', 'Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'pgi.png', NULL, NULL, NULL, NULL),
(16, 9, 19, 'Senior Software Quality Assurance (QA) Engineer', 'assuranceengineer0183091239012', 'Conduct preparation for SIT and UAT (prepare test plan/strategy, test scenario including negative and positive flow, test data, test environment, sign off, closure and related documents)', 'Your Responsibilities\r\n\r\nConduct preparation for SIT and UAT (prepare test plan/strategy, test scenario including negative and positive flow, test data, test environment, sign off, closure and related documents)\r\nTesting various products such as Web Applications, Mobile Apps and environments\r\nCommunicate with stakeholders in English and Indonesian language\r\nStrong analytical skills and works structured on testing\r\nMinimum Qualifications\r\nAbout Itsavirus\r\n\r\nItsavirus is a software company with offices in Bali, Singapore and Amsterdam. With a relative small group of people, we work on great projects that have a positive impact all over the world. Our client base is very diverse, from the world\'s largest companies, fast growing medium sized companies to smart and well funded start-ups.\r\n\r\nDo you want to work with innovative technologies for clients all over the world? Are you looking to become part of a strong team of professionals? This is the job for you.\r\n\r\nDownload our company presentation\r\n\r\nCheck our Instagram feed for a good impression of our company\r\n\r\nWe are looking for a Software Quality Assurance (SQA) engineer\r\n\r\nWe are expanding and looking for a Quality Assurance (QA) engineer. Our ideal candidate will be responsible for developing and conducting tests before and after product launches to ensure software runs smoothly and meets client needs. You help your team from collaborating on writing the userstories to running tests before a feature is deployed in production.\r\n\r\nYou should have at least the following credentials:\r\n\r\nAt least 1-2 Year(s) of working experience in the related field is required for this position.\r\nRequired Skill(s): Testing, exploratory testing, Regression Testing, Software Development\r\nUnderstand how to work in Jira\r\nYou can design and implement tests, debug and define corrective actions.\r\nYou can develop and apply testing processes for new and existing products to meet client needs\r\nCollaborate with the Product Development team to ensure consistent project execution\r\nMonitor debugging process results\r\nCreate detailed, comprehensive and well-structured test plans and test cases\r\nStay up-to-date with new testing tools and test strategies\r\nPerks of working at Itsavirus\r\n\r\nYou will work with new technologies and concepts\r\nYou will become part of a highly talented team\r\nYou will earn a competitive salary\r\nNational Health Insurance BPJS\r\nWe work from a great villa, 5 in the middle of the ricefields and 5 minutes from the beach\r\nFree English classes, yoga at the office, use the company surfboards, or swim in one of our company pools\r\nCompany lunch is free and freshly cooked by our in house chef\r\nIt doesn\'t matter if you\'re new. Your ideas and opinions are always valued.\r\nHousing allowance is provided to cover living expenses.\r\nEducational budget for books, courses, seminars, etc. is provided for self-development.\r\nSalary is based on your skills and experience that will be reviewed based on a yearly basis with a salary scale model.\r\n(Semi) Flexible work hours\r\nFree lunch, fruits, and healthy drinks daily at work\r\nReligious Holiday Allowance (THR)\r\n12 days public holiday and 12 days annual leave per year\r\nWork in Bali (moving allowance is available)', 1, 'Software Quality Assurance Engineer', '1', 'Full Time', '2021-07-12', 'Denpasar, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'itsavirus.png', NULL, NULL, NULL, NULL),
(17, 16, 4, 'Technical Lead', 'lead12-09-210-0', 'Technical Lead', 'Gather requirements, Analysis, Design, Develop and Configure system\r\nDesigning and Developing cross-platform mobile application\r\nPlan and Design database model (multi-dimensional database design)\r\nDesign and intuitive dashboard layout\r\nEstablish plan and meet deadlines\r\nConnecting client apps to backend systems through web services and APIs\r\nSupport project owners/users throughout implementation\r\nTransfer knowledge and documentation to customers as needed\r\nDelegate tasks to each team members as well monitor daily tasks toward needed deadline\r\nMinimum Qualifications\r\nBachelor Degree with majoring in Information Technology or Computer Science or related\r\n4 (four) years/or more experience at least three full project cycles (from analysis, design, development, test and support) related to database, web and mobile\r\nAbility to define problems, collect data, establish fact, draw well-supported conclusion\r\nAbility to solve problem - creatively and effectively\r\nSolid experience in designs and codings as well familiar with ERD/or Domain Class Diagram\r\nStrong knowledge in T-SQL,SQL Server and Oracle database\r\nStrong knowledge and understanding of Relational data\r\nStrong in functional analytic and logic\r\nStrong knowledge in web technologies such as HTML/CSS\r\nFamiliar with software development methodologies and testing\r\nPro-active, self motivated and capable to work independent as well in a team\r\nCapable to be multi-tasking on projects and Results-oriented\r\nGood time management skills and capable to manage/mentor team\r\nExcellent communication skills in verbal as well written\r\nKeen and flexible to learn new technology', 1, 'Technical Lead', '0', 'Full Time', '2021-06-30', 'Kota Jakarta Barat, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'evotech.png', NULL, NULL, NULL, NULL),
(18, 2, 4, 'Junior Data Science', 'datascienece12080129i', 'Junior Data Science', 'Study and transform data science prototypes\r\nDesign machine learning systems\r\nResearch and implement appropriated Machine Learning algorithms and tools\r\nDevelop machine learning applications according to needed requirements\r\nSelect appropriate datasets and data representation methods\r\nConduct Machine Learning tests and experiments\r\nPerform statistical analysis and fine tuning using test results\r\nTrain and retrain systems if necessary\r\nUpdate existing Machine Learning libraries and frameworks as well development needed in this area\r\nMinimum Qualifications\r\nMinimal a Bachelor degree in Computer Science/or Mathematics / or Statistics or similar fields related\r\nProven experience as a Machine Learning Engineer (preferable) and Fresh Graduates are MOST WELCOME to apply\r\nProficient in data structures, data modeling and software architecture\r\nStrong knowledge of math, probability, statistics and algorithms\r\nAbility to write robust code in Python, Java and R\r\nCapable to wok independent as well in a team\r\nOutstanding Analytical and problem solving skills\r\nStrong communication skills\r\nPro-active, Initiative and capable to be multi tasking\r\nKeen and well updated on new technology related to data science or machine learning', 0, 'Junior Data Science', '1', 'Full Time', '2021-06-30', 'Kota Jakarta Barat, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'evotech.png', NULL, NULL, NULL, NULL),
(19, 17, 18, 'Software Engineer - Backend', 'backend120919029021', 'Write code, perform testing and debugging of applications using current programming languages and technologies', 'Here in Mitramas Infosys Global, you will be exposed to work on software across a diverse platform of technologies as well as a variety of industries within our portfolios. We are looking for talents with high tenacity in solving problems, exceptional passion for technologies, and a great willingness to learn and adapt to ever-changing environments to join our team. You are expected to be able to:\r\n\r\nWrite code, perform testing and debugging of applications using current programming languages and technologies\r\nComplete documentation and procedures for testing and maintenance Implement unit tests and functional tests for their tasks\r\nConvert given high-level software design to low-level software design\r\nMinimum Qualifications\r\nExperience using Java and web technologies\r\nStrong in object-oriented programming concept\r\nDeep knowledge of software development life cycle\r\nHaving professional attitudes & desire to pursue top code quality\r\nAbility to understand business requirements and translate them into technical', 0, 'Backend Software Engineer', '1', 'Full Time', '2021-08-30', 'South Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'mitramas.png', NULL, NULL, NULL, NULL),
(20, 5, 12, 'Senior .NET Backend Developer', 'backenddeveloper9812hoqduohwouh', 'To develop server-side logic and backend interface for Web App using .NET Core Framework\r\nTo integrate backend API with frontend user interface web component.', 'To develop server-side logic and backend interface for Web App using .NET Core Framework\r\nTo integrate backend API with frontend user interface web component.\r\nMinimum Qualifications\r\nMinimum 5 years of experience\r\nExpert with C#, using .NET core framework\r\nExpert with building robust, fast, secure, testable and maintainable web applications and RESTful or SOAP-based web services\r\nVery good experience with application security threat modelling on application and infrastructure level\r\nExperience with relational database management systems, data modelling and data structures. Preferably SQL Server and Oracle RDBMS.\r\nExperience with database tuning as well as query tuning\r\nExperience with integration of systems using different technologies\r\nData caching strategies and their implementation\r\nExperience with building the containers (eg. Docker) is an advantage\r\nCreating self-contained, reusable and testable modules and components\r\nFluent communication skills in English\r\nRequired Skills\r\nAngular.js\r\nASP.NET\r\nC#', 1, 'Senior Backend Developer', '0', 'Full Time', '2021-05-30', 'South Jakarta, Indonesia', '2021-05-16 22:31:10', '2021-05-16 22:31:10', 'dataon.png', NULL, NULL, NULL, NULL),
(36, 42, 23, 'Jobit Admin', 'jobit-admin', 'Jobit Admin', 'Jobit Admin', 4, 'DB Admin', 'live', 'Part Time', '2024-03-12', 'Surabaya', '2021-06-30 15:22:55', '2021-06-30 15:22:55', NULL, 5000000, 10000000, 'a1rpl.xyz', 'DB master');

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_user`
--

INSERT INTO `job_user` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 21, '2021-05-17 06:25:15', '2021-05-17 06:25:15'),
(2, 1, 21, '2021-05-17 06:25:18', '2021-05-17 06:25:18'),
(3, 1, 21, '2021-05-17 06:25:20', '2021-05-17 06:25:20'),
(4, 1, 21, '2021-05-17 06:33:12', '2021-05-17 06:33:12'),
(5, 1, 21, '2021-05-17 06:33:17', '2021-05-17 06:33:17'),
(6, 1, 21, '2021-05-17 06:33:36', '2021-05-17 06:33:36'),
(7, 1, 21, '2021-05-17 06:35:39', '2021-05-17 06:35:39'),
(8, 1, 21, '2021-05-17 06:36:41', '2021-05-17 06:36:41'),
(9, 1, 21, '2021-05-17 06:37:03', '2021-05-17 06:37:03'),
(10, 1, 21, '2021-05-17 06:37:39', '2021-05-17 06:37:39'),
(11, 9, 21, '2021-05-17 07:27:06', '2021-05-17 07:27:06'),
(12, 21, 21, '2021-05-18 00:11:27', '2021-05-18 00:11:27'),
(13, 1, 30, '2021-05-18 15:56:08', '2021-05-18 15:56:08'),
(14, 6, 30, '2021-05-18 18:30:18', '2021-05-18 18:30:18'),
(15, 21, 30, '2021-05-24 08:22:34', '2021-05-24 08:22:34'),
(16, 2, 30, '2021-05-26 14:46:44', '2021-05-26 14:46:44'),
(17, 4, 30, '2021-05-26 15:00:13', '2021-05-26 15:00:13'),
(18, 3, 30, '2021-05-26 21:29:17', '2021-05-26 21:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_05_09_063031_create_jobs_table', 1),
(4, '2021_05_09_063115_create_companies_table', 1),
(5, '2021_05_09_064333_create_profiles_table', 1),
(6, '2021_05_09_064406_create_categories_table', 1),
(7, '2021_05_09_064636_create_job_user_table', 1),
(8, '2021_05_09_064832_create_favourites_table', 1),
(9, '2021_05_15_002856_add_phone_to_profiles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`, `phone_number`, `gender`, `dob`, `experience`, `bio`, `cover_letter`, `resume`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 21, 'Singaraaja', '081238312025', 'male', '2021-05-04', 'FE 10 tahun FE 10 tahun FE 10 tahun FE 10 tahun FE 10 tahun', 'Unordinary Unordinary UnordinaryUnordinary Unordinary', '', '', '', '2021-05-16 22:33:00', '2021-05-18 00:38:48'),
(2, 23, '', NULL, 'male', '2001-10-16', '', '', '', '', '', '2021-05-18 06:53:33', '2021-05-18 06:53:33'),
(3, 24, '', NULL, 'male', '2021-05-06', '', '', '', '', '', '2021-05-18 07:13:26', '2021-05-18 07:13:26'),
(4, 25, '', NULL, 'male', '2021-04-29', '', '', '', '', '', '2021-05-18 07:15:52', '2021-05-18 07:15:52'),
(5, 26, '', NULL, 'male', '2021-04-28', '', '', '', '', '', '2021-05-18 07:19:59', '2021-05-18 07:19:59'),
(6, 27, '', NULL, 'male', '2021-04-30', '', '', '', '', '', '2021-05-18 07:26:13', '2021-05-18 07:26:13'),
(7, 28, '', NULL, 'male', '2021-04-28', '', '', '', '', '', '2021-05-18 07:29:37', '2021-05-18 07:29:37'),
(8, 29, '', NULL, 'male', '2021-04-29', '', '', '', '', '', '2021-05-18 07:32:36', '2021-05-18 07:32:36'),
(9, 30, 'PENS', '0813315151', 'male', '2021-05-20', 'Well duh! If you’ve completed an internship (no matter if it it was paid or unpaid) this counts as previous employment history and should definitely be included here. Internships are often one of the main things employers look for in a CV – they show you’ve had significant experience within a company (hopefully related to the industry you’re wanting to get in to), and solid reference to go with it.\r\n\r\nRemember to talk about specific projects you worked on and the results you helped achieve. Show how you made a significant contribution to the company, even if you were only there a short while, and how you were able to adapt yourself to the team and their business needs.', 'pqihbwifhyqp38r803191-012-210-210-201012', '', '', '1624940693.png', '2021-05-18 15:02:55', '2021-06-28 21:24:53'),
(10, 31, '', NULL, 'male', '2000-02-09', '', '', '', '', '', '2021-05-26 20:30:31', '2021-05-26 20:30:31'),
(11, 32, '', NULL, 'female', '1992-09-12', '', '', '', '', '', '2021-05-26 21:14:40', '2021-05-26 21:14:40'),
(12, 33, '', NULL, 'female', '1992-09-12', '', '', '', '', '', '2021-05-26 21:15:53', '2021-05-26 21:15:53'),
(13, 34, '', NULL, 'female', '1999-01-12', '', '', '', '', '', '2021-05-26 21:44:07', '2021-05-26 21:44:07'),
(14, 35, '', NULL, 'female', '1999-12-15', '', '', '', '', '', '2021-05-26 22:29:53', '2021-05-26 22:29:53'),
(15, 36, '', NULL, 'female', '1999-12-12', '', '', '', '', '', '2021-05-26 22:33:55', '2021-05-26 22:33:55'),
(16, 37, '', NULL, 'male', '2021-06-17', '', '', '', '', '', '2021-06-14 12:03:42', '2021-06-14 12:03:42'),
(17, 38, '', NULL, 'female', '1999-06-05', '', '', '', '', '', '2021-06-28 20:58:11', '2021-06-28 20:58:11'),
(18, 39, '', NULL, 'male', '1999-02-19', '', '', '', '', '', '2021-06-28 21:13:16', '2021-06-28 21:13:16'),
(19, 41, 'Surabaya', '081334161664', 'male', '2001-09-12', 'Fresh graduate, hackathon', 'Ingin bekerja di software house', 'public/files/0w63gdIBTWrnrnIIuFSsLOjjpTby80TWnSG0tYy4.pdf', 'public/files/nc8zpvqhBvTCGEJFigywDEmCCFRfijakT44fvRcv.pdf', '1625090969.PNG', '2021-06-30 15:06:29', '2021-06-30 15:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(0, 'Admin', 'employer', 'tzack926@gmail.com', '2021-05-18 07:49:54', '$2y$10$kZs.QZHzcV/5ik9spuaFgOUWxWP9YwNyrOwlau1KxOLWCKBJ/uO36', NULL, '2021-05-16 22:33:25', '2021-05-18 07:49:54'),
(1, 'Mr. Charles Witting V', 'seeker', 'scot.jast@example.org', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uQiy6Qaa6s', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(2, 'Dr. Valentina D\'Amore', 'seeker', 'kemmerich@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8R7hV0h59K', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(3, 'Izabella Ziemann III', 'seeker', 'kkeeling@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N4iqRX4h4n', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(4, 'Retha Labadie DVM', 'seeker', 'lucas.ledner@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gQnV1tTEAS', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(5, 'Prof. Freda Grady', 'seeker', 'kennedi.considine@example.com', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'siAFjrKVsu', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(6, 'Randy Crooks', 'seeker', 'zschmidt@example.org', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'alIoiQxU3i', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(7, 'Mrs. Vena Barrows Sr.', 'seeker', 'molly.schroeder@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I5SGdKOxeJ', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(8, 'Mrs. Lisette Morar PhD', 'seeker', 'wweimann@example.com', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XMEDZppwPd', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(9, 'Daisy Bergstrom', 'seeker', 'krystina.moen@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hfcs0kKRAj', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(10, 'Elinor Wunsch IV', 'seeker', 'hettinger.manley@example.org', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SpRj5HcmNR', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(11, 'Prof. Emmy Heidenreich PhD', 'seeker', 'hettie90@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ABtOGVTUzd', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(12, 'Destiny Gusikowski', 'seeker', 'alfred90@example.org', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm8v8uY6eQv', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(13, 'Ulices Heidenreich', 'seeker', 'melvin.torphy@example.com', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dJluiQtKAo', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(14, 'Turner Marvin', 'seeker', 'milan.koch@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FIqbJcANTi', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(15, 'Juvenal Prosacco DDS', 'seeker', 'ymclaughlin@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FeeYUkyJLX', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(16, 'Lafayette Herzog II', 'seeker', 'ottilie10@example.com', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zIazl6sEkx', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(17, 'Jammie Thompson', 'seeker', 'cletus.renner@example.net', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WpGgn9yyyx', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(18, 'Mr. Marcelo Funk I', 'seeker', 'kris.joelle@example.org', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HV8cbsMCIn', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(19, 'Mr. Cloyd Bins', 'seeker', 'dolly.reichel@example.com', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BA8kjSa0py', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(20, 'Dr. Hailee Kutch', 'seeker', 'kira65@example.com', '2021-05-16 22:31:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'flcz9xTYmt', '2021-05-16 22:31:10', '2021-05-16 22:31:10'),
(21, 'tara', 'seeker', 'tara@gmail.com', NULL, '$2y$10$BBYckUPSCzHN06e965QWQuRAhiS6IslbK5C2I7RlfPbVjXODURonm', NULL, '2021-05-16 22:33:00', '2021-05-16 22:33:00'),
(23, 'Raka', 'seeker', 'sadiantara86@gmail.com', '2021-05-18 06:54:47', '$2y$10$1lwlTU6.TDgcGzL4Et2gxOgpOZRzo3dsRSFpMadElfK/7Ns4JZU9G', NULL, '2021-05-18 06:53:33', '2021-05-18 06:54:47'),
(30, 'D3 IT A', 'seeker', 'd3ita2019@gmail.com', '2021-05-18 15:03:19', '$2y$10$iX8EHgBgtDAzYn1nocgif.1DYDtVwlXl7zdCe7JToFixkO/jFSAaK', '4Flm6PRHKBExu7J0KYpAAz7c3y7hFp5FhogAGLBJjrgaVf7fTRIQRVj4HHZb', '2021-05-18 15:02:55', '2021-05-18 15:03:19'),
(31, 'Pavilion Gaming', 'seeker', 'testuser123@gmail.com', '2021-05-26 20:30:49', '$2y$10$LFX4bKkVipbtBSutZv.LqOQ.x07XFnkO8Qx/DN9Riw962Lmd9BNNC', NULL, '2021-05-26 20:30:31', '2021-05-26 20:30:49'),
(32, 'AdminModel', 'seeker', 'demo@xaaa.com', NULL, '$2y$10$eljboFH5RbvMdcHvkTlp.eipVSNYsFJe40z3WaIBSy6mb8L9YgzbG', NULL, '2021-05-26 21:14:40', '2021-05-26 21:14:40'),
(33, 'AdminModel2', 'seeker', 'demo@lalla.com', '2021-05-26 21:16:03', '$2y$10$klJ2sHUuUhe6hGltPutaeOxPpK3ZfAo41Dq/Tc/F7bQmGzpWUZF8a', NULL, '2021-05-26 21:15:53', '2021-05-26 21:16:03'),
(35, 'Company', 'seeker', 'cmp888181@sddd.com', NULL, '$2y$10$2e7SgMpvrwPvwKG0nl3Kz.a5zgwywiU2k6h4ED2WASI0QCbm82fQ6', NULL, '2021-05-26 22:29:53', '2021-05-26 22:29:53'),
(41, 'Test1', 'seeker', 'test1@gmail.com', NULL, '$2y$10$qwvoXkLDLGcqEaCG81vkiOi4TdPhqpVHwVZ2QIknFPcIbLtdEAvIK', NULL, '2021-06-30 15:06:29', '2021-06-30 15:06:29'),
(42, '', 'employer', 'jobit@gmail.id', NULL, '$2y$10$9aKDtHtc0N9hbjf6Pwhps.J1jvvYfS14MNI6iuPNemL1DN9r4NNI6', NULL, '2021-06-30 15:14:36', '2021-06-30 15:14:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
