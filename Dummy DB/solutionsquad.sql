-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 29, 2017 at 01:30 PM
-- Server version: 5.6.36
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solutionsquad`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `toptext` longtext,
  `img` varchar(500) DEFAULT NULL,
  `bottomtext` longtext,
  `disc` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `toptext`, `img`, `bottomtext`, `disc`) VALUES
(1, 'SolutionSquads provides best and commendable industry leading technical support to both household people and business clients. All our technicians are holding big professional degrees with high education and great experienced, Collectively, our team is able to handle a very wide array of tech issues . Our mission is to gain customers as much as possible by providing best possible services at best available rates in the competitive market and to win customers trust and confidence in due course. Our vision is as clear as crystal as we look forward to see our company in the best five companies of the world in coming few years. We wish- our client to call our name on priority bases when it comes to solving any technical problem we wish to help every person who need technical support in every possible way.', 'img1.png', 'Our goal is to provide you an instant and efficient solutions to all of your technology problems plus one time resolution to all the technical problem no matter what your technology needs are, we can provide you with a fast and friendly answer. We?ve worked with thousands of happy customers over the years and even include a 100% money back guarantee for all of our home support plans. With Tech to Us, you?ll never have to worry about diagnostic fees, labor fees, additional fees or hidden fees of any kind. We charge a flat monthly or annual rate so that you?re never left wondering.', 'SolutionSquads is an independent service provider that provides services at affordable rates. We are third part independent service provider for all kind of Computer ( Microsoft windows & Apple Computer) and Printer ,Routers, Antivirus and Ipad and Iphone Support . We do not claim that we represent any particular brand in any way, all branding is purely for demonstrative purposes only and does and do not signify any association with any brands or any organization.');

-- --------------------------------------------------------

--
-- Table structure for table `auto_gen_id`
--

CREATE TABLE `auto_gen_id` (
  `form_name` varchar(100) NOT NULL DEFAULT '',
  `prefix_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto_gen_id`
--

INSERT INTO `auto_gen_id` (`form_name`, `prefix_id`) VALUES
('Admin', 'Admin-00001'),
('User', 'User-00001'),
('Enquiry', 'Enquiry-00001'),
('Transaction', 'TXNSID-0000');

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE `homepage` (
  `id` int(11) NOT NULL,
  `imgpath` varchar(300) DEFAULT NULL,
  `msg` longtext,
  `test` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`id`, `imgpath`, `msg`, `test`) VALUES
(1, 'ima.jpg', 'SolutionSquads provides best and commendable industry leading technical support to both household people and business clients. All our technicians are holding big professional degrees with high education and great experienced, Collectively, our team is able to handle a very wide array of tech issues . <Br>Our mission is to gain customers as much as possible by providing best possible services at best available rates in the competitive market and to win customers trust and confidence in due course. <Br>Our vision is as clear as crystal as we look forward to see our company in the best five companies of the world in coming few years. We wish our client to call our name on priority bases when it comes to solving any technical problem we wish to help every person who need technical support in every possible way.  ', 'SolutionSquads is an independent service provider that provides services at affordable rates. We are third part independent service provider for all kind of Computer ( Microsoft windows & Apple Computer) and Printer ,Routers, Antivirus and Ipad and Iphone Support . We do not claim that we represent any particular brand in any way, all branding is purely for demonstrative purposes only and does and do not signify any association with any brands or any organization.');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `pid` int(11) DEFAULT NULL,
  `pname` varchar(500) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `detail` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`pid`, `pname`, `img`, `detail`) VALUES
(1, 'Basic', 'plan.jpg', 'Limitless Small Tasks for a Single Site <br>24 Hour Email Support <br>24 Hour Response Time<br> One Task Job Queue<br><br><br><br><br><br><h2> $199<h2>'),
(2, 'Plus', 'plan.jpg', 'Limitless Small Tasks for a Single Site <br>24 Hour Email Support <br>Proactive Site Upgrades <br>Secure Offsite Backups <br>Monthly Security Scan <br>12 Hour Response Time <br>Quality Checked Completion <br>One Task Job Queue<br><h2> $299  <h2>'),
(3, 'Premium', 'plan.jpg', 'Limitless Small Tasks for a Single Site <br>24 Hour Email Support <br>Proactive Site Upgrades <br>Secure Offsite Backups <br>Monthly Security Scan <br>12 Hour Response Time <br>Quality Checked Completion <br>Three Task Job Queue<br><h2> $399 <h2>'),
(4, 'Premium Plus', 'plan.jpg', 'Limitless Small Tasks for a Single Site <br>24 Hour Email Support <br>Proactive Site Upgrades <br>Secure Offsite Backups <br>Monthly Security Scan <br>12 Hour Response Time <br>Quality Checked Completion <br>Unlimited Task Job Queue<br><h2> $799 <h2>');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `keyword` varchar(300) DEFAULT NULL,
  `des` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `pid`, `title`, `keyword`, `des`) VALUES
(1, 4, 'Virus and Malware Removal ', 'Virus', 'Virus'),
(2, 4, 'Virus and Malware Removal ', 'Malware', 'Malware');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `sid` int(11) NOT NULL,
  `scat` varchar(500) DEFAULT NULL,
  `scontent` mediumtext,
  `imgpath` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`sid`, `scat`, `scontent`, `imgpath`) VALUES
(4, 'Virus and Malware Removal ', '<h3>Virus and Malware Removal Technical Support</h3>\r\n\r\n<Div>Computer viruses and malware are becoming far more widespread than ever before. Regrettably, your firewall or computer security software may not defend you from every possible threat. SolutionSquads is highly qualified in virus and malware removal and are always ready to help clean up your computer of superfluous software, restoring it to its original working stipulation so that you can get on with your life.</div>\r\n<H3>Types of Computer Viruses</h3>\r\n<Div>Viruses come in many forms. Some are purely irritating, and some are of relentless malicious intent, meant to deprive you of your personal information, passwords, identity, and finances. If your computer has been affected by any of these probable threats, you need to address the issue before it gets out of hand and causes too much harm.\r\n<Br>Malicious software, Trojan horses, viruses, adware, and spyware can enter your local network through many gateways, including:<br></div>\r\n<Div>Unintentionally downloading from an apparently safe e-mail or site\r\n<br>\r\nAs an add-on to an installed software update\r\n<br>\r\nVisiting sites that are only meant to lift your personal information or data\r\nSome tips to steer clear of malware and viruses include:\r\n<br>\r\nOnly download software and updates from sites you trust\r\n<br>\r\nDo not click on links in emails that look unusual or doubtful, even if they are coming from ‘friends’. Your friend’s computer could have been compromised!\r\n<br>\r\nAlways read the terms and conditions before downloading new software\r\n<br>\r\nIf an email looks doubtful, even if you think it is coming from a trusted source, probe fully and completely before responding\r\n<br>\r\nCheck snopes.com often for an updated list of frequent computer virus scams\r\n<br>\r\nLimit the number of users who can access your computer\r\n<br>\r\nPassword-protect all downloads to stop unwanted software installations\r\n<br>\r\nBe cautious of sites offering free stuff in exchange for your personal information\r\n<br>\r\nMake sure that when purchasing merchandise from the internet that you are on a secure link (check the URL address at the top of your browser window: it should start with ‘https’)\r\nHere are a few symptoms that might help you conclude if your computer is infected by a virus:\r\n<br>\r\nPages you navigate to in your browser will forward to other pages (adware)\r\n<br>\r\nNo matter what you do, your computer, mouse or keyboard will not respond\r\n<br>\r\nCrashing for no reason, or self-restarting\r\n<br>\r\nFiles missing, or extra/copy files suddenly appear\r\n<br>\r\nApplications not responding as they should<br>\r\n\r\nStrange error messages<br>\r\n\r\nNonstop pop-ups<br>\r\nDiscs or drives are inaccessible<br></div>\r\n<H3>Computer Technical Support for Virus, Adware and Malware Removal</h3>\r\n<Div><Br>SolutionSquads uses a tactical, step-by-step method to rid your computer of any and all probable threats. While having an up-to-date, active and running anti-virus service is very important, it can’t protect you from every possible issue. We specialize in restoring your computer to safe conditions, and can do so remotely so that your computer can remain at home. Repairs are conducted through a secure remote connection, during which we access your computer and identify the exact threat, and render inoperative and eliminate it from your system. No matter what platform you are using, no matter what type of device, we guarantee we can achieve fast results and get you back on track in no time.<br>\r\nOur virus and malware removal service is built-in in our monthly and yearly support plans, and could save you untold agony if the unthinkable should ever happen.</div>', 'virus.jpg'),
(5, 'Home Networking', '<h3>Home Networking Technical Support</h3>\r\n\r\n<Div><br>If you need help setting up your home wireless network, SolutionSquads can help you get linked in a touch. A home network gives you the ease of being able to connect all of your devices – your smart TV, printer, scanner, tablet, computers and smartphone – to your home Wi-Fi network so that you can enjoy the full functionality of all of your technology from any room in your home. While linked to your network, you will be able to print, share photos, videos and play music to devices such as your Smart TV. From the first setup of your home network to troubleshooting your router, SolutionSquads provides you with full support until the problem is resolved.<br></div>\r\n\r\n<Div><br>Our home networking services are built-in both our monthly and yearly plans, so you can rest easy, knowing that you have the liberty to call us if something goes wrong. Once your network is recognized, you, your family and your guests will be able to connect to it via a password that you choose. The reliability of your network is completely secure, and nobody will be able to join without your consent. Need to change your password for any reason? No problem! We are ready to help.<br></div>\r\n\r\n<Div><br>Whether you are setting up your network for the first time, want to improve or reconfigure your network to a new internet service provider, install a new router or modem, or for any other home network linked issue, SolutionSquads has you covered. Our limitless tech support plans cover every probable network issue and more, so sign up today and say goodbye to network woes.<br></div>', 'net.jpg'),
(6, 'Internet Connectivity', '<h3>Internet Connectivity Technical Support</h3>\r\n\r\n<Div><br>SolutionSquads specializes in getting you connected. If you are having trouble connecting to the internet with your laptop, desktop, tablet, smartphone or any other internet capable device, we can help. We will set up your wired or wireless network in your home, infusing your home with the power of the internet.\r\n<br>Whether you are migrating to a new network or service provider or starting from scrape, SolutionSquads has the skill to get you through. Working with your existing hardware or the modem and router that have been supplied by your internet service provider, we will have you online and surfing the net in no time at all.<br></div>\r\n\r\n<h3>\r\nTroubleshooting Connection Issues</h3>\r\n\r\n<Div><br>If you are abruptly having difficulty establishing an internet connection, or if your connection is frustratingly slow, SolutionSquads can find out what the problem is and either fix it or suggest the best course of action to get you the performance you wish. If you are trying to stream movies on Netflix or trying to play online games, a slow connection can mean never-ending hiccups and wait times. In spite of of what the problem is, we can offer you with an answer that will make sense and an actionable plan on how to fix it. We will test your bandwidth to conclude how fast your connection is, and go through superior troubleshooting methods on our way to solving your connection issues.<br></div>\r\n\r\n<H3>\r\nGetting the most out of your technology</h3>\r\n<Div><br>SolutionSquads can help you get connected with any computer and to any service provider. Just think of us as your own personal experts in getting connected, staying connected and getting the most out of your technology.\r\n<br>We aim to make it easy so that you don’t have to lose sleep over how things work, why they work or if they are going to work. Internet connectivity support is built-in in both our monthly and yearly plans, so you can be certain that SolutionSquads always has your back.<br></div>', 'internet.jpg'),
(8, 'Printers and Multi-function', '<h3>Printers and Multi-function Technical Support</h3>\r\n\r\n<Div><br>SolutionSquads provides expert support and troubleshooting for all major brands of printers, scanners, and multifunction units. Whether your machine is inkjet or laser, wired or wireless, we can set up, configure or even troubleshoot a non-working unit. The goal is to provide you with the best possible functionality for the things that you want to do, the way you want to do them.<br>\r\nThese days, setting up a new printer is occasionally a little more complicated than simply plugging it into your computer. The good news is, most newer printer models are designed to be used wirelessly, and can be connected to your home network, allowing you the liberty to connect to it from your laptop or desktop computer. Once we have set up your printer on your network, you or anybody in your family will be able to access it through any device, virtually anywhere in your home.<br>\r\nSolutionSquads can help you learn to get the most out of your printer, scanner or multi-function. It’s no lie: many people use only a fraction of their machine’s full functionality, and sometimes there are clever shortcuts and tips that we can pass along to help you get the most out of your asset. From greeting cards to arts and crafts, flyers, knitting patterns, archival photographs or your personal correspondence, SolutionSquads can help you get the results that you’re after.</div>\r\n<H3>Any Brand Printer, Any Type</h3>\r\n<Div><br>Regardless of the brand of printer, scanner or multifunction machine, SolutionSquads will help get you up and running in record time. Our technicians are qualified with all the major brands, including Epson, Canon, HP, Brother, Dell, Lexmark and more. In most cases, you will be ready to start printing your cherished photos, correspondence or other documents right away. We perform all of our installs and configurations remotely, going through each step until everything works flawlessly.</div>\r\n<H3>How We Can Help</h3>\r\n<Div><br>Some of the ways that SolutionSquads can help include:\r\n<Br>First-time installation of any printer, scanner or multi-function\r\n<Br>Set up for wired/USB printing\r\n<Br>Set up for network and/or wireless printing\r\n<Br>Configure access to your printer, scanner or multi-function from most any device\r\n<Br>Fixing of communication errors\r\n<Br>Resolution of offline and other printer error messages\r\n<Br>Installation or updating drivers, software or firmware\r\n<Br>Troubleshooting of all other issues</div>\r\n<H3>Harness the Power of Your Technology</h3>\r\n<Div><br>Our printer, scanner, multifunction setup and support services are built-in in both our monthly and yearly plans at no extra cost to you, so you will never have to think twice about reaching out.<br>\r\nCheck out our all-inclusive home support plans, and find out the many ways in which SolutionSquads can help you connect with your technology.</div>', 'printer.jpg'),
(9, 'Technical Training and Guidance', '<h3> Technical Training and Guidance</h3>\r\n\r\n<Div>With the enormous collection of desktops, laptops, tablets and smartphones available today, it is easy to get overwhelmed with the learning curve that might be required. SolutionSquads  home tech support technicians are experts in breaking it all down into terms that anybody can comprehend so that you can get the most out of your technology.<br>\r\nThe team at SolutionSquads is highly trained and knowledgeable, with proficiency in a wide range of technical matters. We can help anyone, regardless of your experience or inexperience. We take care of every detail, from installing the software to helping you discover its features and everything in between.<br>\r\nIf you need to know how to:<br>\r\nSort and arrange photos<br>\r\nConfigure and use a web browser<br>\r\nPrint a file on your computer or tablet<br>\r\nLearn to use a software application<br>\r\nManage the files on your computer<br>\r\nAttach documents to an email<br>\r\nSet up your email program<br>\r\n\r\nor just about anything else you can think of, we’ve got the answers you need. If you need a question answered, or you need to be shown how to do a specific task on your laptop, desktop computer, tablet or smartphone, SolutionSquads can help. Working with you remotely, via live chat or on the phone, our well-informed technicians will walk you through each process, explaining what you need to know in a language you can understand. We can give you tips on the easiest ways to get your tasks accomplished and even provide you with shortcuts that will make all of your computing a breeze.<br>\r\nThere are so many thrilling things you can do with technology these days, and there are thousands of applications available that are designed to make your life easier. But where do you start? The sheer volume of options can be a bit overwhelming. SolutionSquads is dedicated to making that learning curve more convenient, and we are here to help you learn how to do all of those things that will bring value to your experience, no matter what you are trying to carry out.<br>\r\nOur training and guidance support is included in both our monthly and yearly plans and provides you with unlimited access to an expert whenever you need one. No matter how simple or complex your question might be, you will always have the peace of mind that comes with having the computer gurus at SolutionSquads in your corner.<br></div>', 'tech.jpg'),
(10, 'Software Application', '<h3>Software Application Technical Support</h3>\r\n\r\n<Div>With the many different software applications (also known as ‘apps’) on the market today, we guarantee that whatever it is that you want to do – there is an app that will meet your requirements.\r\n<Br>No matter what type of computer or device you have, SolutionSquads is well versed in just about every app on the market today, and can help you install and learn how to use them to their fullest advantage.\r\n<Br>Whether you want to set up and learn how to use Microsoft Office, play computer games, choose between different web browsers or anything software related, SolutionSquads can help. We will walk you through every step, answer all your software-related questions and help you get the most out of your software purchase.<Br></div>\r\n<H3>Remote Tech Support Saves You Time and Money</h3>\r\n<Div>When you make the decision to purchase a piece of software, it’s usually to fulfill a need of some sort. Manuals are often full of technical terminology and can be puzzling even to computer-savvy individuals. SolutionSquads provides expertise in a wide range of software suites, including popular programs such as:<Br>\r\nMicrosoft Office Suite\r\n<Br>Excel\r\n<Br>Word\r\n<Br>Outlook\r\n<Br>PowerPoint\r\n<Br>Adobe Products\r\n<Br>Photoshop and Photoshop Express\r\n<Br>Acrobat\r\n<Br>Apple Mac specific apps\r\n<Br>iTunes\r\n<Br>iDVD\r\n<Br>iMovie\r\n<Br>iPhoto\r\n<Br>Microsoft Windows specific apps\r\n<Br>Media Player\r\n<Br>Photos\r\n<Br>Mail\r\n<Br>Scheduling and Calendars\r\n<Br>Social Media Applications\r\n<Br>\r\nOnce you’ve learned the basics, a whole new world of possibilities will be open to you. Whether you are looking to let loose your creativity, get more organized, put together photo albums, slideshows, and videos, or simply have fun playing games online with your friends, SolutionSquads is here to help. Our software application support services are included in both our monthly and yearly plans, so that whenever questions arise, you’ve got somebody you can call.<Br></div>\r\n<H3>Keeping it Simple</h3>\r\n<Div>For one monthly or yearly price, we provide our subscribers with top-shelf technical support for all kinds of software applications and more. We leverage technology to deliver the ultimate in customer service, seven days a week. Whenever you have a question, we’ll be ready with the answers.<Br>\r\nIf you have access to the internet, we can set up a remote connection that shares your screen so our techs can interact with you directly, showing you how to use your software programs or handy shortcuts to perform certain tasks. We also offer phone support and live chat straight from your desktop. Best of all, we will never load you up with extra information you don’t need or understand. We like to keep it simple because that’s just who we are.</div>\r\n<H3>Get Up and Running, Faster, and Smarter than Ever Before</h3>\r\n<Div>While software can improve your life, it can every so often hold you back. We’re all about breaking down the barriers between the digital world and your brain, giving you support that you can comprehend. Using plain words, we will give you the tools you need to make the most out of your technology. With concepts that are as easy to grasp as they are to put into practice, you’ll be able to skip the tutorials and jump right into the fun stuff. And if you ever forget any small detail, we’re just a phone call or live chat away.<Br>\r\nSolutionSquads software application support services are included in our monthly and yearly plans. Browse our plans and features to decide which one is right for you.</div>', 'soft.jpg'),
(11, 'Smartphone and Tablet', '<h3>Smartphone and Tablet Technical Support</h3>\r\n\r\n<Div>Smartphones and tablets are ever-present in today’s tech-obsessed landscape. We use them for everything from taking photographs and videos, to word processing, surfing the web, banking, playing games, researching, reading, emailing, GPS and maps, making video calls, chatting, texting – even talking on the phone! Even though these devices have only been in the world for a comparatively short period of time, many of us can’t imagine a life without them. It has replaced our address books, and in many cases, our tablets have replaced our desktop computers entirely, with robust processing power that can take on just about any task we need to accomplish.<br>\r\n\r\nWith so many possibilities and so many ways to use these devices, the process can seem quite complex. Instead of becoming overwhelmed with everything that your smartphone or tablet can do, let us help you get to the heart of the matter so you can get on with what you do best. SolutionSquads can help with any smartphone, tablet issue or question you might have, including:<br>\r\n\r\n\r\nSoftware and app updates\r\n<br>\r\n\r\nConfiguration of your settings\r\n<br>\r\n\r\nSetting up and configuring system and app notifications\r\n<br>\r\n\r\nOptimization and management of device storage\r\n<br>\r\n\r\nOrganization and customization of the home screen\r\n<br>\r\n\r\nSecurity and anti-theft settings\r\n<br>\r\n\r\nBluetooth and Wi-Fi connectivity\r\n<br>\r\n\r\n\r\nHands-free device control\r\n<br>\r\n\r\nMoving or restoring data\r\n<br>\r\n\r\nCloud storage and backups\r\n<br>\r\n\r\nTroubleshooting issues\r\n<br>\r\n\r\nConnection and control of smart home devices and apps\r\n<br>\r\n\r\nCamera and microphone settings\r\n<br>\r\n\r\nErrors and crashes\r\n<br>\r\n\r\nHow-to’s for many popular applications<br>\r\nShortcuts and cool tricks<br>\r\n\r\n\r\nWhen you sign up for a SolutionSquads unlimited support plan, you will have access to our smartphone and tablet pros whenever you need them. From the smallest task to the most daunting of error messages, we have the expertise to solve just about any problem you can throw at us. Our techs are based in the United States and are well-versed in all the latest technology in order to provide you with reliable information and outreach that you can count on. In order to give you options that are flexible enough to suit your lifestyle, our monthly and yearly plans are unlimited, meaning that when you signup you will have instant access to our vast array of technical knowledge and support. We take the time to get to know how you want to use your technology, and we will always be there when you need us. From setting up a new device to migrating your data and apps to a new one, SolutionSquads is ready to help.</div>', 'phone.jpg'),
(12, 'Laptop and Computer ', '<h3>Laptop and Computer</h3> <div>Just give us a call at 1-877 236-6725 for immediate laptop tech support. 24/7 OnsiteTechies delivers tech support services for thousands of our customers? computers and we guarantee an outstanding experience.</div>  <H3>What we do for you</h3> <Div> <H4>Online Tech Support & Troubleshooting for Your PC </h4> <Br> Our Laptop and system support specialists, with the use of highly secure remote support tools, will manage your PC as if they were seated right next to you. 24/7 OnsiteTechies deploys a suite of diagnostic and computer repair software to accurately find the root of your laptop?s problems and fix it quickly. <br> Before providing our quality tech support, one of our 24/7 OnsiteTechies will simply explain what your PC?s problems are and how we will go about fixing them. All technical support tasks are carried out using industry and vendor recommended (Microsoft, Norton, etc.) best practices.<br>  <H4>New Laptop Setup / Upgrade </h4><br>  Bought a new Laptop? Our online tech support team will help you transfer your existing files, personal settings, and system preferences (bookmarks, saved passwords, etc.) to your new Laptop with ease. Additionally, 24/7  OnsiteTechies specialists will install essential security software and patches to keep your computer safe.<br>  Planning to upgrade your existing computer? 24/7 OnsiteTechies will take you through the various options available in the market to help you make an informed decision. <br>  <H4>Laptop Peripherals support </h4><br>  Printers, scanners, smart phones, and cameras that you use with your computer always seem to fail when you want them to work the most. 24/7 OnsiteTechies will help you troubleshoot those annoying problems that crop up when transferring images from your camera to your PC or music from your PC to your MP3 Player. Our online tech support specialists will configure and troubleshoot your computer so that devices connecting with your PC deliver.<br>  <H4>Laptop Performance Optimization </h4><br>  24/7 OnsiteTechies will help you improve the performance of your computer by optimizing it and then, by keeping necessary applications regularly updated. This will help your PC run like new all the time, in the same way a regularly maintained car does. Regular PC maintenance removes viruses, spyware, and other nasty programs, ensuring that your computer?s resources are utilized by essential, safe programs. <br></div>  <H3>Laptop Support Services Include</h3>  <Div>Online Tech Support & Troubleshooting for Your PCNew Laptop Setup / Upgrade Laptop ,Peripherals support,Laptop Performance Optimization</div>', 'laptop.jpg'),
(14, 'Support for Apple ', '<h3>Support for Apple</h3>  <div>Whether you?re already a Mac enthusiast, or if you?ve just recently joined the bandwagon, you have much to discover. Mac is designed to be spontaneous and easy to use, but since its operating system is so unique, it might take a little getting used to if you are migrating from Windows based systems. You?ll love Mac?s functionality. Whether you?re just surfing the web or using some of the exciting applications made just for Mac, such as iTunes, iPhoto and iMovie.SolutionSquads provides deep knowledge and informed expertise in all things Mac, helping you to pass through the learning curve and get to the fun stuff faster.</div> <h3>Your Apple Support Experts</h3> <div>Our technicians are well versed in all facets of Mac OSX 10.5 or newer, and can advise you on Mac hardware including MacBookPro to iMac, MacBookAir, iPad, or iPhone as well as any made-for-Mac software such as Pages, Numbers, iPhoto, iCloud and more. From initial setup to troubleshooting, hardware issues, software issues, power and performance, we can provide the answers you need and get you up and running quickly.</div> <h3Remote Access for Your Convenience</h3>. <div>No matter where you are ? at home, on the road or on the go ? SolutionSquads can help. All of our Mac tech support services consist of troubleshooting, which is helpful when your AppleCare has run out or if you?re not getting the answers you need directly from Apple. If you have internet access, we can set up a remote connection to share your computer screen so that we see precisely what you are seeing. Our technical services can be accessed via telephone or live chat, and we?ll always take the time to walk you through the various processes you need in order to get you up and running. There is often no need for you to bring your computer or device into a shop to get the job done.</div> <div>Our Mac tech support services cover the following and more:<br> Initial installation and setup of OSX<br> Tech support for all apple enabled devices<br> iCloud setup to sync and backup all of your devices<br> Installation of your favorite applications<br> Assistance with your security and antivirus software<br><br> Our customers are positioned all over the United States, and we guarantee that we can solve your Mac issues quickly and simply. No matter what your Apple issues might be, SolutionSquads has the answer.</div>', 'apple.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `S_No` bigint(20) NOT NULL,
  `User_ID` varchar(20) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Contact_No` varchar(13) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `AccessLevel` varchar(20) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc` (`pid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`S_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `S_No` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `seo`
--
ALTER TABLE `seo`
  ADD CONSTRAINT `sc` FOREIGN KEY (`pid`) REFERENCES `services` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
