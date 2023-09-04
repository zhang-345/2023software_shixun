/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50740 (5.7.40-log)
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50740 (5.7.40-log)
 File Encoding         : 65001

 Date: 27/08/2023 23:20:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article_id` bigint(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(200) NOT NULL,
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `thumbnail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `is_top` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否置顶（0否，1是）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '状态（0已发布，1草稿）',
  `view_count` bigint(200) NOT NULL DEFAULT 0 COMMENT '浏览量',
  `is_comment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否允许评论 1是，0否',
  `create_by` bigint(20) NOT NULL COMMENT '作者id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL,
  `num_collection` int(255) NULL DEFAULT 0 COMMENT '收藏量',
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型名',
  `is_visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否可见（1表示所有人可见，0仅自己可见，2粉丝可见）',
  `user_likes` int(20) NULL DEFAULT 0 COMMENT '点赞量',
  `posttime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`article_id`) USING BTREE,
  INDEX `FK_Reference_11`(`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 2, '这篇文章你别删', '', 'https://picx.zhimg.com/80/v2-a7810a92f70f7f2b19c964e33471a8b2_720w.webp?source=1940ef5c', '0', '0', 128, '1', 1, '2023-08-25 16:42:16', NULL, 0, NULL, '1', 5, NULL);
INSERT INTO `article` VALUES (4, 7, '知识圈子 兴趣圈子 论坛小程序系统', '测试4', 'https://www.toopic.cn/public/uploads/small/1638860271747163886027116.jpg', '0', '0', 11, '1', 1, '2023-08-24 22:09:38', NULL, 0, NULL, '0', 1, '2023-08-21 23:00');
INSERT INTO `article` VALUES (5, 2, '文章标题', '文章内容', 'https://www.toopic.cn/public/uploads/small/1638860271747163886027116.jpg', '0', '0', 81, '1', 1, '2023-08-25 17:02:02', NULL, 0, NULL, '1', 6, '2023-08-21 23:00');
INSERT INTO `article` VALUES (8, 4, '「化けわらじのことが職場にバレて」妖怪', 'test2', 'https://tse1-mm.cn.bing.net/th/id/OIP-C.A_Rm-urqZe3EUtwCqRzU0gHaEo?w=226&h=180&c=7&r=0&o=5&dpr=1.6&pid=1.7', '0', '0', 6, '1', 2, '2023-08-25 15:13:36', NULL, 0, NULL, '1', 0, '2023-08-22T09:37:17');
INSERT INTO `article` VALUES (9, 2, '定时2', 'test2', 'https://tse1-mm.cn.bing.net/th/id/OIP-C.A_Rm-urqZe3EUtwCqRzU0gHaEo?w=226&h=180&c=7&r=0&o=5&dpr=1.6&pid=1.7', '0', '1', 11, '1', 2, '2023-08-24 00:21:32', NULL, 0, NULL, '1', 0, '2023-08-22T16:39:00');
INSERT INTO `article` VALUES (10, 1, '实训日记', '<p>我真的会发疯</p>', 'https://tse1-mm.cn.bing.net/th/id/OIP-C.A_Rm-urqZe3EUtwCqRzU0gHaEo?w=226&h=180&c=7&r=0&o=5&dpr=1.6&pid=1.7', '0', '1', 0, '1', 1, '2023-08-24 21:10:03', NULL, 0, NULL, '1', 0, NULL);
INSERT INTO `article` VALUES (11, 2, '实训日记2', '<p>我今天超级开心</p>', 'https://tse1-mm.cn.bing.net/th/id/OIP-C.A_Rm-urqZe3EUtwCqRzU0gHaEo?w=226&h=180&c=7&r=0&o=5&dpr=1.6&pid=1.7', '0', '0', 2, '1', 1, '2023-08-24 00:21:36', NULL, 0, NULL, '1', 1, NULL);
INSERT INTO `article` VALUES (12, 6, '我唱了麦当劳宣传曲！', '1111', 'https://pic.52112.com/JPG-180505/180505_520/VLMBmVsB9Z_small.jpg', '0', '0', 13, '1', 1, '2023-08-25 16:57:36', NULL, 0, NULL, '1', 3, NULL);
INSERT INTO `article` VALUES (13, 6, '海边遇到这一幕怎么办？', '1111', 'https://th.bing.com/th/id/R.707ad5206959bbc5a513dfab6f470092?rik=AQB7lcppq6fMFg&riu=http%3a%2f%2fimg.sytuku.com%2fuptu%2fyulantu%2f160625%2f5-160625204415.jpg&ehk=mTXi7gTD9ngWX7NC5cYA2sId9Nd5kP32pnmVrMyMaGk%3d&risl=&pid=ImgRaw&r=0', '0', '0', 3, '1', 1, '2023-08-24 14:42:52', NULL, 0, NULL, '1', 1, NULL);
INSERT INTO `article` VALUES (14, 6, '耗时6年收集！全网最全瑞幸口袋', '', 'https://www.lkcoffee.com/template/images/about/model02-2.png', '0', '0', 10, '1', 3, '2023-08-25 14:44:24', NULL, 0, NULL, '1', 2, NULL);
INSERT INTO `article` VALUES (15, 2, '【黑神话悟空】人形boss', '<h1>黑神话：悟空——一款期待已久的西游题材游戏</h1> <p>如果你是一个喜欢西游题材的游戏玩家，那么你一定不会错过《黑神话：悟空》这款游戏。这是一款由游戏科学开发的单机·动作·角色扮演游戏，以西游记为背景，以孙悟空为主角，讲述了他在取经路上的冒险和成长。本文将介绍这款游戏的主要特点和亮点，以及它为什么能够引起广大玩家的关注和期待。</p>\r\n\r\n<h2>游戏的特点</h2> <p>《黑神话：悟空》是一款非常注重画面和细节的游戏，它采用了先进的图形技术和物理引擎，打造了一个极富魅力和氛围的西游世界。游戏中的场景、角色、动作、光影、特效等都非常精致和逼真，给玩家带来了极佳的视觉享受。</p> <p>除了画面之外，游戏还拥有丰富的玩法和系统，让玩家可以自由地探索和冒险。游戏中的孙悟空可以变化成不同的形态和武器，以应对不同的敌人和环境。游戏还有多种难度模式和隐藏要素，让玩家可以挑战自己的极限和发现更多的惊喜。</p> <p>此外，游戏还非常注重故事和情感，它不仅忠于原著，还加入了自己的创意和解读，让玩家可以从不同的角度去理解和体验西游记中的人物和事件。游戏中的孙悟空不仅是一个强大而叛逆的英雄，也是一个有着复杂心理和情感的生命，他在取经路上遇到了各种各样的挑战和困惑，也收获了友情和成长。</p>\r\n\r\n<h2>游戏的亮点</h2> <p>《黑神话：悟空》作为一款国产游戏，最大的亮点就是它对西游题材的独特诠释和呈现。这款游戏没有简单地复制或模仿其他已有的西游作品，而是用自己的视角和风格去创造了一个全新而又熟悉的西游世界。这个世界既有原著中的经典元素，如金箍棒、火眼金睛、七十二变等，也有开发团队自己的创新设计，如白骨精、冰霜巨龙、天兵天将等。这个世界既有原著中的快乐与幽默，如唐僧与徒弟们之间的互动与对话，也有开发团队自己的思考与感悟，如孙悟空对于生死与道义的探索与抉择。</p> <p>《黑神话：悟空》的另一个亮点就是它对于游戏品质的高标准和高要求。这款游戏是由游戏科学开发的，这是一个由一群热爱西游和游戏的人组成的团队，他们曾经参与过《王者荣耀》等知名游戏的开发，有着丰富的经验和能力。他们对于《黑神话：悟空》的开发非常用心和认真，不仅投入了大量的时间和资源，还不断地改进和优化，力求让游戏达到最佳的状态。他们也非常重视玩家的反馈和建议，不断地与玩家沟通和交流，让游戏更加符合玩家的期待和需求。</p>\r\n\r\n<h2>游戏的期待</h2> <p>《黑神话：悟空》自从在2020年8月发布了第一部实机演示视频后，就引起了广大玩家的关注和期待。这部视频展示了游戏中的部分场景、角色、动作、特效等内容，让玩家感受到了游戏的魅力和潜力。这部视频在网上迅速传播，获得了超过一亿次的播放量，也获得了国内外媒体和玩家的高度评价和赞誉。许多人认为，《黑神话：悟空》是一款有着国际水准和水准的游戏，是国产游戏的一面旗帜和骄傲。</p> <p>然而，《黑神话：悟空》并没有因为这样的赞誉而沾沾自喜，而是继续低调地进行开发和完善。开发团队表示，这款游戏还有很多不足和缺陷，还需要更多的时间和努力才能达到他们心中的理想状态。他们也表示，这款游戏不会轻易地妥协或让步，不会为了迎合市场或赶时间而牺牲品质或创意。他们希望能够做出一款真正能够打动自己和玩家的游戏，一款能够让西游题材焕发新生的游戏。</p> <p>因此，《黑神话：悟空》并没有公布具体的发售日期，而是选择了一个模糊而又坚定的回答：“只争朝夕，不负韶华。”这个回答既表达了开发团队对于时间的珍惜和利用，也表达了他们对于游戏的信心和承诺。这个回答也让许多玩家感到欣慰和敬佩，他们表示愿意耐心地等待，并给予开发团队最大的支持和鼓励。</p>\r\n\r\n<h2>总结</h2> <p>《黑神话：悟空》是一款值得期待的西游题材游戏，它有着精美的画面、丰富的玩法、感人的故事、高品质的制作、独特的风格等特点。它是一款由一群热爱西游和游戏的人用心打造的作品，它承载了他们对于西游文化的理解和传承，也承载了他们对于国产游戏的梦想和希望。', 'https://pic1.zhimg.com/70/v2-01fbeec2d849feef73cc4472958d6ac3_1440w.awebp?source=172ae18b&biz_tag=Post', '0', '0', 36, '1', 2, '2023-08-25 16:13:07', NULL, 0, NULL, '1', 3, NULL);
INSERT INTO `article` VALUES (16, 8, '【方大同】不会建桥的老农不是一名优秀的R&B大师', '<h1>SpringBoot入门教程</h1> <p>SpringBoot是一个基于Spring框架的开源项目，旨在简化Java开发人员创建基于Spring的应用程序的过程。SpringBoot提供了一系列功能，如自动配置、嵌入式服务器、启动器依赖、Actuator监控等，使得开发者可以快速地构建可运行的应用程序，而无需编写大量的配置代码。</p> <p>本文将介绍如何使用SpringBoot创建一个简单的Web应用程序，展示其主要特性和优势。</p>\r\n\r\n<h2>创建SpringBoot项目</h2> <p>要创建一个SpringBoot项目，有多种方式，例如使用IDE（如Eclipse或IntelliJ IDEA）、使用Maven或Gradle构建工具、使用Spring Initializr网站等。本文将使用Spring Initializr网站来创建一个SpringBoot项目，该网站可以让用户通过图形界面来选择所需的依赖和配置，并生成一个可下载的项目压缩包。</p> <p>首先，打开[Spring Initializr网站]，在Project选项中选择Maven Project，Language选项中选择Java，Spring Boot选项中选择最新版本（本文使用2.5.4）。然后，在Project Metadata中填写Group（组织名）、Artifact（项目名）、Name（应用名）、Description（应用描述）、Package name（包名）等信息。本文以com.example.springboot为Group，demo为Artifact，springboot-demo为Name和Package name，A simple SpringBoot demo as Description为例。</p> <p>接下来，在Dependencies中选择所需的依赖。本文只需要选择一个依赖：Spring Web，用于构建Web应用程序。当然，根据不同的应用场景，用户可以选择其他的依赖，如Spring Data JPA、MySQL Driver、Thymeleaf等。</p> <p>最后，点击GENERATE按钮，就可以下载一个名为demo.zip的压缩包，解压后得到一个名为springboot-demo的文件夹，里面包含了一个完整的Maven项目结构。</p>\r\n\r\n<h2>运行SpringBoot项目</h2> <p>要运行SpringBoot项目，有多种方式，例如使用IDE（如Eclipse或IntelliJ IDEA）、使用Maven或Gradle构建工具、使用java命令等。本文将使用Maven构建工具来运行SpringBoot项目。</p> <p>首先，在命令行中进入springboot-demo文件夹，然后执行以下命令：</p>\r\n\r\n<pre><code>mvn spring-boot:run </code></pre>\r\n\r\n<p>该命令会自动下载所需的依赖，并启动一个嵌入式的Tomcat服务器，在8080端口上运行应用程序。如果一切顺利，可以看到以下输出：</p>\r\n\r\n<pre><code>… 2023-08-25 15:55:33.456 INFO 1234 — [ main] o.s.b.w.embedded.tomcat.TomcatWebServer : Tomcat started on port(s): 8080 (http) with context path ‘’ 2023-08-25 15:55:33.467 INFO 1234 — [ main] com.example.springboot.DemoApplication : Started DemoApplication in 2.943 seconds (JVM running for 3.658) … </code></pre>\r\n\r\n<p>然后，在浏览器中输入[http://localhost:8080]，就可以看到一个白色的页面，上面显示了以下内容：</p>\r\n\r\n<pre><code>Whitelabel Error Page This application has no explicit mapping for /error, so you are seeing this as a fallback.\r\n\r\nFri Aug 25 15:56:33 CST 2023 There was an unexpected error (type=Not Found, status=404). No message available </code></pre>\r\n\r\n<p>这是因为我们还没有定义任何请求映射，所以访问根路径时会返回一个404错误。接下来，我们将编写一个简单的控制器类，来处理用户的请求。</p>\r\n\r\n<h2>编写SpringBoot控制器</h2> <p>要编写一个SpringBoot控制器，只需要创建一个Java类，并使用@RestController注解标注，表示该类是一个REST风格的控制器。然后，在该类中定义一个或多个方法，并使用@RequestMapping注解标注，表示该方法是一个请求处理方法，可以指定请求的路径、方法、参数等。</p> <p>本文将创建一个名为HelloController的控制器类，定义一个名为hello的方法，用于返回一个字符串\"Hello, SpringBoot!\"给用户。该类的代码如下：</p>\r\n\r\n<pre><code>package com.example.springboot;\r\n\r\nimport org.springframework.web.bind.annotation.RequestMapping; import org.springframework.web.bind.annotation.RestController;\r\n\r\n@RestController public class HelloController {\r\n\r\n@RequestMapping(\"/\")\r\npublic String hello() {\r\n    return \"Hello, SpringBoot!\";\r\n}\r\n复制\r\n} </code></pre>\r\n\r\n<p>注意，该类放在了com.example.springboot包下，这是因为SpringBoot会自动扫描启动类（即DemoApplication类）所在包及其子包下的所有组件，并注册到Spring容器中。如果将该类放在其他包下，需要使用@ComponentScan注解来指定扫描的范围。</p> <p>保存该类后，重新运行SpringBoot项目，然后再次访问[http://localhost:8080]，就可以看到一个黑色的页面，上面显示了以下内容：</p>\r\n\r\n<pre><code>Hello, SpringBoot! </code></pre>\r\n\r\n<p>这说明我们成功地创建了一个简单的SpringBoot控制器，并处理了用户的请求。</p>\r\n\r\n<h2>总结</h2> <p>本文介绍了如何使用SpringBoot创建一个简单的Web应用程序，展示了其主要特性和优势。SpringBoot是一个非常强大和灵活的框架，可以帮助开发者快速地开发高质量的应用程序，而无需关心复杂的配置和依赖管理。SpringBoot还提供了许多其他的功能和组件，如测试、安全、缓存、数据访问、模板引擎等，可以满足不同的应用需求和场景。如果您想了解更多关于SpringBoot的内容，请参考[官方文档]。</p>\r\n\r\n<h3>参考资料</h3> <ul> <li>: Spring Initializr</li> <li>: http://localhost:8080</li> <li>: Spring Boot Reference Documentation</li> </ul>', 'https://ts1.cn.mm.bing.net/th/id/R-C.af794b5f0f981e0ac927ef4e9a2ae201?rik=XeKFRvEwaV02tw&riu=http%3a%2f%2fimg.ifeng.com%2fres%2f200804%2f0417_366517.jpg&ehk=doeU4LHKMwZc7aP4I62%2bYExaZB3vi4%2brYG363Zz0AT8%3d&risl=&pid=ImgRaw&r=0', '0', '0', 14, '1', 3, '2023-08-25 16:12:41', NULL, 0, NULL, '1', 1, NULL);
INSERT INTO `article` VALUES (18, 3, '我们鸟巢见！', '<p><strong>鸟巢见！</strong><span class=\"ql-cursor\">﻿</span></p><p>十年之约，我们一起回火星！2023年华晨宇火星演唱会北京站鸟巢场预售即将开启！<img src=\"blob:http://localhost:8083/4293e6a6-c2a5-48cc-8629-38a37deda99e\" alt=\"图像\" data-local=\"blob:http://localhost:8083/4293e6a6-c2a5-48cc-8629-38a37deda99e\"></p>', 'http://192.168.192.149:80/images/847e3fef-f175-409b-9afe-045a213a4714.jpg', '0', '0', 66, '1', 30, '2023-08-25 16:46:46', NULL, 0, NULL, '1', 5, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (19, 9, '测试草稿箱', '<p>1235</p>', '', '0', '1', 3, '1', 3, '2023-08-25 17:36:26', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (20, 5, '十周年欢迎回家', '<p>“十年之约，我们一起回火星！”</p><p>“周年大惊喜！和花花相约鸟巢！”</p><p>“年年岁岁，赴一场浪漫的火星约定！”</p><p>“欢乐马上来袭，火星人，速速来报到！”</p><p>“迎着阳光，向着鸟巢的方向，我们出发吧！”</p><p>“回火星吧，视听盛宴就等你来！”</p><p>“家园正在构建，上好闹钟，鸟巢现场见！”<img src=\"blob:http://localhost:8080/fd8b5e39-9e70-4497-8b90-a63883b833ff\" data-local=\"blob:http://localhost:8080/fd8b5e39-9e70-4497-8b90-a63883b833ff\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/70bd2e01-449b-4f35-8ff7-186a544abd98.jpg', '0', '0', 17, '1', 30, '2023-08-25 19:50:59', NULL, 0, NULL, '1', 6, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (21, 5, '北京站『鸟巢四面台设计手稿』曝光', '<p>多重维度刻录美好，定制构建“火星坐标”；</p><p>实现超维动态想象，无穷变化诠释多样音乐；</p><p>具象表达火星十年，心怀希望步入全新起点。</p><p><br></p><p>👉9月9日、10日，期待我们在鸟巢见证火星创造力的极致迸发！ ​​​<img src=\"blob:http://localhost:8080/86f935c6-458a-48f5-a575-df326db73503\" data-local=\"blob:http://localhost:8080/86f935c6-458a-48f5-a575-df326db73503\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/e30481d5-68ee-4b03-b1e9-663699158dd3.jpg', '0', '0', 17, '1', 30, '2023-08-25 19:55:01', NULL, 0, NULL, '1', 4, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (22, 7, '李宁无限可能运动会', '<p>当热爱碰撞热爱，我相信一切皆有可能。在李宁无限可能运动会现场，和@DwyaneWade&nbsp;的篮球互动，让我期待在运动中获得更多可能性，挑战自己，一切皆有可能！<img src=\"blob:http://localhost:8080/feac428f-0906-4246-bcf8-ada3b3806fd4\" data-local=\"blob:http://localhost:8080/feac428f-0906-4246-bcf8-ada3b3806fd4\" alt=\"图像\"><img src=\"blob:http://localhost:8080/1896691f-b424-40e4-833d-429900c425be\" data-local=\"blob:http://localhost:8080/1896691f-b424-40e4-833d-429900c425be\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/11a2635f-69a0-4c76-8688-d1f7d22daa81.jpg', '0', '0', 26, '1', 33, '2023-08-25 20:00:02', NULL, 0, NULL, '1', 4, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (23, 5, '华晨宇pel舞台打碟', '<p>极致舞台，热情永在。</p><p>DJ，改编，新歌，每一个元素都是最好的表达。</p><p>看@华晨宇yu 舞台精彩！​​​<img src=\"blob:http://localhost:8080/6a930279-4eab-4c8e-a1c3-dfaf3413f7dc\" data-local=\"blob:http://localhost:8080/6a930279-4eab-4c8e-a1c3-dfaf3413f7dc\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/0b4b627b-1ef8-484e-8c71-e9440578c842.jpg', '0', '0', 21, '1', 33, '2023-08-25 20:03:44', NULL, 0, NULL, '1', 4, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (24, 3, 'Per哥去鸟巢演唱会的衣服', '<p>是哪位才华横溢的造型师为Per哥搭配出了这一身，可以开个班教学一下吗？<img src=\"blob:http://localhost:8080/96d62c0d-bea3-4dc5-bf16-788e07c87825\" data-local=\"blob:http://localhost:8080/96d62c0d-bea3-4dc5-bf16-788e07c87825\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/85bb455a-f4eb-4e6f-9c46-b221946dcd41.jpg', '0', '0', 28, '1', 33, '2023-08-25 20:13:54', NULL, 0, NULL, '1', 7, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (25, 4, '电影《最后的真相》上映', '<p>#电影最后的真相今日上映# 今天我们的电影《最后的真相》和大家见面了。每当新作品要接受大家的检验的时候，我总是非常紧张，这一次我的心情更加复杂：激动、欣慰，还有一些忐忑。</p><p><br></p><p>演了二十多年戏，这是我第一次真真正正地以幕后创作者的身份参与一部电影的制作。在电影殿堂前，我只是一个努力而幸运的小学生，如今这个小学生要交出自己的答卷了，很激动也很忐忑，不知道观众会不会喜欢。</p><p><br></p><p>2020年的时候，砺志总找到我，说有一个很好的项目，他想开发，但是导演、编剧、制片人都非常的年轻，所以在市场上面临了一些挑战和质疑。他把剧本发给我，我看剧本的时候就深深地被这个剧本打动了，在见过导演之后，我相信这个年轻的导演有能力完成这样一个复杂的故事，然后我就告诉砺志总，我喜欢这个项目，我想尽我所有的努力一起把这个项目做好，就这样，我这个新人监制和新人导演、新人编剧、新人制片人走到了一起。</p><p><br></p><p>这是一部回归初心的电影，承栽了一位年轻导演以及很多年轻的电影人的梦想，看到他们也仿佛看到了曾经追梦的我自己，感动的是，我们的行业里依然有许多的前辈愿意花心血和精力来帮助这些年轻人实现他们的梦想。从开始筹备拍摄到上映一路来都有许多行业前辈在关心这部电影，让我想起我当年也是这样，在许多前辈的关爱与帮助下成长，直到今天我能为年轻人尽自己的一份微薄之力。</p><p><br></p><p>当然，《最后的真相》像我的“孩子”一样，现在“孩子”要走进电影院接受大家的评鉴了，我的心情十分的忐忑。我希望大家能喜欢这部作品，但更希望年轻的主创们能从这里出发，走的更高，更远。</p><p><br></p><p>谢谢太阁、珊敏、邓继，感谢你们让我有机会参与你们电影生涯的起点。</p><p>谢谢砺志总，谢谢麦特对年轻电影人不遗余力的帮助。</p><p>谢谢妮姐，涂们老师，清子，嘉鑫，影璐的义不容辞和精湛演出。</p><p>也谢谢项目过程中所有关爱过这个项目的同行、前辈，希望《最后的真相》不会辜负大家的期待。<img src=\"blob:http://localhost:8080/73c7894e-4137-4594-9d09-bf18038c74df\" data-local=\"blob:http://localhost:8080/73c7894e-4137-4594-9d09-bf18038c74df\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/05c48770-e0ef-4603-a5ec-4a6770161fb7.jpg', '0', '0', 20, '1', 34, '2023-08-25 20:30:13', NULL, 0, NULL, '1', 4, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (26, 9, '草稿箱测试', '<p>测试测试测试</p>', 'http://192.168.192.149:80/images/8c17904e-bc74-47c6-b088-62a154db5f9c.jpg', '0', '1', 1, '1', 35, '2023-08-25 20:34:32', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (27, 2, 'SpringBoot入门教程', '<p>SpringBoot是一个基于Spring框架的开源项目，旨在简化Java开发人员创建基于Spring的应用程序的过程。SpringBoot提供了一系列功能，如自动配置、嵌入式服务器、启动器依赖、Actuator监控等，使得开发者可以快速地构建可运行的应用程序，而无需编写大量的配置代码。&lt;/p&gt; &lt;p&gt;本文将介绍如何使用SpringBoot创建一个简单的Web应用程序，展示其主要特性和优势,下图是SpringBoot的框架结构</p><p>Spring Boot热部署：</p><p>通过引入spring-bootdevtools插件，可以实现不重启服务器情况下，对项目进行即时编译。引入热部署插件的步骤如下：</p><p><img src=\"blob:http://localhost:8083/33eee8ce-d35a-4a64-8e8e-8f259c02b8c5\" data-local=\"blob:http://localhost:8083/33eee8ce-d35a-4a64-8e8e-8f259c02b8c5\" alt=\"图像\"></p><p>1. 在pom.xml添加热部署依赖：</p><p><img src=\"blob:http://localhost:8083/7b05b4ae-1fa2-4ddd-a63d-644e8b618adf\" data-local=\"blob:http://localhost:8083/7b05b4ae-1fa2-4ddd-a63d-644e8b618adf\" alt=\"图像\"></p><p><br></p><p>2. IDEA热部署工具设置......</p>', 'http://192.168.192.149:80/images/37951f7d-0441-46d4-a2a8-7ff4705f63da.png', '0', '0', 19, '1', 3, '2023-08-25 20:53:47', NULL, 0, NULL, '1', 5, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (28, 8, '看看我的新稿子', '<p>这张还是蛮大的挑战的😭不常用的透视，不擅长的场景，两个场景之间的的衔接🥹🥹🥹画的又绝望又爽，蛮喜欢单边的氛围！所以也发发！！<img src=\"blob:http://localhost:8080/f65c3dca-b426-4d84-8940-6b62b0f3d77a\" data-local=\"blob:http://localhost:8080/f65c3dca-b426-4d84-8940-6b62b0f3d77a\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/d3e9cee8-202f-4768-a8c3-947fd4adf2ee.jpg', '0', '0', 6, '1', 38, '2023-08-25 21:36:19', NULL, 0, NULL, '1', 3, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (29, 8, '太喜欢薄荷劳斯的画了', '<p>薄荷劳斯的画尊都很可爱！！！亲亲亲亲我的乖宝<img src=\"blob:http://localhost:8080/3aa051e4-36b3-4dfc-9d1e-b2566d1f457b\" data-local=\"blob:http://localhost:8080/3aa051e4-36b3-4dfc-9d1e-b2566d1f457b\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/ce5bc617-c303-406a-8653-ea9fc6bfe834.jpg', '0', '0', 1, '1', 38, '2023-08-25 21:40:09', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (30, 8, '这个风格也怪可爱的', '<p>什么时候也学学这个画风，做亚克力立牌肯定会很好看<img src=\"blob:http://localhost:8080/5326c121-8849-4a86-9fe4-4390923214dd\" data-local=\"blob:http://localhost:8080/5326c121-8849-4a86-9fe4-4390923214dd\" alt=\"图像\"><img src=\"blob:http://localhost:8080/b44e936c-6cc5-4166-a0f7-ea7ba281888e\" data-local=\"blob:http://localhost:8080/b44e936c-6cc5-4166-a0f7-ea7ba281888e\" alt=\"图像\"><img src=\"blob:http://localhost:8080/71a6c065-3089-47e5-86e6-bc09970047ec\" data-local=\"blob:http://localhost:8080/71a6c065-3089-47e5-86e6-bc09970047ec\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/3a52c9e6-be43-4746-ad08-3d1957df5a43.jpg', '0', '0', 7, '1', 38, '2023-08-25 21:45:59', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (31, 7, '跟刀哥一起锻炼身体', '<p>你想要均衡地锻炼你全身的肌肉吗？</p><p><img src=\"blob:http://localhost:8080/16016eca-759b-4ccf-a267-cb1916421e9a\" data-local=\"blob:http://localhost:8080/16016eca-759b-4ccf-a267-cb1916421e9a\" alt=\"图像\"></p><p>一系列科学的全身锻炼方法对你的肌肉增长和强度提升有着特别有效的锻炼成果。</p><p>如果你每次锻炼都能照顾到全身的肌肉，那么你的全身肌肉能得到平衡的锻炼。</p><p>这一期Jeremy Ethier会介绍种全身肌肉训练方法，涵盖了全身肌肉的锻炼。</p><p>你每周只需要做3次。</p><p>为了对你全身肌肉有最有效的帮助，你在每次运动中都要顾及全身的主要肌肉。</p><p>你的肌肉增长和提升强度要成比例的慢慢加强，这样不仅在体型会美观，而且可以减小运动伤害。</p>', 'http://192.168.192.149:80/images/0d3280a0-9c8a-4b63-bdd3-daefb61314f0.jpg', '0', '0', 9, '1', 40, '2023-08-25 21:57:55', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (32, 9, '又跟刀哥一起锻炼', '<p>运动一：Barbell bench press</p><p>这个运动主要锻炼的是胸部肌肉，它可以增长你的胸部肌肉的大小和厚度。</p><p>你躺着举杠铃的时候，需要把注意点放在胸骨和胸部中间，同时这个动作也可以锻炼肩膀和三头肌。</p><p>所以你做运动的时候，要把注意力放在下图所示的红色部位。</p><p><img src=\"blob:http://localhost:8080/c8884df4-c342-4f2d-8a24-e5ebed4ac7dc\" data-local=\"blob:http://localhost:8080/c8884df4-c342-4f2d-8a24-e5ebed4ac7dc\" alt=\"图像\"></p><p>很多研究表明，这个运动是所有锻炼胸肌的运动中排名第一。</p><p>你还需要注意在举杠铃的时候要做到全幅度的运动，除非你的肩膀受伤了。这样你的胸肌能锻炼效率提升很多。</p><p><br></p><p>运动二：Barbell back squat</p><p>这个运动可以锻炼到股四头肌、臀肌和其他下肢的运动。</p><p><img src=\"blob:http://localhost:8080/489bac2d-035d-4048-a5ff-8060482fc0da\" data-local=\"blob:http://localhost:8080/489bac2d-035d-4048-a5ff-8060482fc0da\" alt=\"图像\"></p><p>你在运动时，要注意图中标红线的肌肉，可以加大激活他们的活性。</p><p>同时，也需要注意下蹲的幅度需要大一点，做到位。大腿最好能蹲到与地面平行或者是屁股低于膝盖的位置。这样的锻炼效果比不到位的效果好一倍。</p>', 'http://192.168.192.149:80/images/405d81fa-2551-422d-ab15-fb741f8d5f92.png', '0', '0', 2, '1', 40, '2023-08-25 22:02:57', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (33, 7, '还跟刀哥一起锻炼', '<p>运动三：Pull up</p><p>引体向上能很好的锻炼背后的肌肉，特别是全身最大的那块背阔肌。他还能锻炼到你的二头肌。</p><p><img src=\"blob:http://localhost:8080/a7e76bf8-ceca-4cf2-81cc-aebc599a4af2\" data-local=\"blob:http://localhost:8080/a7e76bf8-ceca-4cf2-81cc-aebc599a4af2\" alt=\"图像\"></p><p>在做运动的时候，你的关注点要在背后红色部位的肌肉。做引体向上10-12次。</p><p>当你觉得迎体向上对你来说容易了，可以在身上绑上加重带或者是脚之间夹一个哑铃。</p><p>如果你觉得迎体向上对你来说很难，那你可以用阻力带帮助你。把阻力带挂在杠杆上，然后脚踩阻力带，借助它的弹性把你往上抬。</p><p><br></p><p><br></p><p>运动四：Lying dumbbell leg curls</p><p>躺在地上，面朝下。双脚并拢，脚间夹一个哑铃，然后使用大腿后侧腘绳肌的力量，把脚抬起来，然后再慢慢放下去。</p><p><img src=\"blob:http://localhost:8080/007cc36d-f421-4209-a805-4a08686d6a6b\" data-local=\"blob:http://localhost:8080/007cc36d-f421-4209-a805-4a08686d6a6b\" alt=\"图像\"></p><p>有研究表明，前面提到的训练二back squat对于腘绳肌的激活只起到了27%的作用。为了平衡肌肉和防止运动受伤，我们需要额外特别锻炼腘绳肌，就是这个训练的目的。</p><p>在做这个运动的时候，大腿是向下做离心运动，所以你要特别缓慢控制力度。哑铃的选择也要从轻到重，防止运动受伤。</p>', 'http://192.168.192.149:80/images/5424fd41-6da8-4700-adf2-c4782a765ccf.png', '0', '0', 5, '1', 40, '2023-08-25 22:05:31', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (34, 3, '牛郎星织女星七夕难相会', '<p>	8月22日将迎来七夕节，这一天也是我国民间传说中牛郎织女鹊桥相会的日子。牛郎织女的爱情，来源于我国古代人民对夏季夜空的观察和想象。“牛郎”和“织女”真能相会吗？他们在“身高”“外貌”“年龄”上是否相配？天文科普专家为您揭秘七夕节中的天文“冷知识”。</p><p>	中国科学院紫金山天文台科普主管王科超说，天文学上的牛郎星和织女星分别指河鼓二和织女一，它们分别是天鹰座和天琴座的亮星。河鼓二与附近的河鼓一、河鼓三组成一个类似扁担的形状，像是牛郎的扁担。而织女一周边有4颗稍暗一些的恒星，排列的形状有点像菱形，常被看作是织女的梭子。</p><p>	牛郎和织女真能在七夕节相会吗？王科超说，牛郎星、织女星二者间距离约为16光年，因此“俩人”一直是“异地恋”，即便在七夕节当天也见不了面。打个通俗点的比方，如果“牛郎”给“织女”打电话，信号需耗时16年才能传到另一方。不仅如此，牛郎星与织女星之间的距离还在增大，这对“异地爱侣”未来将相隔更远。</p><p>	天文研究显示，牛郎星与织女星不仅是“异地恋”，还是“姐弟恋”。王科超介绍，织女星的“年龄”约为4.5亿岁，而牛郎星的“年龄”约为1亿岁。织女星的“个头”和“体重”也比牛郎星要大。织女星的质量约为太阳的2.1倍，赤道直径约为太阳的2.8倍；牛郎星的质量约为太阳的1.7倍，赤道直径约为太阳的1.8倍。因为自转速度极快，织女星和牛郎星都把自己“甩”成了椭球状。</p><p>	值得一提的是，作为北半球第二明亮的恒星，织女星在大约14000年前曾是我们的“北极星”。由于地球自转轴进动，大约12000年后，地球自转轴将再次指向织女星附近。届时这颗亮星与地轴相距约5度，将再次以“北极星”的身份存在，成为史上最明亮的“北极星”。</p><p><br></p>', 'http://192.168.192.149:80/images/b90368a8-738b-475e-bbde-e836a2385ef7.jpg', '0', '0', 1, '1', 3, '2023-08-25 22:05:48', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (35, 2, '原子制造 未来在途', '<p>	什么是原子制造？顾名思义，就是以原子为原料制造所需的材料和器件产品。它是近来被高度关注的原子级制造技术体系中的核心部分之一，将史无前例地实现对原子的逐一精确操控，将原子按需垒砌，构筑原子级细锐、精准、完美，而且具备从物理上远超常规块材物性的产品。微纳制造已成为耳熟能详的高新技术，原子制造将会成为微纳制造后人类制造技术继续微缩发展的趋势，也将成为新物质创制中的极限。</p><p>	我们需要强调的是，原子制造应是原子级的通用化技术体系，具有颠覆性意义。绝非是传统的纳米化制造，也不是现在制造技术的线性、体系化发展。</p><p>	可以想象，原子制造有非常广阔的应用前景。比如以下两个应用场景：</p><p>	极限集成芯片与未来信息器件。当今微纳制造的芯片能力正在趋于极限，而原子制造能够突破这一极限，甚至有可能在集成电路中实现量子计算。一方面，如果我们突破了原子制造技术，让芯片特征尺度沿着微纳制造的路线继续缩小，就可以获得器件性能的千百倍提高。根据公开的数据，IBM的2纳米工艺每平方毫米集成了3.33亿个晶体管，也就是在100纳米×100纳米的面积上集成了3.3个晶体管。如果我们能实现单原子的垒砌、操控、存储和计算，每个原子不到0.5纳米，当代芯片的集成度还有3-5个数量级的提升空间，业已证明，这种芯片还是存算一体的智能芯片。另一方面，单原子器件量子相干性特别好，有可能让器件尺寸远远小于量子相干长度。这将带来一个重要的效果：在一个高相干的量子体积里面，有可能出现成百上千的高质量的量子逻辑比特。很多人相信，50多个高质量的量子逻辑比特就可以实现超越经典的计算能力，实现量子计算机对传统计算机的量子优势。我们知道，量子技术的比特数实际上是一个维度，所以从50位到上千位不是信息量增加了20倍，而是维度上的增加，因而有可能出现计算能力的巨大上涨，这样1毫米大的器件的计算能力，就有可能超过一个当代的超算中心。</p>', 'http://192.168.192.149:80/images/ed34ca12-49b0-4dbf-9560-5b37e0e43d27.jpg', '0', '0', 4, '1', 3, '2023-08-25 22:10:08', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (36, 3, '露营火出圈：一顶帐篷，如何撑起“诗与远方”', '<p>“周末的朋友圈里，人们不是在露营，就是在去露营的路上”，要说眼下最流行的休闲方式，火出圈的露营必须占有一席之地。</p><p>寻一片绿地、搭一块天幕、撑一顶帐篷、备一桌餐品，和三五好友一起谈天说地、品味美食——露营，让人们在钢筋水泥的城市里找到了生活的另一种打开方式，和大自然亲密接触，让“诗与远方”触手可及。</p>', 'http://192.168.192.149:80/images/be052b56-3bb7-4750-b17f-62dad6d7b1f8.jpg', '0', '0', 1, '1', 42, '2023-08-25 22:15:02', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (37, 3, '拍照姿势大全（一）', '<p><strong>1.注意画面留白</strong></p><p>想要避免拍出游客照，需要尽可能地避免将不相关元素纳入画面中，阿姨们在拍照时，要学会留白的构图，为了更好地营造出想象空间和氛围，可以在人物的视线前方留足够地白，并借助三分构图拍摄，画面简洁干净，很有意境美。</p><p><img src=\"blob:http://localhost:8080/f5d4ddda-6a9e-4799-a642-213e3198575e\" data-local=\"blob:http://localhost:8080/f5d4ddda-6a9e-4799-a642-213e3198575e\" alt=\"图像\"></p><p><br></p>', 'http://192.168.192.149:80/images/c82f1a31-5836-4d05-bdd0-d19ed83a4c30.jpg', '0', '0', 1, '1', 41, '2023-08-25 22:18:23', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (38, 4, '还是熟悉的感觉', '<p>       《奥本海默》在诺兰的电影中这未必是很出彩的一部，但作用在我身上依旧是，看得心潮澎湃。完全不能认同文戏太多会显得无聊的看法，在一流的声画处理，剪辑拼接里让人享受毫不显漫长的三小时，两次消音之后的炸响，从无到有，振聋发聩地敲在每一个人的心门，每一件可能影响整个世界的事件发生的时刻，其实和我们现在在经历的每分每秒，同样普通。回过头来，才会被打上“历史性”的标签。</p>', 'http://192.168.192.149:80/images/963dddc8-8819-48e6-b679-b23c436f14c5.jpg', '0', '0', 5, '1', 42, '2023-08-25 22:18:34', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (39, 3, '拍照姿势大全（二）', '<p><strong>2.安静坐下拍侧身</strong></p><p>在姿势方面，不是很推荐阿姨们太过于刻意的摆拍，更建议您以一些日常自然的姿势拍摄，比如气质坐、优雅站等姿势。</p><p>像在一些古色古香的老城区拍摄时，不妨找个干净的地方坐下，并从侧前方拍摄半身照，无需太多姿势技巧的修饰，便能拍出温文尔雅的气质感和韵味，很是好看。</p><p><img src=\"blob:http://localhost:8080/9a6829b3-3249-48bb-ba9c-962bee46cb20\" data-local=\"blob:http://localhost:8080/9a6829b3-3249-48bb-ba9c-962bee46cb20\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/1a394609-b415-4863-8d6a-7355691e9194.jpg', '0', '0', 1, '1', 41, '2023-08-25 22:20:14', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (40, 3, '拍照姿势大全（三）', '<p><strong>3.只拍背影也很美</strong><span class=\"ql-cursor\">﻿</span></p><p>如果拍摄正面，一旦角度和距离把控不好，就会把脸上的小瑕疵和身材的缺点暴露出来，所以在拍旅行照时，不妨多从背面拍，留下神秘感满满的背影给镜头，不论是拍站姿背影还是坐姿背影都可以，怎么拍都不会错。</p>', 'http://192.168.192.149:80/images/6b802346-7253-4e95-84e3-fa4d26ef4667.jpg', '0', '0', 3, '1', 41, '2023-08-25 22:22:38', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (41, 3, '新手钓鱼入门不要慌，这一篇就够了！', '<p>      钓鱼看起来很简单，谁都会钓，但是要想钓好鱼、钓多鱼是很复杂的，它受很多因素制约。我认为主要受四大因素制约。即时间、地点、气候和水情，它是由鱼的本性即趋食、趋温、趋氧决定的。</p><p>      四大因素相会关联，缺一不可。同时具备较好的四要素是钓鱼者的追求。四要素中，时间、地点钓鱼高手可能掌握运用，但气候和水情是钓者不可控因素，只能随机应变了。时间主要是指一天当中或一季度当中最佳的钓鱼时间，也就是鱼每天吃食的活跃时间。</p><p>线组由母线，太空豆，漂座，铅皮座，八字环与子线组成。咱们为了简单易懂从最上说起。</p><p>（1）母线，与钓杆连接的线，一般在1.5-3号左右，分尼龙线和碳素线，尼龙线价格便宜适合新手使用，碳素钱价格昂贵，在此不推荐</p><p>（2）漂座，是插浮标用的，分小号中号和大号，根据浮标标尾的粗细来决定浮标座的大小</p><p>（3）铅皮座，用来裹铅皮用的，钓鱼时可增减铅皮来调整浮标的目数，现在市面上卖的大体有两种，一种是带环的铅皮座，用这个可以代替八字环，等于是带八字环的铅皮座，很方便。还有一种就是普通的铅皮座。</p><p>（4）太空豆，用来在线组在确定铅皮座和浮标座的“卡子”，一袋太空豆一般为6个，正好做一套线组，浮标座上下各两个，铅皮座上下各一个。分大中小三个号，由主线的精细来确定太空豆的大小</p><p>（5）八字环，用来连接主线和子线的连接器，像个“8”字，所以被称为8字环。</p><p>（6）子线，用来绑钩的线，粗细为线组母线的一半大小，比如说用1。5号母线，最好子线是0。8号的，这样做是因为为了保护浮标的安全性，遇到大鱼切线只是线子线，不会影响到浮标。</p><p>（7）鱼钩，初学者用3-4号伊势尼钩就行，无倒刺的，有倒刺的钩如果钩到手的话会非常痛苦的，所以最好用无倒刺钩。</p>', 'http://192.168.192.149:80/images/895517eb-edf4-47c8-8667-a917b8031353.JPG', '0', '0', 4, '1', 44, '2023-08-25 22:23:59', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (42, 4, '喜羊羊大电影（一）', '<p>第一部《喜羊羊与灰太狼之牛气冲天》</p><p>剧情简介：又是新的一年，灰太狼喜上加喜，和老婆红太狼得了宝贝儿子小灰灰。为了给至今未开羊荤的小灰灰打打牙祭，灰太狼再次踏上了前往羊村的征程。此时羊村正在举行百年庆典，但是村长慢羊羊的坐骑蜗牛突然出现异样，经验丰富的村长马上意识到100年前的瘟疫将再次席卷青青草原。为了拯救羊村、替村长排忧解难，喜羊羊他们利用缩小药水进入蜗牛的体内，而灰太狼也尾随而入。谁知他们却分别遭遇了白牛军和黑牛军，一场新的冒险由此展开……</p><p><img src=\"blob:http://localhost:8080/8c54001c-54a3-43b2-a021-feb602319a0c\" data-local=\"blob:http://localhost:8080/8c54001c-54a3-43b2-a021-feb602319a0c\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/124eed34-6f75-41cc-b20f-c3301828ba76.jpg', '0', '0', 3, '1', 45, '2023-08-25 22:32:10', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (43, 2, '相声的传承', '<p>说学逗唱<img src=\"blob:http://localhost:8081/d4228d6c-11ba-41c2-b622-5d267db91691\" data-local=\"blob:http://localhost:8081/d4228d6c-11ba-41c2-b622-5d267db91691\" alt=\"图像\">单口相声 对口相声<img src=\"blob:http://localhost:8081/48ce4f16-f6b7-4766-a27a-3bc37aef9b9c\" data-local=\"blob:http://localhost:8081/48ce4f16-f6b7-4766-a27a-3bc37aef9b9c\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/c4022bbb-7305-4ba4-8d25-b97e97a51f12.png', '0', '0', 7, '1', 43, '2023-08-25 22:38:03', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (44, 4, '喜羊羊大电影（二）', '<p>第二部《喜羊羊与灰太狼之虎虎生威》</p><p>剧情简介：在一个月黑风高的夜晚，灰太狼（张琳 配音）和一众同伴相约，杀进羊村捕捉小肥羊，为老婆和孩子送上情人节的饕餮大宴——涮羊锅。与此同时，羊村正在举行大白菜成功培育一千周年的庆典，节日的欢乐气氛却被突如其来的灰太狼所破坏。正当灰太狼与喜羊羊激战正酣之际，狂暴骄纵的虎威太岁率领众多手下来到羊村，扬言要在这里修建游乐场。转眼之间一座豪华的游乐场拔地而起，小肥羊们被迫沦为这里的工人，连高傲自大的灰太狼也难以幸免。面对这个突如其来的虎威太岁，羊羊和灰太狼被迫联手……</p><p><img src=\"blob:http://localhost:8080/9f3aa959-3ffb-47c0-8b89-3920af211ece\" data-local=\"blob:http://localhost:8080/9f3aa959-3ffb-47c0-8b89-3920af211ece\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/04e50d78-2659-4061-80f5-c5b9c0cfb307.jpg', '0', '0', 4, '1', 45, '2023-08-25 22:40:02', NULL, 0, NULL, '1', 3, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (45, 6, '摘下23款游戏的文案，我拼出了人生的滋味', '<p>《隐形守护者》是New One Studio改编创作的一款角色扮演类冒险游戏，2019年在Steam游戏平台正式发售。</p><p>原作是fantasia创作的视觉小说《潜伏之赤途》，游戏讲述一名留学日本归来的爱国青年潜伏敌后的故事，通过玩家的选择和判断，来体验极为真实的剧情。</p>', 'http://192.168.192.149:80/images/14f7c507-189e-4014-b464-2e3bf2b93329.jpg', '0', '0', 1, '1', 42, '2023-08-25 22:44:34', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (50, 4, '喜羊羊大电影（三）', '<p>第三部《喜羊羊与灰太狼之兔年顶呱呱》</p><p>剧情简介：又是一年春节临近，灰太狼的心中却感受不到半点喜悦。反倒是无比悲凉，老婆红太狼身怀六甲，小灰灰日渐长大，嗷嗷待哺。偏偏灰太狼逮羊的业绩太差，狼堡因此遭到强拆。种种变故，让这个四口之家的顶梁柱叫苦不迭。为了扭转局势，灰太狼带领老婆孩子向羊村开始了绝地大反攻。</p><p><br></p><p>与此同时，青青草原迎来了不速之客——来自月球的兔小弟。从他的口中，羊羊们得知原本为五彩斑斓的糖果所包围的月球被邪恶的苦瓜大王所占领，而喜羊羊更知晓了关于父母的一切。为了找回美丽的糖果世界，羊羊们随着兔小弟飞赴月球，而灰太狼一家也阴差阳错被带了过去。一场全新的冒险就此展开……</p><p><img src=\"blob:http://localhost:8080/a43863bd-f06b-4bd5-b166-89350848cccd\" data-local=\"blob:http://localhost:8080/a43863bd-f06b-4bd5-b166-89350848cccd\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/06722501-8524-48f3-894f-e841799a8b42.jpg', '0', '0', 1, '1', 46, '2023-08-25 22:46:46', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (51, 9, '今天真的好困', '<p>好困好困</p>', '', '0', '0', 2, '1', 43, '2023-08-25 22:46:58', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (52, 8, '喜羊羊好帅呀', '<p>喜羊羊~</p><p><img src=\"blob:http://localhost:8080/013d35ba-b3e6-46ae-b71a-23102cdda087\" data-local=\"blob:http://localhost:8080/013d35ba-b3e6-46ae-b71a-23102cdda087\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/99ddd7bf-34e7-4129-8a67-4ffa9da23748.jpg', '0', '0', 1, '1', 46, '2023-08-25 22:49:14', NULL, 0, NULL, '2', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (53, 2, '小二郎发布', '<p>下水道分钱和fsdncjxksedalsdfjcdsx的重新激活窗口ZAW莪色达色达打发士大夫发山地车必须仔细核查v比较看重宣布安博维广发2和对比度出现过v传说中看到<img src=\"blob:http://localhost:8080/8e8b4453-971d-4a81-b8f7-16b20c951719\" data-local=\"blob:http://localhost:8080/8e8b4453-971d-4a81-b8f7-16b20c951719\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/fec4c725-7093-4611-87f6-20dbfdf361f2.jpg', '0', '0', 4, '1', 48, '2023-08-25 23:03:46', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (54, 5, '音乐之都的回响——荷兰埃拉尔室内乐团音乐会 ', '<p>相比弦乐四重奏，为钢琴四重奏而作的作品出现得较晚，莫扎特是最先尝试这一体裁并留下两部经典之作的作曲家。尽管《g小调第一钢琴四重奏》一度因钢琴声部的技巧过于复杂而遭到冷遇，刚出版时只能打折售卖，但经过音乐家们的重新挖掘和解读，这部带有突破意义的钢琴四重奏作品重新回响于舞台，如今已被赞誉为“想象与和谐的闪光乐曲”。</p><p>或许是受到如莫扎特、贝多芬、勃拉姆斯这样前辈作曲家的影响，越来越多的作曲家开始写作钢琴四重奏这一体裁的作品。16岁时，马勒所创作的《a小调钢琴与弦乐四重奏》已带有浓重的个人风格，忧郁但不乏爆发力，已经初显他后期交响曲创作的厚重与深刻；而法国作曲家福雷15岁所写的《c小调第一钢琴四重奏》则是他青年时期的三大代表作之一，灵动的节奏、丰富的旋律线条以及细致的和声变化，已经预示着他将成为19世纪法国室内乐创作的佼佼者。</p><p>荷兰埃拉尔室内乐团由钢琴家爱德华·詹宁创立，每年都在阿姆斯特丹历史悠久的阿姆斯特尔教堂举办自己的系列音乐会，其透亮的音色和活泼的音乐表达深受世界各地观众的喜爱。9月24日的星期广播音乐会上，他们将通过莫扎特、马勒和福雷所创作的这三部钢琴四重奏作品，带领观众回溯18至19世纪维也纳与巴黎两座音乐之都的风貌。</p>', 'http://192.168.192.149:80/images/4a34bda8-2186-47a7-bfda-e404da8fe048.jpg', '0', '0', 1, '1', 49, '2023-08-25 23:08:41', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (55, 9, '“救过打工人颈椎”的网红按摩仪，成笑话了？ ', '<p>对于职场打工人来说，按摩仪或许是最适配的礼物。内卷的工作、久坐导致僵硬的肩颈，按摩仪精准戳中“社畜”们对健康的焦虑心理。</p><p>按摩仪是“种草”还是“割韭菜”？在社交舆论场上，两方观点此消彼长。</p><p><br></p>', 'http://192.168.192.149:80/images/35f8a1af-1453-4999-a325-4a03b1a34de4.jpg', '0', '0', 1, '1', 49, '2023-08-25 23:10:27', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (56, 9, '秋日最火的100款美甲！疯狂心动，进来收图！ ', '<p>现在秋意渐浓🍁，最适合不过做一些暖色系的款式，镶在指甲上气质肯定up up~</p><p><img src=\"blob:http://localhost:8080/2d350fd4-fdd9-435a-982a-34a7d429e247\" data-local=\"blob:http://localhost:8080/2d350fd4-fdd9-435a-982a-34a7d429e247\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/69baa0c8-0ec1-44ac-8626-51cee78f8f95.JPG', '0', '0', 2, '1', 49, '2023-08-25 23:13:30', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (57, 7, '刀哥带你去锻炼', '<h2>科学的全身锻炼方法（超级干货）</h2><p>你想要均衡地锻炼你全身的肌肉吗？</p><p><img src=\"blob:http://localhost:8080/b339310a-4dcd-4025-bdba-a10244dc61e4\" data-local=\"blob:http://localhost:8080/b339310a-4dcd-4025-bdba-a10244dc61e4\" alt=\"图像\"></p><p>一系列科学的全身锻炼方法对你的肌肉增长和强度提升有着特别有效的锻炼成果。</p><p>如果你每次锻炼都能照顾到全身的肌肉，那么你的全身肌肉能得到平衡的锻炼。</p><p>这一期Jeremy Ethier会介绍种全身肌肉训练方法，涵盖了全身肌肉的锻炼。</p><p>你每周只需要做3次。</p><p><img src=\"blob:http://localhost:8080/1414d41d-a83e-4033-b3c0-3c0ee3683c88\" data-local=\"blob:http://localhost:8080/1414d41d-a83e-4033-b3c0-3c0ee3683c88\" alt=\"图像\"></p><p>为了对你全身肌肉有最有效的帮助，你在每次运动中都要顾及全身的主要肌肉。</p><p>你的肌肉增长和提升强度要成比例的慢慢加强，这样不仅在体型会美观，而且可以减小运动伤害。</p><p><br></p><p><strong>运动一：Barbell bench press</strong></p><p>这个运动主要锻炼的是胸部肌肉，它可以增长你的胸部肌肉的大小和厚度。</p><p>你躺着举杠铃的时候，需要把注意点放在胸骨和胸部中间，同时这个动作也可以锻炼肩膀和三头肌。</p><p>所以你做运动的时候，要把注意力放在下图所示的红色部位。</p><p><img src=\"blob:http://localhost:8080/bafc67c1-5599-4714-9654-b771b6797b11\" data-local=\"blob:http://localhost:8080/bafc67c1-5599-4714-9654-b771b6797b11\" alt=\"图像\"></p><p>很多研究表明，这个运动是所有锻炼胸肌的运动中排名第一。</p><p>你还需要注意在举杠铃的时候要做到全幅度的运动，除非你的肩膀受伤了。这样你的胸肌能锻炼效率提升很多。</p><p><br></p><p><strong>运动二：Barbell back squat</strong></p><p>这个运动可以锻炼到股四头肌、臀肌和其他下肢的运动。</p><p><img src=\"blob:http://localhost:8080/23bd7760-5bbf-48e4-a61d-6b03b240313a\" data-local=\"blob:http://localhost:8080/23bd7760-5bbf-48e4-a61d-6b03b240313a\" alt=\"图像\"></p><p>你在运动时，要注意图中标红线的肌肉，可以加大激活他们的活性。</p><p>同时，也需要注意下蹲的幅度需要大一点，做到位。大腿最好能蹲到与地面平行或者是屁股低于膝盖的位置。这样的锻炼效果比不到位的效果好一倍。</p><p><br></p><p><strong>运动三：Pull up</strong></p><p>引体向上能很好的锻炼背后的肌肉，特别是全身最大的那块背阔肌。他还能锻炼到你的二头肌。</p><p><img src=\"blob:http://localhost:8080/31211b30-ac45-4dee-81f7-b0c6e87374ef\" data-local=\"blob:http://localhost:8080/31211b30-ac45-4dee-81f7-b0c6e87374ef\" alt=\"图像\"></p><p>在做运动的时候，你的关注点要在背后红色部位的肌肉。做引体向上10-12次。</p><p>当你觉得迎体向上对你来说容易了，可以在身上绑上加重带或者是脚之间夹一个哑铃。</p><p>如果你觉得迎体向上对你来说很难，那你可以用阻力带帮助你。把阻力带挂在杠杆上，然后脚踩阻力带，借助它的弹性把你往上抬。</p><p><br></p><p><strong>运动四：Lying dumbbell leg curls</strong></p><p>躺在地上，面朝下。双脚并拢，脚间夹一个哑铃，然后使用大腿后侧腘绳肌的力量，把脚抬起来，然后再慢慢放下去。</p><p><img src=\"blob:http://localhost:8080/cc607359-191b-46f8-84d3-45a18db8a88c\" data-local=\"blob:http://localhost:8080/cc607359-191b-46f8-84d3-45a18db8a88c\" alt=\"图像\"></p><p>有研究表明，前面提到的训练二back squat对于腘绳肌的激活只起到了27%的作用。为了平衡肌肉和防止运动受伤，我们需要额外特别锻炼腘绳肌，就是这个训练的目的。</p><p>在做这个运动的时候，大腿是向下做离心运动，所以你要特别缓慢控制力度。哑铃的选择也要从轻到重，防止运动受伤。</p><p><br></p><p><strong>训练五：Standing overhead press</strong></p><p>虽然这是一个复合运动，但这个动作是主要锻炼上身肌肉。</p><p><img src=\"blob:http://localhost:8080/f2fca719-0d0e-4c79-9a48-8085dadea225\" data-local=\"blob:http://localhost:8080/f2fca719-0d0e-4c79-9a48-8085dadea225\" alt=\"图像\"></p><p>它主要锻炼了你前三角肌、三头肌和前锯肌。你在上举杠铃的时候要把注意力放在图中所示的红色肌肉处。</p><p>这个运动被评为锻炼前三角肌的最好的运动。</p><p>为了进步，你可以一点点加大重量。</p><p>除了站姿，你还可以坐着做这个动作。所以，你可以挑选你舒服的姿势去完成这个动作。</p><p>再介绍一些其他额外的运动，为了训练其他潜在的肌肉，让你的肌肉得到平衡发展。</p><p><br></p><p><strong>总结</strong></p><p>以上介绍的运动，你可以按下面的的指示依次运动。每个运动分别是上身、下身运动的交替进行。</p><p>当然你也可以按照自己的想法去调换次序。</p><p>好的，你Get到了吗？</p><p>干货分享不易，走过路过看过的朋友踩个赞哦。对了，别忘了先收藏。</p>', 'http://192.168.192.149:80/images/2f3196e7-feb6-4998-8139-52bdb09c2cc4.png', '0', '0', 174, '1', 40, '2023-08-25 23:14:10', NULL, 0, NULL, '1', 10, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (58, 9, '明月棹孤舟', '<h1 style=\"text-align: center;\">1.我说</h1><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">	明月棹孤舟</p><p style=\"text-align: center;\">	月是故乡明</p><p style=\"text-align: center;\"><br></p><h2 style=\"text-align: center;\">2.她说</h2><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\">床前明月光</p><p style=\"text-align: center;\">疑是地上霜</p>', 'http://192.168.192.149:80/images/f079fe2e-da6b-46c3-8eef-d091b7640961.jpg', '0', '0', 3, '1', 51, '2023-08-25 23:17:43', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (59, 7, '为了我刀哥发的第一篇博客！', '<p>刀哥yyds！</p><p>刀哥带我锻炼谢谢刀哥！</p>', 'http://192.168.192.149:80/images/c7b94c34-d014-403b-835c-eb7db0c857b6.gif', '0', '0', 3, '1', 53, '2023-08-25 23:27:38', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (60, 9, '今天下雨了', '<p>下雨了</p>', 'http://192.168.192.149:80/images/c613cecd-e5f9-48af-bd7e-85f531d0caf7.jpg', '0', '0', 1, '1', 42, '2023-08-25 23:34:10', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (61, 9, '可以回去了？', '<p>所以可以回去了？</p>', 'http://192.168.192.149:80/images/f9714d81-9053-42b6-af1a-8eac6ba9ef42.jpg', '0', '0', 3, '1', 42, '2023-08-25 23:34:49', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (62, 9, '哈哈哈哈哈', '<p>哈哈哈哈哈笑死了</p>', 'http://192.168.192.149:80/images/597f8081-2444-4ff0-9395-dc1485fb001b.jpg', '0', '0', 1, '1', 42, '2023-08-25 23:37:25', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (63, 9, '晚安啦啦啦', '<p>晚安各位</p>', 'http://192.168.192.149:80/images/6383969d-1aac-47df-a9d6-d70d59d25e0d.jpg', '0', '0', 2, '1', 42, '2023-08-25 23:38:04', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (64, 3, '我爱美羊羊', '<p>美羊羊今天喂我吃冰淇淋了嘻嘻嘻</p><p><img src=\"blob:http://localhost:8080/85979b71-b211-4e43-a55d-f38b9d6ca5c7\" data-local=\"blob:http://localhost:8080/85979b71-b211-4e43-a55d-f38b9d6ca5c7\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/58c94380-34fe-4b47-b407-101775486e72.jpg', '0', '0', 1, '1', 56, '2023-08-25 23:38:27', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (65, 8, '求点赞求关注求收藏', '<p>大哥大姐们行行好，孩子初来乍到想要点赞收藏关注！</p><p><br></p>', 'http://192.168.192.149:80/images/4652e9a7-ca2e-466f-b4ac-be779aa5e82f.jpg', '0', '0', 1, '1', 57, '2023-08-25 23:43:44', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (66, 3, '美羊羊是我的女神', '<p>美羊羊是世界上最美丽的女孩子</p><p><img src=\"blob:http://localhost:8080/5ecf86ac-1df9-4e50-aa78-208777d42b5d\" data-local=\"blob:http://localhost:8080/5ecf86ac-1df9-4e50-aa78-208777d42b5d\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/8a6cb7fa-1487-4c23-bd21-8563c6bb8dfa.jpg', '0', '0', 3, '1', 56, '2023-08-25 23:43:55', NULL, 0, NULL, '1', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (67, 3, '我喜欢的人', '<p style=\"text-align: center;\">昨夜星辰昨夜</p><p>       昨夜的你丢失了昨夜的我,昨夜的你,昨夜的我,风中的飘摇、雨中的美丽。 一束鲜花象征你的背叛,一场游戏 一场梦醒</p>', 'http://192.168.192.149:80/images/e9385900-b1c8-43cc-b215-8ba4bcc2475b.jpg', '0', '0', 14, '1', 58, '2023-08-26 00:17:31', NULL, 0, NULL, '2', 1, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (68, 5, '卡西莫多的礼物', '<p>	华晨宇的首张个人专辑不像别人一般充斥男欢女爱相恋分手，而是彻头彻尾地对自己进行剖析、挖掘和展现，成为一张极度“自恋”的代表作。几首歌都无一例外以第一人称来叙述，讲述“我”对于自己、对于世界的感受。</p><p>	《Why Nobody Fights》作为第一首曝光的歌曲，仅有一句歌词，意在号召大家站起来奋斗。《烟火里的尘埃》由林夕作词，被称作是张国荣《我》的序曲，“我就是我，我只是我”，表达出自我与孤独，而在《微光》中，这种自我保护的孤寂感被放大到极致。但这种孤独非但不难以忍受，反而有着自我享受的趣味，具有电子风的《环游》营造出一人独享一个星球的快感，《我们都是孤独的》更直接地从歌名就表达了每个人都是孤独的。富有戏剧感的《卡西莫多的礼物》和《枕边故事》，则更像是“外星人”了解地球文化的读后感。如任何人写的读后感一样，场景再现不过是个幌子，以人喻己才是最终的目的。</p><p><img src=\"blob:http://localhost:8080/6662a6d6-ee3d-4585-bb79-790fda3b222f\" data-local=\"blob:http://localhost:8080/6662a6d6-ee3d-4585-bb79-790fda3b222f\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/c8e80c08-302d-4238-84ee-b518f8bc0d9b.jpg', '0', '0', 1, '1', 47, '2023-08-26 00:20:09', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (69, 3, '异类好燃好炸', '<p><strong>专辑鉴赏</strong></p><p>	《异类》做到了举重若轻的效果，音乐风格看似“异类”，其实比旁人更冷静、更清醒，也更躁动地唱给这个时代，既满足了80后渴望叛逆的内心，也填补了90后期盼乖张、温顺的情绪。这张专辑风格多样，处处是丰盈多变的节拍，像是趣味舒缓的逗点，分割出不同风格之间的音乐节奏。</p><p><img src=\"blob:http://localhost:8080/040b66fa-9828-4184-992a-95ac21d18077\" data-local=\"blob:http://localhost:8080/040b66fa-9828-4184-992a-95ac21d18077\" alt=\"图像\"></p><p><br></p>', 'http://192.168.192.149:80/images/c9ddbbe3-69c1-41b2-843b-c2f26e6d3b4d.jpg', '0', '0', 1, '1', 47, '2023-08-26 00:27:13', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (70, 9, '帅照哈哈哈', '<p><img src=\"blob:http://localhost:8080/bce35824-ec2d-4eba-b864-d7da6ae0cf97\" data-local=\"blob:http://localhost:8080/bce35824-ec2d-4eba-b864-d7da6ae0cf97\" alt=\"图像\"></p>', '', '0', '0', 3, '1', 1, '2023-08-26 00:48:56', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (71, 3, '薄紅梅99', '<p>比红梅更淡的是粉红色</p><p><img src=\"blob:http://localhost:8080/fa15348d-efdf-42ef-b0d5-a5187230736b\" data-local=\"blob:http://localhost:8080/fa15348d-efdf-42ef-b0d5-a5187230736b\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/e01e176f-e564-491c-b29e-9369217c3554.jpg', '0', '0', 2, '1', 61, '2023-08-26 00:59:01', NULL, 0, NULL, '1', 0, '2023-08-26T00:59:40');
INSERT INTO `article` VALUES (72, 4, 'GGB我的男神！', '<p>可惜你不懂GGB，也不懂我</p><p><img src=\"blob:http://localhost:8080/d75b91da-f74a-4e73-a328-5d03e60e1dd6\" data-local=\"blob:http://localhost:8080/d75b91da-f74a-4e73-a328-5d03e60e1dd6\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/a51db6b0-40fa-4027-9017-43acc76dd8b2.webp', '0', '0', 9, '1', 62, '2023-08-26 01:05:13', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (73, 6, '黑神话悟空', '<p>试试<img src=\"blob:http://localhost:8081/708a4da4-d7b2-408d-a480-ffeb969557d3\" data-local=\"blob:http://localhost:8081/708a4da4-d7b2-408d-a480-ffeb969557d3\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/cac85cf2-08a4-4e6a-aa79-ba0b69926d0f.webp', '0', '0', 1, '1', 1, '2023-08-26 09:41:08', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (74, 3, '你喜欢吃火锅吗', '<p>好久没吃火锅了，好想吃火锅</p>', 'http://192.168.192.149:80/images/908eba76-6fbe-4d40-abaf-abe9318e3653.jpg', '0', '0', 0, '1', 65, '2023-08-26 09:56:42', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (75, 3, '烧烤好吃好吃', '<p>好想吃烧烤呜呜呜呜呜</p>', 'http://192.168.192.149:80/images/cba3efa8-5b62-406d-bcb6-c9de15199633.jpg', '0', '0', 0, '1', 66, '2023-08-26 10:02:48', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (76, 9, '111111', '<p>123</p>', '', '0', '0', 1, '1', 40, '2023-08-26 10:05:18', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (77, 3, '螺蛳粉臭臭臭', '<p>好想吃臭臭的螺蛳粉呜呜呜呜呜呜</p>', 'http://192.168.192.149:80/images/be3f4707-1cd4-4f91-97fd-85df2edc78d4.jpg', '0', '0', 0, '1', 67, '2023-08-26 10:05:25', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (78, 8, '我是重庆妹儿', '<p>我喜欢吃重庆小面，火锅和烧烤<img src=\"blob:http://localhost:8081/bba77ada-9237-4c1e-b176-9b611b43bf9b\" data-local=\"blob:http://localhost:8081/bba77ada-9237-4c1e-b176-9b611b43bf9b\" alt=\"图像\"></p>', 'http://192.168.192.149:80/images/02572354-f1a5-4560-984d-339eebb7df50.jpg', '0', '0', 1, '1', 68, '2023-08-26 10:08:33', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (79, 8, '洪崖洞好玩吗', '<p>大家觉得洪崖洞好玩吗</p>', '', '0', '0', 1, '1', 69, '2023-08-26 10:11:29', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (80, 6, '好久没搓板子了', '<p>几个月没搓鸽游了，手都生了</p>', '', '0', '0', 1, '1', 70, '2023-08-26 10:13:34', NULL, 0, NULL, '1', 0, '2000-01-01T00:00:00');
INSERT INTO `article` VALUES (81, 9, 'biaoti', '<h1>asd</h1><h2>asd</h2><ol><li style=\"text-align: center;\">asd<strong>asdasd<u>asd</u></strong><strong style=\"color: rgb(0, 0, 255);\"><u>asd</u></strong></li><li style=\"text-align: center;\"><img src=\"blob:http://localhost:8081/d76ed862-5f1c-435b-b175-b3dec9102fbf\" data-local=\"blob:http://localhost:8081/d76ed862-5f1c-435b-b175-b3dec9102fbf\" alt=\"图像\"></li></ol>', 'http://192.168.192.149:80/images/a90682ae-b385-4063-8bac-5f37c44467ef.jpg', '0', '0', 3, '1', 1, '2023-08-26 10:58:01', NULL, 0, NULL, '1', 1, '2023-08-26T10:58:20');

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag`  (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `tag_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '标签id',
  PRIMARY KEY (`article_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章标签关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES (1, 4);
INSERT INTO `article_tag` VALUES (2, 1);
INSERT INTO `article_tag` VALUES (2, 4);
INSERT INTO `article_tag` VALUES (3, 4);
INSERT INTO `article_tag` VALUES (3, 5);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名',
  `pid` bigint(200) NULL DEFAULT -1 COMMENT '不用管',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型描述',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '0代表正式发布的，1代表没有正式发布的文章',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '�����' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '工作', -1, NULL, '0');
INSERT INTO `category` VALUES (2, '学习', -1, NULL, '0');
INSERT INTO `category` VALUES (3, '生活', -1, NULL, '0');
INSERT INTO `category` VALUES (4, '电影', -1, NULL, '0');
INSERT INTO `category` VALUES (5, '音乐', -1, NULL, '0');
INSERT INTO `category` VALUES (6, '游戏', -1, NULL, '0');
INSERT INTO `category` VALUES (7, '运动', -1, NULL, '0');
INSERT INTO `category` VALUES (8, '其他', -1, NULL, '0');
INSERT INTO `category` VALUES (9, '默认分类', -1, NULL, '0');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `article_id` bigint(200) NOT NULL,
  `id` bigint(20) NOT NULL COMMENT '用户id',
  `category_id` bigint(20) NULL DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `collect_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (2, 1, 1, '2023-08-22 15:38:23', 2);
INSERT INTO `collect` VALUES (3, 2, 2, '2023-08-22 15:39:43', 3);
INSERT INTO `collect` VALUES (4, 1, 1, '2023-08-22 16:18:46', 4);
INSERT INTO `collect` VALUES (8, 2, 3, '2023-08-23 09:27:11', 7);
INSERT INTO `collect` VALUES (6, 3, 3, '2023-08-24 09:30:06', 8);
INSERT INTO `collect` VALUES (6, 3, 3, '2023-08-24 10:04:20', 11);
INSERT INTO `collect` VALUES (10, 3, 1, '2023-08-24 10:04:41', 12);
INSERT INTO `collect` VALUES (10, 3, 1, '2023-08-24 10:05:12', 13);
INSERT INTO `collect` VALUES (2, 4, 2, '2023-08-24 10:23:59', 14);
INSERT INTO `collect` VALUES (6, 3, 3, '2023-08-24 10:33:50', 15);
INSERT INTO `collect` VALUES (6, 3, 3, '2023-08-24 10:49:07', 16);
INSERT INTO `collect` VALUES (6, 3, 3, '2023-08-24 10:53:04', 17);
INSERT INTO `collect` VALUES (10, 3, 1, '2023-08-24 14:12:07', 26);
INSERT INTO `collect` VALUES (10, 3, 1, '2023-08-24 14:13:59', 34);
INSERT INTO `collect` VALUES (3, 3, 2, '2023-08-24 14:21:48', 48);
INSERT INTO `collect` VALUES (10, 3, 1, '2023-08-24 14:21:55', 52);
INSERT INTO `collect` VALUES (4, 2, 7, '2023-08-24 20:47:20', 67);
INSERT INTO `collect` VALUES (13, 1, 6, '2023-08-24 20:56:39', 68);
INSERT INTO `collect` VALUES (12, 1, 6, '2023-08-25 00:07:21', 94);
INSERT INTO `collect` VALUES (4, 2, 7, '2023-08-25 00:29:43', 116);
INSERT INTO `collect` VALUES (12, 2, 6, '2023-08-25 00:29:51', 117);
INSERT INTO `collect` VALUES (13, 2, 6, '2023-08-25 00:29:53', 118);
INSERT INTO `collect` VALUES (4, 2, 7, '2023-08-25 00:30:14', 120);
INSERT INTO `collect` VALUES (8, 2, 4, '2023-08-25 00:37:20', 124);
INSERT INTO `collect` VALUES (8, 2, 4, '2023-08-25 00:39:19', 125);
INSERT INTO `collect` VALUES (8, 2, 4, '2023-08-25 00:39:35', 126);
INSERT INTO `collect` VALUES (8, 2, 4, '2023-08-25 00:41:27', 127);
INSERT INTO `collect` VALUES (8, 2, 4, '2023-08-25 00:41:30', 128);
INSERT INTO `collect` VALUES (8, 2, 4, '2023-08-25 00:41:36', 130);
INSERT INTO `collect` VALUES (14, 3, 6, '2023-08-25 10:54:53', 134);
INSERT INTO `collect` VALUES (13, 3, 6, '2023-08-25 12:05:11', 139);
INSERT INTO `collect` VALUES (14, 3, 6, '2023-08-25 12:05:36', 142);
INSERT INTO `collect` VALUES (14, 3, 6, '2023-08-25 12:06:48', 143);
INSERT INTO `collect` VALUES (15, 3, 2, '2023-08-25 12:06:52', 144);
INSERT INTO `collect` VALUES (1, 3, 2, '2023-08-25 12:06:55', 145);
INSERT INTO `collect` VALUES (12, 3, 6, '2023-08-25 12:06:56', 146);
INSERT INTO `collect` VALUES (14, 3, 6, '2023-08-25 14:28:48', 147);
INSERT INTO `collect` VALUES (14, 1, 6, '2023-08-25 17:38:56', 150);
INSERT INTO `collect` VALUES (13, 1, 6, '2023-08-25 17:38:58', 151);
INSERT INTO `collect` VALUES (14, 1, 6, '2023-08-25 17:55:42', 153);
INSERT INTO `collect` VALUES (19, 1, 9, '2023-08-25 17:55:48', 154);
INSERT INTO `collect` VALUES (16, 1, 8, '2023-08-25 17:55:52', 155);
INSERT INTO `collect` VALUES (21, 30, 5, '2023-08-25 19:56:07', 156);
INSERT INTO `collect` VALUES (20, 30, 5, '2023-08-25 19:56:14', 157);
INSERT INTO `collect` VALUES (18, 30, 3, '2023-08-25 19:56:20', 158);
INSERT INTO `collect` VALUES (23, 33, 5, '2023-08-25 20:04:14', 159);
INSERT INTO `collect` VALUES (20, 33, 5, '2023-08-25 20:05:01', 160);
INSERT INTO `collect` VALUES (21, 33, 5, '2023-08-25 20:05:11', 161);
INSERT INTO `collect` VALUES (18, 33, 3, '2023-08-25 20:05:56', 162);
INSERT INTO `collect` VALUES (24, 35, 3, '2023-08-25 20:15:17', 163);
INSERT INTO `collect` VALUES (22, 33, 7, '2023-08-25 20:15:24', 164);
INSERT INTO `collect` VALUES (25, 34, 4, '2023-08-25 20:40:24', 165);
INSERT INTO `collect` VALUES (24, 34, 3, '2023-08-25 20:40:29', 166);
INSERT INTO `collect` VALUES (1, 34, 2, '2023-08-25 20:49:14', 167);
INSERT INTO `collect` VALUES (25, 36, 4, '2023-08-25 20:51:20', 168);
INSERT INTO `collect` VALUES (24, 36, 3, '2023-08-25 20:52:13', 169);
INSERT INTO `collect` VALUES (23, 36, 5, '2023-08-25 20:52:23', 170);
INSERT INTO `collect` VALUES (22, 36, 7, '2023-08-25 20:52:44', 171);
INSERT INTO `collect` VALUES (21, 36, 5, '2023-08-25 20:53:15', 172);
INSERT INTO `collect` VALUES (20, 36, 5, '2023-08-25 20:53:21', 173);
INSERT INTO `collect` VALUES (18, 36, 3, '2023-08-25 20:54:12', 174);
INSERT INTO `collect` VALUES (12, 36, 6, '2023-08-25 20:54:21', 175);
INSERT INTO `collect` VALUES (27, 37, 2, '2023-08-25 21:23:46', 176);
INSERT INTO `collect` VALUES (25, 37, 4, '2023-08-25 21:23:49', 177);
INSERT INTO `collect` VALUES (24, 37, 3, '2023-08-25 21:23:59', 178);
INSERT INTO `collect` VALUES (23, 37, 5, '2023-08-25 21:24:06', 179);
INSERT INTO `collect` VALUES (22, 37, 7, '2023-08-25 21:24:57', 180);
INSERT INTO `collect` VALUES (20, 37, 5, '2023-08-25 21:25:04', 181);
INSERT INTO `collect` VALUES (24, 38, 3, '2023-08-25 21:41:02', 182);
INSERT INTO `collect` VALUES (21, 38, 5, '2023-08-25 21:41:11', 183);
INSERT INTO `collect` VALUES (20, 38, 5, '2023-08-25 21:41:40', 184);
INSERT INTO `collect` VALUES (18, 38, 3, '2023-08-25 21:42:20', 185);
INSERT INTO `collect` VALUES (24, 39, 3, '2023-08-25 21:49:38', 186);
INSERT INTO `collect` VALUES (1, 42, 2, '2023-08-25 22:54:47', 187);
INSERT INTO `collect` VALUES (44, 47, 4, '2023-08-25 22:54:53', 188);
INSERT INTO `collect` VALUES (38, 42, 4, '2023-08-25 22:57:34', 189);
INSERT INTO `collect` VALUES (45, 42, 6, '2023-08-25 22:57:39', 190);
INSERT INTO `collect` VALUES (36, 42, 3, '2023-08-25 22:57:42', 191);
INSERT INTO `collect` VALUES (14, 42, 6, '2023-08-25 22:58:05', 192);
INSERT INTO `collect` VALUES (5, 3, 2, '2023-08-25 23:01:40', 197);
INSERT INTO `collect` VALUES (16, 3, 8, '2023-08-25 23:01:47', 198);
INSERT INTO `collect` VALUES (5, 49, 2, '2023-08-25 23:07:22', 199);
INSERT INTO `collect` VALUES (54, 49, 5, '2023-08-25 23:08:45', 200);
INSERT INTO `collect` VALUES (57, 49, 7, '2023-08-25 23:14:22', 201);
INSERT INTO `collect` VALUES (22, 1, 7, '2023-08-25 23:16:51', 202);
INSERT INTO `collect` VALUES (57, 42, 7, '2023-08-25 23:24:32', 209);
INSERT INTO `collect` VALUES (57, 53, 7, '2023-08-25 23:26:09', 211);
INSERT INTO `collect` VALUES (57, 2, 7, '2023-08-25 23:26:12', 212);
INSERT INTO `collect` VALUES (18, 1, 3, '2023-08-25 23:26:15', 213);
INSERT INTO `collect` VALUES (8, 1, 4, '2023-08-25 23:26:29', 214);
INSERT INTO `collect` VALUES (57, 1, 7, '2023-08-25 23:27:30', 215);
INSERT INTO `collect` VALUES (45, 42, 6, '2023-08-25 23:35:23', 216);
INSERT INTO `collect` VALUES (57, 56, 7, '2023-08-25 23:38:35', 217);
INSERT INTO `collect` VALUES (57, 57, 7, '2023-08-25 23:44:05', 218);
INSERT INTO `collect` VALUES (66, 57, 3, '2023-08-25 23:45:37', 219);
INSERT INTO `collect` VALUES (57, 58, 7, '2023-08-26 00:14:03', 221);
INSERT INTO `collect` VALUES (57, 60, 7, '2023-08-26 00:45:09', 222);
INSERT INTO `collect` VALUES (57, 62, 7, '2023-08-26 01:08:56', 223);
INSERT INTO `collect` VALUES (57, 40, 7, '2023-08-26 09:26:31', 224);
INSERT INTO `collect` VALUES (5, 40, 2, '2023-08-26 09:26:38', 225);
INSERT INTO `collect` VALUES (18, 40, 3, '2023-08-26 09:28:00', 226);
INSERT INTO `collect` VALUES (44, 40, 4, '2023-08-26 09:33:07', 227);
INSERT INTO `collect` VALUES (8, 1, 4, '2023-08-26 09:48:43', 228);
INSERT INTO `collect` VALUES (12, 1, 6, '2023-08-26 10:58:08', 230);
INSERT INTO `collect` VALUES (42, 1, 4, '2023-08-26 10:58:49', 231);
INSERT INTO `collect` VALUES (81, 40, 9, '2023-08-26 10:59:56', 232);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '评论类型',
  `article_id` bigint(20) NOT NULL COMMENT '文章id',
  `root_id` bigint(20) NOT NULL DEFAULT -1 COMMENT '根评论id',
  `comment_content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `to_comment_user_id` bigint(20) NULL DEFAULT -1 COMMENT '所回复的目标评论的userid',
  `to_comment_id` bigint(20) NULL DEFAULT -1 COMMENT '回复目标评论id',
  `create_by` bigint(20) NOT NULL,
  `create_timeco` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_by` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除标志（0代表未删除，1代表已删除）',
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '评论了你',
  `sub_com_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '0', 1, -1, 'asS', -1, -1, 1, '2022-01-29 07:59:22', 1, '2022-01-29 07:59:22', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (2, '0', 1, -1, '[哈哈]SDAS', -1, -1, 1, '2022-01-29 08:01:24', 1, '2022-01-29 08:01:24', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (3, '0', 1, -1, '是大多数', -1, -1, 1, '2022-01-29 16:07:24', 1, '2022-01-29 16:07:24', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (4, '0', 1, -1, '撒大声地', -1, -1, 1, '2022-01-29 16:12:09', 1, '2022-01-29 16:12:09', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (5, '0', 1, -1, '你再说什么', -1, -1, 1, '2022-01-29 18:19:56', 1, '2022-01-29 18:19:56', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (6, '0', 1, -1, 'hffd', -1, -1, 1, '2022-01-29 22:13:52', 1, '2022-01-29 22:13:52', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (9, '0', 1, 2, '你说什么', 1, 2, 1, '2022-01-29 22:18:40', 1, '2022-01-29 22:18:40', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (10, '0', 1, 2, '哈哈哈哈[哈哈]', 1, 9, 1, '2022-01-29 22:29:15', 1, '2022-01-29 22:29:15', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (11, '0', 1, 2, 'we全文', 1, 10, 3, '2022-01-29 22:29:55', 1, '2022-01-29 22:29:55', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (12, '0', 1, -1, '王企鹅', -1, -1, 1, '2022-01-29 22:30:20', 1, '2022-01-29 22:30:20', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (13, '0', 1, -1, '什么阿是', -1, -1, 1, '2022-01-29 22:30:56', 1, '2022-01-29 22:30:56', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (14, '0', 1, -1, '新平顶山', -1, -1, 1, '2022-01-29 22:32:51', 1, '2022-01-29 22:32:51', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (15, '0', 1, -1, '2222', -1, -1, 1, '2022-01-29 22:34:38', 1, '2022-01-29 22:34:38', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (16, '0', 1, 2, '3333', 1, 11, 1, '2022-01-29 22:34:47', 1, '2022-01-29 22:34:47', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (17, '0', 1, 2, '回复weqedadsd', 3, 11, 1, '2022-01-29 22:38:00', 1, '2022-01-29 22:38:00', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (18, '0', 1, -1, 'sdasd', -1, -1, 1, '2022-01-29 23:18:19', 1, '2022-01-29 23:18:19', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (19, '0', 1, -1, '111', -1, -1, 1, '2022-01-29 23:22:23', 1, '2022-01-29 23:22:23', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (20, '0', 1, 1, '你说啥？', 1, 1, 1, '2022-01-30 10:06:21', 1, '2022-01-30 10:06:21', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (21, '0', 1, -1, '友链添加个呗', -1, -1, 1, '2022-01-30 10:06:50', 1, '2022-01-30 10:06:50', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (26, '0', 1, -1, 'sda', -1, -1, 2, '2023-08-24 20:16:59', 1, '2023-08-24 20:16:59', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (27, '0', 1, 1, '说你咋地', 1, 20, 1, '2023-08-24 19:37:34', 1, '2023-08-24 19:37:34', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (28, '0', 1, 1, 'sdad', 1, 1, 1, '2023-08-24 19:37:36', 1, '2023-08-24 19:37:36', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (29, '0', 1, -1, '你说是的ad', -1, -1, 1, '2023-08-24 19:37:40', 1, '2023-08-24 19:37:40', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (30, '0', 1, 1, '撒大声地', 1, 1, 1, '2023-08-24 19:37:42', 1, '2023-08-24 19:37:42', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (31, '0', 1, -1, 'teststtetts', -1, -1, 3, '2023-08-21 17:50:13', 1, '2023-08-21 17:50:10', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (32, '0', 1, -1, 'aaa', -1, -1, 3, '2023-08-23 17:31:59', 1, '2023-08-23 17:31:57', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (36, '0', 1, -1, 'message', 3, -1, 3, '2023-08-24 21:09:02', 1, '2023-08-24 21:09:02', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (37, '0', 1, -1, '笑死我了', -1, -1, 1, '2023-08-24 21:09:08', 1, '2023-08-24 21:09:06', 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (38, '0', 1, -1, '试一试', -1, -1, 1, '2023-08-25 15:47:08', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (39, '0', 1, -1, '笑死我了', -1, -1, 30, '2023-08-25 15:47:16', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (40, '0', 1, -1, '你是猪·', -1, -1, 30, '2023-08-25 15:47:41', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (41, '0', 1, -1, '你有病', -1, -1, 30, '2023-08-25 15:47:54', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (42, '0', 1, -1, '你才有病', -1, -1, 30, '2023-08-25 15:48:46', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (43, '0', 16, -1, '牛牛牛', -1, -1, 30, '2023-08-25 16:10:30', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (44, '0', 16, -1, '我啥时候发的', -1, -1, 30, '2023-08-25 19:53:19', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (45, '0', 16, -1, '谁用我的号发的', -1, -1, 30, '2023-08-25 19:53:28', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (46, '0', 20, -1, '我们的十周年！', -1, -1, 33, '2023-08-25 20:04:59', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (47, '0', 21, -1, '竟然是鸟巢四面台！', -1, -1, 33, '2023-08-25 20:05:23', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (48, '0', 18, -1, '鸟巢见！', -1, -1, 33, '2023-08-25 20:06:06', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (49, '0', 24, -1, '你好啊', -1, -1, 3, '2023-08-25 20:16:46', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (52, '0', 1, -1, '别在这里发癫', -1, -1, 33, '2023-08-25 20:24:00', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (57, '0', 25, -1, '你好', -1, -1, 3, '2023-08-25 20:31:08', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (58, '0', 25, -1, NULL, 3, 57, 3, '2023-08-25 20:31:22', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (59, '0', 25, -1, '好好好', -1, -1, 34, '2023-08-25 20:31:27', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (60, '0', 25, -1, NULL, 3, 57, 3, '2023-08-25 20:31:57', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (61, '0', 21, -1, '狠狠地期待了！', -1, -1, 34, '2023-08-25 20:32:42', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (62, '0', 23, -1, '这也太帅了吧！！！', -1, -1, 34, '2023-08-25 20:33:01', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (63, '0', 20, -1, '火星十年，一起回家！', -1, -1, 34, '2023-08-25 20:33:30', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (64, '0', 5, -1, '富贵儿你好', -1, -1, 34, '2023-08-25 20:33:43', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (65, '0', 12, -1, '什么宣传曲，好听吗', -1, -1, 34, '2023-08-25 20:33:57', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (66, '0', 18, -1, '鸟巢见！', -1, -1, 34, '2023-08-25 20:34:08', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (75, '0', 1, -1, 'b溃', -1, -1, 34, '2023-08-25 20:48:53', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (76, '0', 1, -1, '真的会b溃', -1, -1, 34, '2023-08-25 20:49:03', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (77, '0', 1, -1, '调不了一点', -1, -1, 34, '2023-08-25 20:49:08', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (81, '0', 25, -1, '感觉还不错', -1, -1, 36, '2023-08-25 20:51:38', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (82, '0', 24, -1, '哇我per哥长胖了', -1, -1, 36, '2023-08-25 20:52:04', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (84, '0', 23, -1, '谁不爱打碟帅哥啊？', -1, -1, 36, '2023-08-25 20:52:36', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (85, '0', 25, 57, NULL, 3, 57, 3, '2023-08-25 20:52:40', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (86, '0', 22, -1, '李宁好好好', -1, -1, 36, '2023-08-25 20:52:52', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (87, '0', 21, -1, '成为鸟巢四面台观众第一人！！！', -1, -1, 36, '2023-08-25 20:53:13', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (88, '0', 20, -1, '这也太感动了吧', -1, -1, 36, '2023-08-25 20:53:33', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (89, '0', 5, -1, '好好好', -1, -1, 36, '2023-08-25 20:53:56', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (90, '0', 18, -1, '鸟巢见！', -1, -1, 36, '2023-08-25 20:54:11', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (91, '0', 12, -1, '唱来听听', -1, -1, 36, '2023-08-25 20:54:30', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (94, '0', 27, -1, '学java可以当月薪2000的java工程师吗', -1, -1, 36, '2023-08-25 20:55:55', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (101, '0', 25, 81, NULL, 36, 81, 3, '2023-08-25 21:03:31', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (102, '0', 27, -1, '先别草', -1, -1, 36, '2023-08-25 21:03:45', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (103, '0', 21, -1, '我要发疯！！！！！！！！！', -1, -1, 35, '2023-08-25 21:04:16', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (104, '0', 25, 81, NULL, 36, 81, 3, '2023-08-25 21:04:49', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (105, '0', 25, 81, NULL, 36, 81, 1, '2023-08-25 21:06:29', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (106, '0', 25, 81, '牛不i', 36, 81, 3, '2023-08-25 21:09:26', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (107, '0', 25, 81, '哈哈哈', 36, 81, 3, '2023-08-25 21:12:24', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (108, '0', 25, 81, '听哈', 36, 81, 3, '2023-08-25 21:14:40', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (109, '0', 27, 94, '可以', 36, 94, 3, '2023-08-25 21:15:05', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (110, '0', 24, -1, '嘿嘿per哥亲亲', -1, -1, 38, '2023-08-25 21:41:01', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (111, '0', 21, -1, '四面台也太厉害了吧', -1, -1, 38, '2023-08-25 21:41:24', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (112, '0', 20, -1, '火星尊嘟很美好', -1, -1, 38, '2023-08-25 21:41:59', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (113, '0', 18, -1, '鸟巢见！', -1, -1, 38, '2023-08-25 21:42:18', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (114, '0', 13, -1, '怎么办', -1, -1, 38, '2023-08-25 21:42:32', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (115, '0', 28, -1, '很会画[/赞][/赞]', -1, -1, 39, '2023-08-25 21:49:13', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (116, '0', 28, -1, '太可爱了！', -1, -1, 3, '2023-08-25 21:59:05', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (117, '0', 35, -1, '这是什么意思，阿姨我不太懂', -1, -1, 41, '2023-08-25 22:12:19', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (118, '0', 33, -1, '刀哥最近挺勤快，啥时候一起出来跳舞', -1, -1, 41, '2023-08-25 22:12:59', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (119, '0', 28, -1, '小朋友画的不错', -1, -1, 41, '2023-08-25 22:13:29', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (120, '0', 24, -1, '谁家的小猫，可爱', -1, -1, 41, '2023-08-25 22:14:20', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (121, '0', 44, -1, '喜羊羊~', -1, -1, 46, '2023-08-25 22:43:27', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (122, '0', 42, -1, '喜羊羊是一个真正的男子汉~', -1, -1, 46, '2023-08-25 22:43:56', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (123, '0', 1, -1, '什么东西', -1, -1, 42, '2023-08-25 22:53:30', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (124, '0', 1, -1, '已经11点了', -1, -1, 42, '2023-08-25 22:53:41', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (125, '0', 41, -1, '哇讲的也太好了吧', -1, -1, 42, '2023-08-25 22:55:20', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (126, '0', 14, -1, '', -1, -1, 42, '2023-08-25 22:58:03', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (127, '0', 14, -1, '占个楼', -1, -1, 42, '2023-08-25 22:58:17', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (128, '0', 53, -1, '小二郎是谁', -1, -1, 40, '2023-08-25 23:04:38', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (129, '0', 20, -1, '哇', -1, -1, 3, '2023-08-25 23:04:55', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (130, '0', 5, -1, '富贵你好', -1, -1, 49, '2023-08-25 23:07:20', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (131, '0', 57, -1, '哇刀哥讲的真好', -1, -1, 49, '2023-08-25 23:14:42', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (132, '0', 57, 131, '坚持锻炼', 49, 131, 49, '2023-08-25 23:14:56', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (133, '0', 57, 131, '第一', 49, 131, 49, '2023-08-25 23:15:01', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (134, '0', 57, 131, '谢谢小姐姐的支持', 49, 131, 40, '2023-08-25 23:17:08', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (135, '0', 57, -1, '大家和刀哥一起运动吧', -1, -1, 40, '2023-08-25 23:17:26', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (136, '0', 57, -1, '刀哥我来了！', -1, -1, 51, '2023-08-25 23:22:18', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (137, '0', 57, -1, '支持刀哥！', -1, -1, 51, '2023-08-25 23:22:26', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (138, '0', 57, 135, '好的支持刀哥', 40, 135, 42, '2023-08-25 23:23:45', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (139, '0', 1, -1, '哈哈哈', -1, -1, 1, '2023-08-25 23:24:22', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (140, '0', 57, -1, '点赞收藏评论三连', -1, -1, 42, '2023-08-25 23:24:29', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (141, '0', 1, 1, '哈哈哈', 1, 1, 1, '2023-08-25 23:24:33', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (142, '0', 1, 20, '你好啊', 1, 20, 1, '2023-08-25 23:24:41', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (143, '0', 1, 142, '你好啊', 1, 142, 1, '2023-08-25 23:24:47', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (144, '0', 57, -1, '家人们冲冲冲', -1, -1, 53, '2023-08-25 23:25:56', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (145, '0', 57, -1, '把刀哥顶到最热！', -1, -1, 53, '2023-08-25 23:26:03', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (146, '0', 57, 145, '加油干！', 53, 145, 42, '2023-08-25 23:26:37', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (147, '0', 57, 131, '刀哥为什么只回复小姐姐', 49, 131, 1, '2023-08-25 23:28:27', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (148, '0', 59, -1, '谢谢虾仁的支持[抱拳][抱拳]', -1, -1, 40, '2023-08-25 23:28:29', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (149, '0', 58, -1, '好文采', -1, -1, 40, '2023-08-25 23:28:54', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (150, '0', 57, -1, '刀哥666', -1, -1, 56, '2023-08-25 23:38:40', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (151, '0', 66, -1, '同意！', -1, -1, 57, '2023-08-25 23:44:53', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (152, '0', 66, -1, '同意同意同意！', -1, -1, 57, '2023-08-25 23:45:50', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (153, '0', 66, -1, '有品位', -1, -1, 57, '2023-08-25 23:45:54', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (154, '0', 57, -1, '刀哥我来了', -1, -1, 57, '2023-08-26 00:00:30', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (155, '0', 57, 135, '支持刀哥！', 40, 135, 42, '2023-08-26 00:09:35', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (156, '0', 1, 143, '哈哈哈', 1, 143, 1, '2023-08-26 00:11:02', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (157, '0', 57, 135, '好好好', 40, 135, 40, '2023-08-26 00:11:06', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (158, '0', 57, -1, '刀哥支持你！', -1, -1, 58, '2023-08-26 00:14:20', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (159, '0', 57, 135, '支持刀哥！', 40, 135, 58, '2023-08-26 00:14:39', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (160, '0', 57, 131, '哈哈哈', 49, 131, 1, '2023-08-26 01:10:16', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (161, '0', 57, 147, '刀哥真棒', 1, 147, 1, '2023-08-26 01:10:25', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (162, '0', 57, 161, '羡慕倒戈', 1, 161, 1, '2023-08-26 01:10:33', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (163, '0', 57, 162, '牛逼', 1, 162, 1, '2023-08-26 01:10:38', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (164, '0', 57, 158, '好谢谢你的支持！', 58, 158, 40, '2023-08-26 01:57:37', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (165, '0', 57, 158, '我就要支持你', 58, 158, 40, '2023-08-26 01:57:55', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (166, '0', 57, 165, '好', 40, 165, 1, '2023-08-26 01:59:15', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (167, '0', 14, 126, '1', 42, 126, 40, '2023-08-26 09:32:54', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (168, '0', 1, 37, '你在笑啥', 1, 37, 64, '2023-08-26 09:52:14', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (169, '0', 1, 139, '哈哈哈哈哈哈哈哈哈', 1, 139, 64, '2023-08-26 09:52:44', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (170, '0', 1, 156, '回复了你', 1, 156, 1, '2023-08-26 09:53:36', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (171, '0', 1, 19, '你是1吗', 1, 19, 67, '2023-08-26 10:04:15', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (172, '0', 81, -1, '花姨好美', -1, -1, 40, '2023-08-26 11:00:35', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (173, '0', 1, 143, '发布', 1, 143, 1, '2023-08-26 11:01:46', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (174, '0', 81, 172, '谢谢你刀哥', 40, 172, 1, '2023-08-26 11:06:49', NULL, NULL, 0, '评论了你', NULL);
INSERT INTO `comment` VALUES (175, '0', 81, 174, '不用谢！', 1, 174, 40, '2023-08-26 11:07:04', NULL, NULL, 0, '评论了你', NULL);

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `fan_id` bigint(20) NOT NULL COMMENT '粉丝id',
  `up_id` bigint(20) NOT NULL COMMENT '博主id',
  `follow_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `follow_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`follow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES (1, 30, '2023-08-25 20:19:07', 34, NULL);
INSERT INTO `follow` VALUES (1, 2, '2023-08-25 20:19:34', 35, NULL);
INSERT INTO `follow` VALUES (33, 1, '2023-08-25 20:23:14', 37, NULL);
INSERT INTO `follow` VALUES (34, 33, '2023-08-25 20:32:27', 38, NULL);
INSERT INTO `follow` VALUES (34, 30, '2023-08-25 20:32:32', 39, NULL);
INSERT INTO `follow` VALUES (34, 1, '2023-08-25 20:33:35', 40, NULL);
INSERT INTO `follow` VALUES (36, 34, '2023-08-25 20:51:22', 41, NULL);
INSERT INTO `follow` VALUES (36, 33, '2023-08-25 20:52:19', 42, NULL);
INSERT INTO `follow` VALUES (36, 30, '2023-08-25 20:53:01', 43, NULL);
INSERT INTO `follow` VALUES (36, 1, '2023-08-25 20:53:51', 44, NULL);
INSERT INTO `follow` VALUES (36, 3, '2023-08-25 20:54:48', 45, NULL);
INSERT INTO `follow` VALUES (35, 3, '2023-08-25 21:00:48', 46, NULL);
INSERT INTO `follow` VALUES (35, 33, '2023-08-25 21:00:58', 47, NULL);
INSERT INTO `follow` VALUES (35, 30, '2023-08-25 21:01:09', 48, NULL);
INSERT INTO `follow` VALUES (37, 3, '2023-08-25 21:23:44', 49, NULL);
INSERT INTO `follow` VALUES (37, 34, '2023-08-25 21:23:50', 50, NULL);
INSERT INTO `follow` VALUES (37, 33, '2023-08-25 21:24:00', 51, NULL);
INSERT INTO `follow` VALUES (37, 30, '2023-08-25 21:25:02', 52, NULL);
INSERT INTO `follow` VALUES (38, 3, '2023-08-25 21:40:40', 53, NULL);
INSERT INTO `follow` VALUES (38, 34, '2023-08-25 21:40:44', 54, NULL);
INSERT INTO `follow` VALUES (38, 33, '2023-08-25 21:40:48', 55, NULL);
INSERT INTO `follow` VALUES (38, 30, '2023-08-25 21:41:11', 56, NULL);
INSERT INTO `follow` VALUES (39, 38, '2023-08-25 21:48:26', 57, NULL);
INSERT INTO `follow` VALUES (3, 38, '2023-08-25 21:49:04', 58, NULL);
INSERT INTO `follow` VALUES (39, 33, '2023-08-25 21:49:21', 59, NULL);
INSERT INTO `follow` VALUES (39, 30, '2023-08-25 21:49:46', 60, NULL);
INSERT INTO `follow` VALUES (40, 3, '2023-08-25 22:07:06', 61, NULL);
INSERT INTO `follow` VALUES (42, 3, '2023-08-25 22:13:06', 62, NULL);
INSERT INTO `follow` VALUES (42, 33, '2023-08-25 22:13:13', 63, NULL);
INSERT INTO `follow` VALUES (41, 40, '2023-08-25 22:23:41', 64, NULL);
INSERT INTO `follow` VALUES (43, 1, '2023-08-25 22:23:42', 65, NULL);
INSERT INTO `follow` VALUES (41, 42, '2023-08-25 22:23:46', 66, NULL);
INSERT INTO `follow` VALUES (46, 45, '2023-08-25 22:43:22', 67, NULL);
INSERT INTO `follow` VALUES (42, 30, '2023-08-25 22:54:53', 68, NULL);
INSERT INTO `follow` VALUES (47, 45, '2023-08-25 22:54:54', 69, NULL);
INSERT INTO `follow` VALUES (42, 38, '2023-08-25 22:55:00', 70, NULL);
INSERT INTO `follow` VALUES (3, 1, '2023-08-25 23:05:35', 76, NULL);
INSERT INTO `follow` VALUES (49, 40, '2023-08-25 23:15:06', 77, NULL);
INSERT INTO `follow` VALUES (42, 40, '2023-08-25 23:23:15', 82, NULL);
INSERT INTO `follow` VALUES (53, 40, '2023-08-25 23:26:09', 83, NULL);
INSERT INTO `follow` VALUES (40, 41, '2023-08-25 23:27:01', 84, NULL);
INSERT INTO `follow` VALUES (40, 49, '2023-08-25 23:27:03', 85, NULL);
INSERT INTO `follow` VALUES (40, 42, '2023-08-25 23:27:06', 86, NULL);
INSERT INTO `follow` VALUES (40, 53, '2023-08-25 23:27:09', 87, NULL);
INSERT INTO `follow` VALUES (56, 40, '2023-08-25 23:38:41', 88, NULL);
INSERT INTO `follow` VALUES (56, 40, '2023-08-25 23:38:43', 89, NULL);
INSERT INTO `follow` VALUES (56, 1, '2023-08-25 23:39:11', 91, NULL);
INSERT INTO `follow` VALUES (42, 34, '2023-08-25 23:39:16', 92, NULL);
INSERT INTO `follow` VALUES (57, 40, '2023-08-25 23:44:03', 93, NULL);
INSERT INTO `follow` VALUES (57, 56, '2023-08-25 23:45:57', 94, NULL);
INSERT INTO `follow` VALUES (40, 30, '2023-08-26 00:01:29', 95, NULL);
INSERT INTO `follow` VALUES (58, 40, '2023-08-26 00:14:05', 96, NULL);
INSERT INTO `follow` VALUES (60, 40, '2023-08-26 00:45:10', 98, NULL);
INSERT INTO `follow` VALUES (62, 40, '2023-08-26 01:10:41', 103, NULL);
INSERT INTO `follow` VALUES (40, 58, '2023-08-26 09:32:22', 104, NULL);
INSERT INTO `follow` VALUES (3, 34, '2023-08-26 09:39:56', 106, NULL);
INSERT INTO `follow` VALUES (63, 40, '2023-08-26 09:45:55', 107, NULL);
INSERT INTO `follow` VALUES (63, 30, '2023-08-26 09:47:04', 109, NULL);
INSERT INTO `follow` VALUES (1, 42, '2023-08-26 09:50:03', 111, NULL);
INSERT INTO `follow` VALUES (64, 1, '2023-08-26 09:53:19', 113, NULL);
INSERT INTO `follow` VALUES (64, 40, '2023-08-26 09:53:25', 114, NULL);
INSERT INTO `follow` VALUES (67, 1, '2023-08-26 10:04:00', 115, NULL);
INSERT INTO `follow` VALUES (1, 45, '2023-08-26 10:58:45', 116, NULL);
INSERT INTO `follow` VALUES (1, 33, '2023-08-26 11:03:54', 117, NULL);

-- ----------------------------
-- Table structure for like_
-- ----------------------------
DROP TABLE IF EXISTS `like_`;
CREATE TABLE `like_`  (
  `article_id` bigint(200) NOT NULL COMMENT '文章id',
  `liked_post_id` bigint(20) NOT NULL COMMENT '点赞的用户id',
  `status` int(255) NULL DEFAULT NULL COMMENT '1表示点赞有效，0表示点赞无效',
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `liked_user_id` bigint(11) NULL DEFAULT NULL COMMENT '被点赞的用户id',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '点赞时间',
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '点赞了你',
  PRIMARY KEY (`like_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of like_
-- ----------------------------
INSERT INTO `like_` VALUES (23, 33, NULL, 40, NULL, '2023-08-25 20:04:13', '点赞了你');
INSERT INTO `like_` VALUES (20, 33, NULL, 41, NULL, '2023-08-25 20:05:00', '点赞了你');
INSERT INTO `like_` VALUES (21, 33, NULL, 42, NULL, '2023-08-25 20:05:10', '点赞了你');
INSERT INTO `like_` VALUES (18, 33, NULL, 43, NULL, '2023-08-25 20:05:55', '点赞了你');
INSERT INTO `like_` VALUES (24, 35, NULL, 44, 33, '2023-08-25 20:15:15', '点赞了你');
INSERT INTO `like_` VALUES (22, 33, NULL, 45, NULL, '2023-08-25 20:15:23', '点赞了你');
INSERT INTO `like_` VALUES (5, 33, NULL, 46, NULL, '2023-08-25 20:22:04', '点赞了你');
INSERT INTO `like_` VALUES (25, 34, NULL, 47, NULL, '2023-08-25 20:31:21', '点赞了你');
INSERT INTO `like_` VALUES (22, 34, NULL, 48, NULL, '2023-08-25 20:32:25', '点赞了你');
INSERT INTO `like_` VALUES (21, 34, NULL, 49, NULL, '2023-08-25 20:32:34', '点赞了你');
INSERT INTO `like_` VALUES (24, 34, NULL, 50, NULL, '2023-08-25 20:40:28', '点赞了你');
INSERT INTO `like_` VALUES (1, 34, NULL, 51, NULL, '2023-08-25 20:49:12', '点赞了你');
INSERT INTO `like_` VALUES (25, 36, NULL, 52, NULL, '2023-08-25 20:51:19', '点赞了你');
INSERT INTO `like_` VALUES (24, 36, NULL, 53, NULL, '2023-08-25 20:52:12', '点赞了你');
INSERT INTO `like_` VALUES (23, 36, NULL, 54, NULL, '2023-08-25 20:52:18', '点赞了你');
INSERT INTO `like_` VALUES (22, 36, NULL, 55, NULL, '2023-08-25 20:52:43', '点赞了你');
INSERT INTO `like_` VALUES (21, 36, NULL, 56, NULL, '2023-08-25 20:53:14', '点赞了你');
INSERT INTO `like_` VALUES (20, 36, NULL, 57, NULL, '2023-08-25 20:53:21', '点赞了你');
INSERT INTO `like_` VALUES (5, 36, NULL, 58, NULL, '2023-08-25 20:53:47', '点赞了你');
INSERT INTO `like_` VALUES (18, 36, NULL, 59, NULL, '2023-08-25 20:54:11', '点赞了你');
INSERT INTO `like_` VALUES (12, 36, NULL, 60, NULL, '2023-08-25 20:54:20', '点赞了你');
INSERT INTO `like_` VALUES (27, 36, NULL, 61, NULL, '2023-08-25 20:54:45', '点赞了你');
INSERT INTO `like_` VALUES (15, 3, NULL, 62, NULL, '2023-08-25 21:20:47', '点赞了你');
INSERT INTO `like_` VALUES (27, 37, NULL, 63, NULL, '2023-08-25 21:23:45', '点赞了你');
INSERT INTO `like_` VALUES (25, 37, NULL, 64, NULL, '2023-08-25 21:23:49', '点赞了你');
INSERT INTO `like_` VALUES (24, 37, NULL, 65, NULL, '2023-08-25 21:23:58', '点赞了你');
INSERT INTO `like_` VALUES (23, 37, NULL, 66, NULL, '2023-08-25 21:24:06', '点赞了你');
INSERT INTO `like_` VALUES (22, 37, NULL, 67, NULL, '2023-08-25 21:24:57', '点赞了你');
INSERT INTO `like_` VALUES (20, 37, NULL, 68, NULL, '2023-08-25 21:25:03', '点赞了你');
INSERT INTO `like_` VALUES (11, 37, NULL, 69, NULL, '2023-08-25 21:25:24', '点赞了你');
INSERT INTO `like_` VALUES (24, 38, NULL, 70, NULL, '2023-08-25 21:41:01', '点赞了你');
INSERT INTO `like_` VALUES (21, 38, NULL, 71, NULL, '2023-08-25 21:41:09', '点赞了你');
INSERT INTO `like_` VALUES (20, 38, NULL, 73, NULL, '2023-08-25 21:41:40', '点赞了你');
INSERT INTO `like_` VALUES (18, 38, NULL, 74, NULL, '2023-08-25 21:42:19', '点赞了你');
INSERT INTO `like_` VALUES (27, 38, NULL, 75, NULL, '2023-08-25 21:42:36', '点赞了你');
INSERT INTO `like_` VALUES (30, 39, NULL, 76, NULL, '2023-08-25 21:48:28', '点赞了你');
INSERT INTO `like_` VALUES (28, 39, NULL, 77, NULL, '2023-08-25 21:48:46', '点赞了你');
INSERT INTO `like_` VALUES (24, 39, NULL, 78, NULL, '2023-08-25 21:49:20', '点赞了你');
INSERT INTO `like_` VALUES (20, 39, NULL, 79, NULL, '2023-08-25 21:49:45', '点赞了你');
INSERT INTO `like_` VALUES (28, 3, NULL, 80, NULL, '2023-08-25 21:59:09', '点赞了你');
INSERT INTO `like_` VALUES (34, 40, NULL, 81, NULL, '2023-08-25 22:07:18', '点赞了你');
INSERT INTO `like_` VALUES (33, 41, NULL, 82, NULL, '2023-08-25 22:13:12', '点赞了你');
INSERT INTO `like_` VALUES (44, 46, NULL, 83, NULL, '2023-08-25 22:43:28', '点赞了你');
INSERT INTO `like_` VALUES (42, 46, NULL, 84, NULL, '2023-08-25 22:43:34', '点赞了你');
INSERT INTO `like_` VALUES (1, 42, NULL, 85, NULL, '2023-08-25 22:54:46', '点赞了你');
INSERT INTO `like_` VALUES (50, 47, NULL, 86, NULL, '2023-08-25 22:54:49', '点赞了你');
INSERT INTO `like_` VALUES (44, 47, NULL, 87, NULL, '2023-08-25 22:54:53', '点赞了你');
INSERT INTO `like_` VALUES (14, 42, NULL, 88, NULL, '2023-08-25 22:58:04', '点赞了你');
INSERT INTO `like_` VALUES (5, 3, NULL, 89, NULL, '2023-08-25 23:01:38', '点赞了你');
INSERT INTO `like_` VALUES (16, 3, NULL, 90, NULL, '2023-08-25 23:01:47', '点赞了你');
INSERT INTO `like_` VALUES (13, 3, NULL, 91, NULL, '2023-08-25 23:01:57', '点赞了你');
INSERT INTO `like_` VALUES (53, 40, NULL, 92, NULL, '2023-08-25 23:04:22', '点赞了你');
INSERT INTO `like_` VALUES (5, 49, NULL, 93, NULL, '2023-08-25 23:07:21', '点赞了你');
INSERT INTO `like_` VALUES (57, 49, NULL, 95, NULL, '2023-08-25 23:14:21', '点赞了你');
INSERT INTO `like_` VALUES (57, 2, NULL, 96, NULL, '2023-08-25 23:22:01', '点赞了你');
INSERT INTO `like_` VALUES (57, 42, NULL, 97, NULL, '2023-08-25 23:24:30', '点赞了你');
INSERT INTO `like_` VALUES (57, 53, NULL, 99, NULL, '2023-08-25 23:26:08', '点赞了你');
INSERT INTO `like_` VALUES (59, 40, NULL, 101, NULL, '2023-08-25 23:28:02', '点赞了你');
INSERT INTO `like_` VALUES (58, 40, NULL, 102, NULL, '2023-08-25 23:28:53', '点赞了你');
INSERT INTO `like_` VALUES (12, 53, NULL, 103, NULL, '2023-08-25 23:35:27', '点赞了你');
INSERT INTO `like_` VALUES (57, 56, NULL, 104, NULL, '2023-08-25 23:38:35', '点赞了你');
INSERT INTO `like_` VALUES (66, 57, NULL, 106, NULL, '2023-08-25 23:44:41', '点赞了你');
INSERT INTO `like_` VALUES (65, 40, NULL, 107, NULL, '2023-08-25 23:50:07', '点赞了你');
INSERT INTO `like_` VALUES (15, 57, NULL, 110, 2, '2023-08-25 23:53:02', '点赞了你');
INSERT INTO `like_` VALUES (27, 57, NULL, 114, 3, '2023-08-25 23:58:48', '点赞了你');
INSERT INTO `like_` VALUES (57, 57, NULL, 115, 40, '2023-08-25 23:59:28', '点赞了你');
INSERT INTO `like_` VALUES (4, 1, NULL, 118, 1, '2023-08-26 00:22:46', '点赞了你');
INSERT INTO `like_` VALUES (12, 1, NULL, 119, 1, '2023-08-26 00:23:00', '点赞了你');
INSERT INTO `like_` VALUES (32, 60, NULL, 120, 40, '2023-08-26 00:45:15', '点赞了你');
INSERT INTO `like_` VALUES (57, 62, NULL, 121, NULL, '2023-08-26 01:08:55', '点赞了你');
INSERT INTO `like_` VALUES (5, 1, NULL, 126, NULL, '2023-08-26 09:10:23', '点赞了你');
INSERT INTO `like_` VALUES (5, 40, NULL, 136, NULL, '2023-08-26 09:31:23', '点赞了你');
INSERT INTO `like_` VALUES (18, 40, NULL, 137, NULL, '2023-08-26 09:31:29', '点赞了你');
INSERT INTO `like_` VALUES (15, 40, NULL, 138, NULL, '2023-08-26 09:31:44', '点赞了你');
INSERT INTO `like_` VALUES (24, 40, NULL, 139, NULL, '2023-08-26 09:31:51', '点赞了你');
INSERT INTO `like_` VALUES (23, 40, NULL, 140, NULL, '2023-08-26 09:31:56', '点赞了你');
INSERT INTO `like_` VALUES (25, 40, NULL, 141, NULL, '2023-08-26 09:32:01', '点赞了你');
INSERT INTO `like_` VALUES (27, 40, NULL, 142, NULL, '2023-08-26 09:32:07', '点赞了你');
INSERT INTO `like_` VALUES (20, 40, NULL, 143, NULL, '2023-08-26 09:32:13', '点赞了你');
INSERT INTO `like_` VALUES (67, 40, NULL, 144, NULL, '2023-08-26 09:32:20', '点赞了你');
INSERT INTO `like_` VALUES (43, 40, NULL, 145, NULL, '2023-08-26 09:32:39', '点赞了你');
INSERT INTO `like_` VALUES (14, 40, NULL, 146, NULL, '2023-08-26 09:32:47', '点赞了你');
INSERT INTO `like_` VALUES (44, 40, NULL, 147, NULL, '2023-08-26 09:33:05', '点赞了你');
INSERT INTO `like_` VALUES (57, 40, NULL, 149, NULL, '2023-08-26 09:34:06', '点赞了你');
INSERT INTO `like_` VALUES (28, 40, NULL, 150, NULL, '2023-08-26 09:34:20', '点赞了你');
INSERT INTO `like_` VALUES (57, 1, NULL, 151, 40, '2023-08-26 09:38:26', '点赞了你');
INSERT INTO `like_` VALUES (1, 1, NULL, 152, 1, '2023-08-26 09:38:44', '点赞了你');
INSERT INTO `like_` VALUES (57, 63, NULL, 153, 40, '2023-08-26 09:45:54', '点赞了你');
INSERT INTO `like_` VALUES (18, 63, NULL, 154, 30, '2023-08-26 09:47:00', '点赞了你');
INSERT INTO `like_` VALUES (1, 64, NULL, 155, 1, '2023-08-26 09:51:54', '点赞了你');
INSERT INTO `like_` VALUES (61, 66, NULL, 156, 42, '2023-08-26 10:02:18', '点赞了你');
INSERT INTO `like_` VALUES (1, 40, NULL, 157, 1, '2023-08-26 10:03:56', '点赞了你');
INSERT INTO `like_` VALUES (81, 40, NULL, 158, 1, '2023-08-26 10:59:55', '点赞了你');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `tag_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名字',
  `create_by` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `del_flag` int(1) NULL DEFAULT 0,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号',
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
  `avatar` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地区',
  `follow_count` int(20) NULL DEFAULT 0,
  `fans_count` int(20) NULL DEFAULT 0,
  `school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `visitor` bigint(255) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'ppp', '花开富贵', '666666', '1111', '13036336625', '男', 'http://192.168.192.149:80/images/1011e035-5749-4457-a342-2f8dd6964a36.jpg', NULL, '北京市', 5, 8, NULL, '麻友请注意：老李老伴去看儿子和儿媳妇了，这周去老李家打麻将。老李电话：15432811546', 20, 244);
INSERT INTO `user` VALUES (2, 'bay2', '铲屎大将军', '123456', '1111', '17211552254', '男', 'https://p.qqan.com/up/2020-7/2020070908330795532.jpg', NULL, '重庆市', 0, 1, NULL, '社会我刀哥，人狠话不多', 23, 50);
INSERT INTO `user` VALUES (3, 'qlz', '一身王八气', '222222', '1111', '13036336625', '女', 'http://192.168.192.149:80/images/3f34312b-ac10-4bd0-b97d-93066f33f252.jpg', NULL, '内蒙古自治区', 3, 6, NULL, '天天开心哟', 23, 51);
INSERT INTO `user` VALUES (20, 'aaa', '绛橘色的日落', '123456', NULL, '18544562144', '女', 'https://pic2.zhimg.com/v2-29e4c773b7f61219405b357f9d88bca0_r.jpg', NULL, '重庆市', 1, 0, NULL, NULL, 99, 0);
INSERT INTO `user` VALUES (21, '111', '一身王八气', '123456', NULL, '17255115544', '女', 'https://pic2.zhimg.com/v2-008eab4248514de591ee88b3e4346821_r.jpg', '2023-08-23 09:50:07', '北京市', 0, 0, NULL, NULL, 21, 0);
INSERT INTO `user` VALUES (22, '111', '啥啥啥', '123456', NULL, '17255621455', '女', 'https://babyimage.cdn.bcebos.com/common/aa90ce5c1c06bd9455723bf48ef33aad000560000560.jpg', '2023-08-23 10:07:22', '辽宁省', 0, 0, NULL, NULL, 75, 0);
INSERT INTO `user` VALUES (23, 'kkk', 'koko', '123456', NULL, '17222654552', '女', 'https://ts1.cn.mm.bing.net/th/id/R-C.a6ac72417d61452aa3f4cb048a50073e?rik=vGDliJl29n9SGg&riu=http%3a%2f%2fpic.616pic.com%2fys_bnew_img%2f00%2f45%2f55%2f4Jhl2aK61N.jpg&ehk=wpw4j6KaVYT5sbbWuXPWQmo29D%2buUqt%2bqfdMRAR3NVE%3d&risl=&pid=ImgRaw&r=0', '2023-08-23 16:06:02', '安徽省', 0, 0, NULL, NULL, 63, 0);
INSERT INTO `user` VALUES (24, '112', '啊啊啊', '123456', NULL, '19845522553', '女', 'https://p.qqan.com/up/2021-8/16281288748286100.png', '2023-08-23 17:25:53', '上海市', 0, 0, NULL, NULL, 32, 0);
INSERT INTO `user` VALUES (25, '111', '珍惜这段缘', '123456', NULL, '17852156215', '女', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.sFnucElKFVdVmZuE3eO54gHaHa?pid=ImgDet&rs=1', '2023-08-23 19:12:43', '吉林省', 0, 0, NULL, NULL, 22, 0);
INSERT INTO `user` VALUES (26, 'tyh', '往事随风', '123456', NULL, '17521562215', '男', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.sFnucElKFVdVmZuE3eO54gHaHa?pid=ImgDet&rs=1', '2023-08-23 19:12:59', '北京市', 0, 0, NULL, NULL, 20, 0);
INSERT INTO `user` VALUES (27, 'ccy', 'ccy', '123456', NULL, '17522551152', '男', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.sFnucElKFVdVmZuE3eO54gHaHa?pid=ImgDet&rs=1', '2023-08-23 19:20:47', '北京市', 0, 0, NULL, NULL, 20, 0);
INSERT INTO `user` VALUES (28, 'zyt', 'zyt', '6789876', NULL, '17625511452', '女', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.sFnucElKFVdVmZuE3eO54gHaHa?pid=ImgDet&rs=1', '2023-08-23 19:39:42', '北京市', 0, 0, NULL, NULL, 20, 0);
INSERT INTO `user` VALUES (29, 'syz2023', '今天你睡觉了吗', '123456', NULL, '18792255652', '男', 'http://192.168.192.149:80/images/3a90601f-ea5b-427b-bc88-46f1a7dcaf6f.jpg', '2023-08-24 17:31:49', '山东省', 0, 0, NULL, '我爱睡觉', 23, 0);
INSERT INTO `user` VALUES (30, '0xCFyu275', 'huahua', 'hcy0207', NULL, '18622485252', '女', 'http://192.168.192.149:80/images/22ba1a34-8892-4abd-8964-c61563221ebf.jpg', '2023-08-25 10:52:38', '河北省', 0, 10, NULL, '宇宇', 22, 0);
INSERT INTO `user` VALUES (31, 'qlz1', '每天都想放假', '123456', NULL, '15183359152', '男', 'http://192.168.192.149:80/images/829fede4-aa6a-4007-9fcc-9574f23b5a39.jpg', '2023-08-25 10:54:32', '河南省', 0, 0, NULL, '好想好想好想好想好想好想放假啊', 21, 0);
INSERT INTO `user` VALUES (32, '0xCF与275', '0xCF与275', 'hcy999', NULL, '18211221145', '女', 'http://192.168.192.149:80/images/040f6e46-880d-48c8-a3d4-e7709521cf72.jpg', '2023-08-25 11:06:04', '湖北省', 0, 0, NULL, NULL, 33, 0);
INSERT INTO `user` VALUES (33, '滑滑鱼', '滑滑鱼', 'hcy666', NULL, '15522551014', '女', 'http://192.168.192.149:80/images/4d966f07-0ceb-4744-814b-d49214ae3b1b.jpg', '2023-08-25 11:18:41', '北京市', 1, 8, NULL, '将有一天你会遇见美好的一切', 22, 0);
INSERT INTO `user` VALUES (34, '滑滑宇宇', '滑滑宇宇', 'hcy888', NULL, '19892255332', '女', 'http://192.168.192.149:80/images/a6cffaca-ea1c-467e-b641-cb24bcbf9df8.jpg', '2023-08-25 11:21:54', '四川省', 3, 5, NULL, '夕阳西下，接通电话，是你啊', 30, 0);
INSERT INTO `user` VALUES (35, '修狗', '修狗', '111111', NULL, '18522556632', '女', 'http://192.168.192.149:80/images/0740e293-1fa2-4a01-b691-3ce9184eb589.jpg', '2023-08-25 18:09:27', '上海市', 3, 0, NULL, '111', 11, 0);
INSERT INTO `user` VALUES (36, 'yu', 'yu.', 'hcyyuyu', NULL, '17553246624', '男', 'http://192.168.192.149:80/images/c1e60442-959e-4550-acef-94783f9f5ce2.jpg', '2023-08-25 20:50:32', '山西省', 5, 0, NULL, '\"哟哟哟哟哟\"', 28, 0);
INSERT INTO `user` VALUES (37, 'yuyu', 'yuyu', 'yuyuyu', NULL, '17852244562', '女', 'http://192.168.192.149:80/images/05ca62b5-fb39-431f-adc4-2b30b508c740.jpg', '2023-08-25 21:13:11', '内蒙古自治区', 4, 0, NULL, '傲天傲天一飞冲天', 31, 0);
INSERT INTO `user` VALUES (38, 'hua', 'hua', 'huahuayu', NULL, '14863489524', '女', 'http://192.168.192.149:80/images/6aca4283-57c5-419f-a3c2-62cabd2f73c5.jpeg', '2023-08-25 21:27:05', '辽宁省', 4, 3, NULL, '花落时相遇', 42, 0);
INSERT INTO `user` VALUES (39, '小花', '小花', 'xiaohua', NULL, '17745658522', '女', 'http://192.168.192.149:80/images/55f64cd6-77bb-47e1-9a1b-b8d2acc848c0.jpg', '2023-08-25 21:47:45', '吉林省', 3, 0, NULL, '种小花', 68, 0);
INSERT INTO `user` VALUES (40, '刀哥', '刀哥', 'shidaoge', NULL, '13036336625', '男', 'http://192.168.192.149:80/images/76a05304-87c0-4066-867a-d668f5598348.gif', '2023-08-25 21:50:47', '黑龙江省', 7, 12, NULL, '社会我刀哥，人狠话不多', 59, 191);
INSERT INTO `user` VALUES (41, '花姨', '花姨', 'shihuayi', NULL, '18225854485', '女', 'http://192.168.192.149:80/images/37efafd1-0de0-4925-9304-bf98ca2db9eb.jpg', '2023-08-25 22:09:03', '上海市', 2, 1, NULL, '心如止水', 64, 0);
INSERT INTO `user` VALUES (42, 'zzz', '喜气洋羊子', '123456', NULL, '19632546658', '女', 'http://192.168.192.149:80/images/324403e6-dd25-47ae-ade8-8d84b97689fa.jpg', '2023-08-25 22:12:16', '广西壮族自治区', 6, 3, NULL, '没心没肺，快乐加倍', 45, 0);
INSERT INTO `user` VALUES (43, 'cold', 'cold', '123456', NULL, '15310887598', '男', 'http://192.168.192.149:80/images/4019c175-7e45-4456-93ba-f077c9a9ada6.jpg', '2023-08-25 22:15:22', '陕西省', 1, 0, NULL, '我精神状态特别好！！！！！！！！！！', 20, 0);
INSERT INTO `user` VALUES (44, 'yyy', '钓鱼爱好者', '123456', NULL, '17865244656', '男', 'http://192.168.192.149:80/images/2b57cb16-b575-4d9e-990c-e9d0768ef920.jpg', '2023-08-25 22:22:14', '云南省', 0, 0, NULL, '分享各种钓鱼技巧', 55, 0);
INSERT INTO `user` VALUES (45, '喜羊羊', '喜羊羊', 'xiyangyang', NULL, '17863225556', '男', 'http://192.168.192.149:80/images/1ab64590-a6fc-4568-a565-76a2eb0d3db8.jpg', '2023-08-25 22:25:10', '江苏省', 0, 3, NULL, '我是聪明的喜羊羊', 9, 0);
INSERT INTO `user` VALUES (46, '美羊羊', '美羊羊', 'meiyangyang', NULL, '17862257485', '女', 'http://192.168.192.149:80/images/8f09876c-72e3-45dc-943d-f6f651d4d56d.jpg', '2023-08-25 22:41:14', '浙江省', 1, 0, NULL, '沸羊羊你八嘎rua路', 8, 0);
INSERT INTO `user` VALUES (47, '今天也爱华晨宇', '今天也爱华晨宇', 'huachenyu', NULL, '17856258563', '女', 'http://192.168.192.149:80/images/92600f14-4f9a-4779-a644-f6afff95a0e8.jpg', '2023-08-25 22:50:37', '福建省', 1, 0, NULL, '今天也爱华晨宇了吗', 18, 0);
INSERT INTO `user` VALUES (48, 'xel', '小二郎', '123456', NULL, '18786226566', '男', NULL, '2023-08-25 23:01:58', '澳门', 0, 0, NULL, NULL, 89, 0);
INSERT INTO `user` VALUES (49, 'asa', '小姐姐', '123456', NULL, '19862255624', '女', 'http://192.168.192.149:80/images/5f0d68a1-82a4-4102-b14a-a6d46d2dbfd0.jpg', '2023-08-25 23:06:31', '宁夏回族自治区', 1, 1, NULL, '今天天气真好', 20, 0);
INSERT INTO `user` VALUES (50, 'cold', 'cold', '123456', NULL, '18255622555', '男', NULL, '2023-08-25 23:12:41', '河北省', 0, 0, NULL, NULL, 20, 0);
INSERT INTO `user` VALUES (51, 'myzgz', '明月棹孤舟', '123456', NULL, '18952547855', '女', 'http://192.168.192.149:80/images/8450c707-67ce-400e-9281-c99c6cff22cb.jpg', '2023-08-25 23:13:28', '宁夏回族自治区', 0, 0, NULL, NULL, 47, 0);
INSERT INTO `user` VALUES (52, 'cold1', 'cold1', '123456', NULL, '18932545655', '男', NULL, '2023-08-25 23:15:40', '北京市', 0, 0, NULL, NULL, 20, 0);
INSERT INTO `user` VALUES (53, 'xrbzy', '虾仁不眨眼', '123456', NULL, '11722443726', '男', 'http://192.168.192.149:80/images/ba9ced0f-f44a-4be1-9b61-98155c81bd77.jpg', '2023-08-25 23:25:37', '天津市', 1, 1, NULL, NULL, 52, 0);
INSERT INTO `user` VALUES (54, 'aaa', '皮蛋瘦肉粥', '123456', NULL, '18222455652', '男', NULL, '2023-08-25 23:27:31', '台湾', 0, 0, NULL, NULL, 33, 0);
INSERT INTO `user` VALUES (55, 'aaa', '皮蛋乔治瘦肉粥', '123456', NULL, '18795254785', '男', NULL, '2023-08-25 23:30:49', '福建省', 0, 0, NULL, NULL, 33, 0);
INSERT INTO `user` VALUES (56, '沸羊羊', '沸羊羊', 'feiyangyang', NULL, '17621451175', '男', 'http://192.168.192.149:80/images/cdd62f6d-7bb3-4094-acdd-b480f21e819f.jpg', '2023-08-25 23:34:53', '安徽省', 3, 1, NULL, '美羊羊~我的美羊羊', 12, 0);
INSERT INTO `user` VALUES (57, 'zzwlz', '芝芝为荔枝', '123456', NULL, '12231411455', '女', 'http://192.168.192.149:80/images/299da41e-aa29-4e80-8af4-38f049aad2e7.gif', '2023-08-25 23:40:09', '湖南省', 2, 0, NULL, NULL, 11, 0);
INSERT INTO `user` VALUES (58, 'qjyy', '清酒与友', '123456', NULL, '13326527363', '女', 'http://192.168.192.149:80/images/3b182f9f-8614-4bbb-98c2-a8787141d879.jpg', '2023-08-26 00:13:07', '湖南省', 1, 1, NULL, NULL, 23, 0);
INSERT INTO `user` VALUES (59, 'cmqklb', '草莓巧克力棒', '123456', NULL, '15526327776', '男', 'http://192.168.192.149:80/images/2aee9fae-3896-4010-a8c1-e43574883cf9.jpg', '2023-08-26 00:25:05', '重庆市', 0, 0, NULL, NULL, 17, 0);
INSERT INTO `user` VALUES (60, 'wc', '忘れ潮', '123456', NULL, '12223547373', '女', 'http://192.168.192.149:80/images/c25c946b-32b2-4d05-800c-64f4c2b91bef.jpg', '2023-08-26 00:44:39', '上海市', 1, 0, NULL, NULL, 28, 0);
INSERT INTO `user` VALUES (61, 'bhm', '薄紅梅', '123456', NULL, '17727375833', '男', 'http://192.168.192.149:80/images/967b9336-757d-4cd7-87a9-36e6f92f5212.jpg', '2023-08-26 00:53:28', '北京市', 0, 0, NULL, NULL, 19, 2);
INSERT INTO `user` VALUES (62, 'GGB', 'GGB', '123456', NULL, '15527234843', '男', 'http://192.168.192.149:80/images/41b0f432-d6aa-46c4-8dbb-140216b9cbea.webp', '2023-08-26 00:59:09', '上海市', 1, 0, NULL, NULL, 37, 9);
INSERT INTO `user` VALUES (63, '慢羊羊', '慢羊羊', 'manyangyang', NULL, '13574625514', '男', 'http://192.168.192.149:80/images/a1107f98-03e9-4e0d-9f8d-9cb9cb2a33e2.jpg', '2023-08-26 09:31:44', '山东省', 2, 0, NULL, '村长我呀', 65, 0);
INSERT INTO `user` VALUES (64, '重庆小面', '重庆小面', 'xiaomian', NULL, '18685346925', '女', 'http://192.168.192.149:80/images/c526fd46-998a-44d7-a8ce-6a62ff9af561.jpg', '2023-08-26 09:48:49', '重庆市', 2, 0, NULL, '好吃', 32, 0);
INSERT INTO `user` VALUES (65, '重庆火锅', '重庆火锅', 'huoguo', NULL, '17575421534', '女', 'http://192.168.192.149:80/images/640e1f1f-638b-4586-9a4a-0f3489c6e816.jpg', '2023-08-26 09:54:18', '重庆市', 0, 0, NULL, '火锅真好吃', 52, 0);
INSERT INTO `user` VALUES (66, '重庆烧烤', '重庆烧烤', 'shaokao', NULL, '18935425632', '男', NULL, '2023-08-26 10:00:36', '重庆市', 0, 0, NULL, NULL, 41, NULL);
INSERT INTO `user` VALUES (67, '螺蛳粉', '螺蛳粉', 'luosifen', NULL, '18535426528', '男', NULL, '2023-08-26 10:03:43', '广西壮族自治区', 1, 0, NULL, NULL, 19, NULL);
INSERT INTO `user` VALUES (68, '重庆妹儿', '重庆妹儿', 'chongqing', NULL, '18536452596', '女', NULL, '2023-08-26 10:07:40', '重庆市', 0, 0, NULL, NULL, 23, 0);
INSERT INTO `user` VALUES (69, '洪崖洞', '洪崖洞', 'hongyadong', NULL, '18536475284', '男', NULL, '2023-08-26 10:10:48', '重庆市', 0, 0, NULL, NULL, 23, 0);
INSERT INTO `user` VALUES (70, 'phigros', 'phigros', 'phigros', NULL, '18536472546', '女', NULL, '2023-08-26 10:12:27', '新疆维吾尔自治区', 0, 0, NULL, NULL, 18, 0);

-- ----------------------------
-- Table structure for view
-- ----------------------------
DROP TABLE IF EXISTS `view`;
CREATE TABLE `view`  (
  `view_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`view_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 832 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of view
-- ----------------------------
INSERT INTO `view` VALUES (1, 1, 2);
INSERT INTO `view` VALUES (2, 1, 1);
INSERT INTO `view` VALUES (3, 1, 3);
INSERT INTO `view` VALUES (5, 2, 4);
INSERT INTO `view` VALUES (6, 1, 1);
INSERT INTO `view` VALUES (7, 1, 5);
INSERT INTO `view` VALUES (8, 4, 5);
INSERT INTO `view` VALUES (9, 4, 5);
INSERT INTO `view` VALUES (10, 4, 5);
INSERT INTO `view` VALUES (11, 4, 5);
INSERT INTO `view` VALUES (12, 4, 5);
INSERT INTO `view` VALUES (13, 4, 5);
INSERT INTO `view` VALUES (14, 4, 5);
INSERT INTO `view` VALUES (15, 4, 5);
INSERT INTO `view` VALUES (16, 5, 5);
INSERT INTO `view` VALUES (17, 5, 5);
INSERT INTO `view` VALUES (18, 5, 5);
INSERT INTO `view` VALUES (19, 5, 5);
INSERT INTO `view` VALUES (20, 5, 5);
INSERT INTO `view` VALUES (21, 1, 2);
INSERT INTO `view` VALUES (22, 14, 3);
INSERT INTO `view` VALUES (23, 14, 3);
INSERT INTO `view` VALUES (24, 14, 3);
INSERT INTO `view` VALUES (25, 14, 3);
INSERT INTO `view` VALUES (26, 14, 3);
INSERT INTO `view` VALUES (27, 1, 3);
INSERT INTO `view` VALUES (28, 1, 3);
INSERT INTO `view` VALUES (29, 1, 3);
INSERT INTO `view` VALUES (30, 1, 3);
INSERT INTO `view` VALUES (31, 1, 3);
INSERT INTO `view` VALUES (32, 14, 3);
INSERT INTO `view` VALUES (33, 15, 3);
INSERT INTO `view` VALUES (34, 1, 3);
INSERT INTO `view` VALUES (35, 1, 3);
INSERT INTO `view` VALUES (36, 15, 3);
INSERT INTO `view` VALUES (37, 1, 3);
INSERT INTO `view` VALUES (38, 15, 3);
INSERT INTO `view` VALUES (39, 1, 1);
INSERT INTO `view` VALUES (40, 1, 1);
INSERT INTO `view` VALUES (41, 1, 1);
INSERT INTO `view` VALUES (42, 15, 1);
INSERT INTO `view` VALUES (43, 1, 1);
INSERT INTO `view` VALUES (44, 5, 1);
INSERT INTO `view` VALUES (45, 5, 1);
INSERT INTO `view` VALUES (46, 5, 1);
INSERT INTO `view` VALUES (47, 1, 1);
INSERT INTO `view` VALUES (48, 1, 1);
INSERT INTO `view` VALUES (49, 1, 1);
INSERT INTO `view` VALUES (50, 5, 1);
INSERT INTO `view` VALUES (51, 12, 1);
INSERT INTO `view` VALUES (52, 8, 1);
INSERT INTO `view` VALUES (53, 16, 1);
INSERT INTO `view` VALUES (54, 15, 1);
INSERT INTO `view` VALUES (55, 1, 1);
INSERT INTO `view` VALUES (56, 1, 1);
INSERT INTO `view` VALUES (57, 1, 1);
INSERT INTO `view` VALUES (58, 1, 1);
INSERT INTO `view` VALUES (59, 16, 1);
INSERT INTO `view` VALUES (60, 16, 1);
INSERT INTO `view` VALUES (61, 1, 1);
INSERT INTO `view` VALUES (62, 1, 30);
INSERT INTO `view` VALUES (63, 15, 1);
INSERT INTO `view` VALUES (64, 15, 1);
INSERT INTO `view` VALUES (65, 1, 1);
INSERT INTO `view` VALUES (66, 1, 30);
INSERT INTO `view` VALUES (67, 16, 30);
INSERT INTO `view` VALUES (68, 15, 30);
INSERT INTO `view` VALUES (69, 15, 1);
INSERT INTO `view` VALUES (70, 15, 1);
INSERT INTO `view` VALUES (71, 15, 1);
INSERT INTO `view` VALUES (72, 15, 1);
INSERT INTO `view` VALUES (73, 15, 1);
INSERT INTO `view` VALUES (74, 1, 1);
INSERT INTO `view` VALUES (75, 1, 1);
INSERT INTO `view` VALUES (76, 1, 1);
INSERT INTO `view` VALUES (77, 1, 1);
INSERT INTO `view` VALUES (78, 1, 1);
INSERT INTO `view` VALUES (79, 15, 30);
INSERT INTO `view` VALUES (80, 15, 30);
INSERT INTO `view` VALUES (81, 15, 30);
INSERT INTO `view` VALUES (82, 15, 1);
INSERT INTO `view` VALUES (83, 15, 30);
INSERT INTO `view` VALUES (84, 16, 30);
INSERT INTO `view` VALUES (85, 16, 1);
INSERT INTO `view` VALUES (86, 16, 30);
INSERT INTO `view` VALUES (87, 16, 30);
INSERT INTO `view` VALUES (88, 1, 30);
INSERT INTO `view` VALUES (89, 1, 1);
INSERT INTO `view` VALUES (90, 16, 1);
INSERT INTO `view` VALUES (91, 1, 30);
INSERT INTO `view` VALUES (92, 16, 1);
INSERT INTO `view` VALUES (93, 1, 30);
INSERT INTO `view` VALUES (94, 15, 1);
INSERT INTO `view` VALUES (95, 15, 1);
INSERT INTO `view` VALUES (96, 1, 1);
INSERT INTO `view` VALUES (97, 1, 1);
INSERT INTO `view` VALUES (98, 1, 1);
INSERT INTO `view` VALUES (99, 1, 30);
INSERT INTO `view` VALUES (100, 5, 30);
INSERT INTO `view` VALUES (101, 5, 30);
INSERT INTO `view` VALUES (102, 5, 1);
INSERT INTO `view` VALUES (103, 5, 1);
INSERT INTO `view` VALUES (104, 5, 1);
INSERT INTO `view` VALUES (105, 5, 1);
INSERT INTO `view` VALUES (106, 5, 1);
INSERT INTO `view` VALUES (107, 5, 1);
INSERT INTO `view` VALUES (108, 1, 1);
INSERT INTO `view` VALUES (109, 18, 30);
INSERT INTO `view` VALUES (110, 18, 30);
INSERT INTO `view` VALUES (111, 18, 30);
INSERT INTO `view` VALUES (112, 18, 30);
INSERT INTO `view` VALUES (113, 5, 1);
INSERT INTO `view` VALUES (114, 1, 1);
INSERT INTO `view` VALUES (115, 5, 1);
INSERT INTO `view` VALUES (116, 5, 1);
INSERT INTO `view` VALUES (117, 5, 1);
INSERT INTO `view` VALUES (118, 5, 1);
INSERT INTO `view` VALUES (119, 5, 1);
INSERT INTO `view` VALUES (120, 1, 1);
INSERT INTO `view` VALUES (121, 1, 1);
INSERT INTO `view` VALUES (122, 1, 1);
INSERT INTO `view` VALUES (123, 1, 1);
INSERT INTO `view` VALUES (124, 5, 1);
INSERT INTO `view` VALUES (125, 1, 1);
INSERT INTO `view` VALUES (126, 5, 1);
INSERT INTO `view` VALUES (127, 5, 1);
INSERT INTO `view` VALUES (128, 5, 1);
INSERT INTO `view` VALUES (129, 18, 30);
INSERT INTO `view` VALUES (130, 18, 30);
INSERT INTO `view` VALUES (131, 5, 30);
INSERT INTO `view` VALUES (132, 5, 30);
INSERT INTO `view` VALUES (133, 5, 30);
INSERT INTO `view` VALUES (134, 5, 1);
INSERT INTO `view` VALUES (135, 12, 30);
INSERT INTO `view` VALUES (136, 5, 1);
INSERT INTO `view` VALUES (137, 5, 1);
INSERT INTO `view` VALUES (138, 5, 1);
INSERT INTO `view` VALUES (139, 1, 1);
INSERT INTO `view` VALUES (140, 5, 30);
INSERT INTO `view` VALUES (141, 5, 1);
INSERT INTO `view` VALUES (142, 5, 1);
INSERT INTO `view` VALUES (143, 5, 1);
INSERT INTO `view` VALUES (144, 12, 1);
INSERT INTO `view` VALUES (145, 18, 30);
INSERT INTO `view` VALUES (146, 1, 1);
INSERT INTO `view` VALUES (147, 18, 30);
INSERT INTO `view` VALUES (148, 18, 30);
INSERT INTO `view` VALUES (149, 18, 30);
INSERT INTO `view` VALUES (150, 18, 30);
INSERT INTO `view` VALUES (151, 18, 30);
INSERT INTO `view` VALUES (152, 11, 1);
INSERT INTO `view` VALUES (153, 18, 30);
INSERT INTO `view` VALUES (154, 13, 1);
INSERT INTO `view` VALUES (155, 18, 30);
INSERT INTO `view` VALUES (156, 18, 30);
INSERT INTO `view` VALUES (157, 18, 30);
INSERT INTO `view` VALUES (158, 18, 30);
INSERT INTO `view` VALUES (159, 16, 1);
INSERT INTO `view` VALUES (160, 18, 30);
INSERT INTO `view` VALUES (161, 18, 30);
INSERT INTO `view` VALUES (162, 18, 30);
INSERT INTO `view` VALUES (163, 18, 30);
INSERT INTO `view` VALUES (164, 18, 30);
INSERT INTO `view` VALUES (165, 18, 30);
INSERT INTO `view` VALUES (166, 18, 30);
INSERT INTO `view` VALUES (167, 18, 30);
INSERT INTO `view` VALUES (168, 18, 30);
INSERT INTO `view` VALUES (169, 18, 30);
INSERT INTO `view` VALUES (170, 18, 30);
INSERT INTO `view` VALUES (171, 1, 1);
INSERT INTO `view` VALUES (172, 18, 30);
INSERT INTO `view` VALUES (173, 18, 30);
INSERT INTO `view` VALUES (174, 1, 1);
INSERT INTO `view` VALUES (175, 1, 1);
INSERT INTO `view` VALUES (176, 5, 1);
INSERT INTO `view` VALUES (177, 5, 1);
INSERT INTO `view` VALUES (178, 5, 1);
INSERT INTO `view` VALUES (179, 5, 1);
INSERT INTO `view` VALUES (180, 5, 1);
INSERT INTO `view` VALUES (181, 5, 1);
INSERT INTO `view` VALUES (182, 18, 30);
INSERT INTO `view` VALUES (183, 18, 30);
INSERT INTO `view` VALUES (184, 18, 30);
INSERT INTO `view` VALUES (185, 18, 30);
INSERT INTO `view` VALUES (186, 5, 1);
INSERT INTO `view` VALUES (187, 1, 1);
INSERT INTO `view` VALUES (188, 5, 1);
INSERT INTO `view` VALUES (189, 5, 1);
INSERT INTO `view` VALUES (190, 1, 1);
INSERT INTO `view` VALUES (191, 15, 1);
INSERT INTO `view` VALUES (192, 18, 30);
INSERT INTO `view` VALUES (193, 18, 30);
INSERT INTO `view` VALUES (194, 5, 1);
INSERT INTO `view` VALUES (195, 18, 30);
INSERT INTO `view` VALUES (196, 1, 1);
INSERT INTO `view` VALUES (197, 8, 1);
INSERT INTO `view` VALUES (198, 8, 1);
INSERT INTO `view` VALUES (199, 18, 30);
INSERT INTO `view` VALUES (200, 18, 30);
INSERT INTO `view` VALUES (201, 18, 30);
INSERT INTO `view` VALUES (202, 18, 30);
INSERT INTO `view` VALUES (203, 18, 30);
INSERT INTO `view` VALUES (204, 18, 30);
INSERT INTO `view` VALUES (205, 18, 30);
INSERT INTO `view` VALUES (206, 19, 1);
INSERT INTO `view` VALUES (207, 19, 1);
INSERT INTO `view` VALUES (208, 5, 1);
INSERT INTO `view` VALUES (209, 5, 1);
INSERT INTO `view` VALUES (210, 1, 1);
INSERT INTO `view` VALUES (211, 18, 30);
INSERT INTO `view` VALUES (212, 18, 30);
INSERT INTO `view` VALUES (213, 5, 3);
INSERT INTO `view` VALUES (214, 1, 3);
INSERT INTO `view` VALUES (215, 5, 3);
INSERT INTO `view` VALUES (216, 12, 3);
INSERT INTO `view` VALUES (217, 1, 3);
INSERT INTO `view` VALUES (218, 5, 1);
INSERT INTO `view` VALUES (219, 1, 3);
INSERT INTO `view` VALUES (220, 20, 30);
INSERT INTO `view` VALUES (221, 20, 30);
INSERT INTO `view` VALUES (222, 16, 30);
INSERT INTO `view` VALUES (223, 18, 30);
INSERT INTO `view` VALUES (224, 20, 30);
INSERT INTO `view` VALUES (225, 21, 30);
INSERT INTO `view` VALUES (226, 20, 30);
INSERT INTO `view` VALUES (227, 18, 30);
INSERT INTO `view` VALUES (228, 18, 30);
INSERT INTO `view` VALUES (229, 18, 30);
INSERT INTO `view` VALUES (230, 22, 33);
INSERT INTO `view` VALUES (231, 22, 33);
INSERT INTO `view` VALUES (232, 22, 33);
INSERT INTO `view` VALUES (233, 21, 33);
INSERT INTO `view` VALUES (234, 18, 33);
INSERT INTO `view` VALUES (235, 22, 35);
INSERT INTO `view` VALUES (236, 22, 35);
INSERT INTO `view` VALUES (237, 22, 35);
INSERT INTO `view` VALUES (238, 22, 35);
INSERT INTO `view` VALUES (239, 23, 33);
INSERT INTO `view` VALUES (240, 1, 33);
INSERT INTO `view` VALUES (241, 20, 33);
INSERT INTO `view` VALUES (242, 23, 35);
INSERT INTO `view` VALUES (243, 21, 33);
INSERT INTO `view` VALUES (244, 18, 33);
INSERT INTO `view` VALUES (245, 23, 35);
INSERT INTO `view` VALUES (246, 5, 33);
INSERT INTO `view` VALUES (247, 23, 3);
INSERT INTO `view` VALUES (248, 23, 1);
INSERT INTO `view` VALUES (249, 1, 3);
INSERT INTO `view` VALUES (250, 21, 33);
INSERT INTO `view` VALUES (251, 23, 1);
INSERT INTO `view` VALUES (252, 20, 35);
INSERT INTO `view` VALUES (253, 23, 35);
INSERT INTO `view` VALUES (254, 5, 3);
INSERT INTO `view` VALUES (255, 22, 35);
INSERT INTO `view` VALUES (256, 22, 35);
INSERT INTO `view` VALUES (257, 23, 35);
INSERT INTO `view` VALUES (258, 23, 3);
INSERT INTO `view` VALUES (259, 22, 35);
INSERT INTO `view` VALUES (260, 21, 35);
INSERT INTO `view` VALUES (261, 23, 35);
INSERT INTO `view` VALUES (262, 1, 3);
INSERT INTO `view` VALUES (263, 23, 35);
INSERT INTO `view` VALUES (264, 23, 35);
INSERT INTO `view` VALUES (265, 22, 35);
INSERT INTO `view` VALUES (266, 20, 35);
INSERT INTO `view` VALUES (267, 24, 33);
INSERT INTO `view` VALUES (268, 1, 35);
INSERT INTO `view` VALUES (269, 24, 35);
INSERT INTO `view` VALUES (270, 22, 33);
INSERT INTO `view` VALUES (271, 24, 3);
INSERT INTO `view` VALUES (272, 24, 1);
INSERT INTO `view` VALUES (273, 21, 1);
INSERT INTO `view` VALUES (274, 21, 1);
INSERT INTO `view` VALUES (275, 22, 33);
INSERT INTO `view` VALUES (276, 21, 1);
INSERT INTO `view` VALUES (277, 5, 1);
INSERT INTO `view` VALUES (278, 15, 1);
INSERT INTO `view` VALUES (279, 15, 1);
INSERT INTO `view` VALUES (280, 22, 33);
INSERT INTO `view` VALUES (281, 4, 1);
INSERT INTO `view` VALUES (282, 5, 1);
INSERT INTO `view` VALUES (283, 12, 1);
INSERT INTO `view` VALUES (284, 24, 1);
INSERT INTO `view` VALUES (285, 5, 33);
INSERT INTO `view` VALUES (286, 5, 33);
INSERT INTO `view` VALUES (287, 24, 33);
INSERT INTO `view` VALUES (288, 22, 33);
INSERT INTO `view` VALUES (289, 5, 33);
INSERT INTO `view` VALUES (290, 1, 1);
INSERT INTO `view` VALUES (291, 1, 33);
INSERT INTO `view` VALUES (292, 25, 3);
INSERT INTO `view` VALUES (293, 25, 3);
INSERT INTO `view` VALUES (294, 25, 34);
INSERT INTO `view` VALUES (295, 22, 34);
INSERT INTO `view` VALUES (296, 21, 34);
INSERT INTO `view` VALUES (297, 23, 34);
INSERT INTO `view` VALUES (298, 24, 34);
INSERT INTO `view` VALUES (299, 20, 34);
INSERT INTO `view` VALUES (300, 5, 34);
INSERT INTO `view` VALUES (301, 12, 34);
INSERT INTO `view` VALUES (302, 18, 34);
INSERT INTO `view` VALUES (303, 26, 35);
INSERT INTO `view` VALUES (304, 25, 34);
INSERT INTO `view` VALUES (305, 24, 34);
INSERT INTO `view` VALUES (306, 25, 34);
INSERT INTO `view` VALUES (307, 24, 34);
INSERT INTO `view` VALUES (308, 25, 34);
INSERT INTO `view` VALUES (309, 25, 34);
INSERT INTO `view` VALUES (310, 1, 34);
INSERT INTO `view` VALUES (311, 25, 36);
INSERT INTO `view` VALUES (312, 24, 36);
INSERT INTO `view` VALUES (313, 23, 36);
INSERT INTO `view` VALUES (314, 22, 36);
INSERT INTO `view` VALUES (315, 21, 36);
INSERT INTO `view` VALUES (316, 20, 36);
INSERT INTO `view` VALUES (317, 5, 36);
INSERT INTO `view` VALUES (318, 18, 36);
INSERT INTO `view` VALUES (319, 27, 3);
INSERT INTO `view` VALUES (320, 12, 36);
INSERT INTO `view` VALUES (321, 24, 3);
INSERT INTO `view` VALUES (322, 23, 3);
INSERT INTO `view` VALUES (323, 5, 36);
INSERT INTO `view` VALUES (324, 22, 3);
INSERT INTO `view` VALUES (325, 27, 36);
INSERT INTO `view` VALUES (326, 22, 3);
INSERT INTO `view` VALUES (327, 25, 35);
INSERT INTO `view` VALUES (328, 25, 35);
INSERT INTO `view` VALUES (329, 24, 35);
INSERT INTO `view` VALUES (330, 27, 35);
INSERT INTO `view` VALUES (331, 27, 35);
INSERT INTO `view` VALUES (332, 25, 35);
INSERT INTO `view` VALUES (333, 24, 35);
INSERT INTO `view` VALUES (334, 27, 35);
INSERT INTO `view` VALUES (335, 21, 35);
INSERT INTO `view` VALUES (336, 27, 36);
INSERT INTO `view` VALUES (337, 21, 36);
INSERT INTO `view` VALUES (338, 27, 36);
INSERT INTO `view` VALUES (339, 24, 36);
INSERT INTO `view` VALUES (340, 20, 36);
INSERT INTO `view` VALUES (341, 18, 35);
INSERT INTO `view` VALUES (342, 1, 3);
INSERT INTO `view` VALUES (343, 25, 3);
INSERT INTO `view` VALUES (344, 27, 3);
INSERT INTO `view` VALUES (345, 27, 3);
INSERT INTO `view` VALUES (346, 27, 3);
INSERT INTO `view` VALUES (347, 15, 3);
INSERT INTO `view` VALUES (348, 27, 37);
INSERT INTO `view` VALUES (349, 25, 37);
INSERT INTO `view` VALUES (350, 27, 3);
INSERT INTO `view` VALUES (351, 23, 3);
INSERT INTO `view` VALUES (352, 24, 37);
INSERT INTO `view` VALUES (353, 23, 37);
INSERT INTO `view` VALUES (354, 22, 37);
INSERT INTO `view` VALUES (355, 20, 37);
INSERT INTO `view` VALUES (356, 11, 37);
INSERT INTO `view` VALUES (357, 27, 38);
INSERT INTO `view` VALUES (358, 25, 38);
INSERT INTO `view` VALUES (359, 24, 38);
INSERT INTO `view` VALUES (360, 24, 38);
INSERT INTO `view` VALUES (361, 21, 38);
INSERT INTO `view` VALUES (362, 21, 38);
INSERT INTO `view` VALUES (363, 20, 38);
INSERT INTO `view` VALUES (364, 12, 38);
INSERT INTO `view` VALUES (365, 18, 38);
INSERT INTO `view` VALUES (366, 13, 38);
INSERT INTO `view` VALUES (367, 27, 38);
INSERT INTO `view` VALUES (368, 30, 38);
INSERT INTO `view` VALUES (369, 30, 39);
INSERT INTO `view` VALUES (370, 28, 39);
INSERT INTO `view` VALUES (371, 30, 3);
INSERT INTO `view` VALUES (372, 24, 39);
INSERT INTO `view` VALUES (373, 24, 39);
INSERT INTO `view` VALUES (374, 20, 39);
INSERT INTO `view` VALUES (375, 1, 3);
INSERT INTO `view` VALUES (376, 30, 40);
INSERT INTO `view` VALUES (377, 1, 3);
INSERT INTO `view` VALUES (378, 1, 3);
INSERT INTO `view` VALUES (379, 28, 3);
INSERT INTO `view` VALUES (380, 5, 40);
INSERT INTO `view` VALUES (381, 27, 3);
INSERT INTO `view` VALUES (382, 25, 3);
INSERT INTO `view` VALUES (383, 27, 3);
INSERT INTO `view` VALUES (384, 24, 3);
INSERT INTO `view` VALUES (385, 23, 3);
INSERT INTO `view` VALUES (386, 31, 40);
INSERT INTO `view` VALUES (387, 19, 3);
INSERT INTO `view` VALUES (388, 28, 3);
INSERT INTO `view` VALUES (389, 28, 3);
INSERT INTO `view` VALUES (390, 34, 40);
INSERT INTO `view` VALUES (391, 35, 41);
INSERT INTO `view` VALUES (392, 33, 41);
INSERT INTO `view` VALUES (393, 35, 42);
INSERT INTO `view` VALUES (394, 22, 42);
INSERT INTO `view` VALUES (395, 28, 41);
INSERT INTO `view` VALUES (396, 30, 41);
INSERT INTO `view` VALUES (397, 29, 41);
INSERT INTO `view` VALUES (398, 25, 41);
INSERT INTO `view` VALUES (399, 24, 41);
INSERT INTO `view` VALUES (400, 24, 41);
INSERT INTO `view` VALUES (401, 20, 41);
INSERT INTO `view` VALUES (402, 1, 43);
INSERT INTO `view` VALUES (403, 33, 41);
INSERT INTO `view` VALUES (404, 38, 41);
INSERT INTO `view` VALUES (405, 36, 41);
INSERT INTO `view` VALUES (406, 41, 45);
INSERT INTO `view` VALUES (407, 41, 45);
INSERT INTO `view` VALUES (408, 42, 45);
INSERT INTO `view` VALUES (409, 42, 45);
INSERT INTO `view` VALUES (410, 40, 43);
INSERT INTO `view` VALUES (411, 43, 43);
INSERT INTO `view` VALUES (412, 1, 43);
INSERT INTO `view` VALUES (413, 1, 43);
INSERT INTO `view` VALUES (414, 44, 46);
INSERT INTO `view` VALUES (415, 1, 43);
INSERT INTO `view` VALUES (416, 5, 43);
INSERT INTO `view` VALUES (417, 42, 46);
INSERT INTO `view` VALUES (418, 18, 43);
INSERT INTO `view` VALUES (419, 51, 46);
INSERT INTO `view` VALUES (420, 52, 46);
INSERT INTO `view` VALUES (421, 51, 46);
INSERT INTO `view` VALUES (422, 32, 47);
INSERT INTO `view` VALUES (423, 33, 47);
INSERT INTO `view` VALUES (424, 1, 42);
INSERT INTO `view` VALUES (425, 27, 47);
INSERT INTO `view` VALUES (426, 1, 42);
INSERT INTO `view` VALUES (427, 12, 42);
INSERT INTO `view` VALUES (428, 33, 42);
INSERT INTO `view` VALUES (429, 1, 42);
INSERT INTO `view` VALUES (430, 50, 47);
INSERT INTO `view` VALUES (431, 21, 42);
INSERT INTO `view` VALUES (432, 44, 47);
INSERT INTO `view` VALUES (433, 30, 42);
INSERT INTO `view` VALUES (434, 41, 42);
INSERT INTO `view` VALUES (435, 40, 42);
INSERT INTO `view` VALUES (436, 43, 43);
INSERT INTO `view` VALUES (437, 38, 42);
INSERT INTO `view` VALUES (438, 43, 43);
INSERT INTO `view` VALUES (439, 43, 43);
INSERT INTO `view` VALUES (440, 1, 43);
INSERT INTO `view` VALUES (441, 1, 43);
INSERT INTO `view` VALUES (442, 1, 43);
INSERT INTO `view` VALUES (443, 1, 43);
INSERT INTO `view` VALUES (444, 1, 43);
INSERT INTO `view` VALUES (445, 1, 43);
INSERT INTO `view` VALUES (446, 14, 42);
INSERT INTO `view` VALUES (447, 1, 43);
INSERT INTO `view` VALUES (448, 1, 43);
INSERT INTO `view` VALUES (449, 1, 43);
INSERT INTO `view` VALUES (450, 1, 43);
INSERT INTO `view` VALUES (451, 40, 42);
INSERT INTO `view` VALUES (452, 14, 42);
INSERT INTO `view` VALUES (453, 35, 3);
INSERT INTO `view` VALUES (454, 5, 3);
INSERT INTO `view` VALUES (455, 16, 3);
INSERT INTO `view` VALUES (456, 13, 3);
INSERT INTO `view` VALUES (457, 22, 3);
INSERT INTO `view` VALUES (458, 1, 3);
INSERT INTO `view` VALUES (459, 5, 3);
INSERT INTO `view` VALUES (460, 22, 3);
INSERT INTO `view` VALUES (461, 15, 3);
INSERT INTO `view` VALUES (462, 1, 40);
INSERT INTO `view` VALUES (463, 53, 40);
INSERT INTO `view` VALUES (464, 24, 48);
INSERT INTO `view` VALUES (465, 20, 3);
INSERT INTO `view` VALUES (466, 12, 3);
INSERT INTO `view` VALUES (467, 5, 49);
INSERT INTO `view` VALUES (468, 54, 49);
INSERT INTO `view` VALUES (469, 8, 2);
INSERT INTO `view` VALUES (470, 15, 2);
INSERT INTO `view` VALUES (471, 56, 49);
INSERT INTO `view` VALUES (472, 5, 49);
INSERT INTO `view` VALUES (473, 55, 49);
INSERT INTO `view` VALUES (474, 56, 49);
INSERT INTO `view` VALUES (475, 57, 49);
INSERT INTO `view` VALUES (476, 57, 40);
INSERT INTO `view` VALUES (477, 57, 49);
INSERT INTO `view` VALUES (478, 57, 49);
INSERT INTO `view` VALUES (479, 57, 49);
INSERT INTO `view` VALUES (480, 15, 2);
INSERT INTO `view` VALUES (481, 15, 2);
INSERT INTO `view` VALUES (482, 15, 2);
INSERT INTO `view` VALUES (483, 57, 51);
INSERT INTO `view` VALUES (484, 57, 51);
INSERT INTO `view` VALUES (485, 57, 40);
INSERT INTO `view` VALUES (486, 57, 2);
INSERT INTO `view` VALUES (487, 57, 40);
INSERT INTO `view` VALUES (488, 8, 40);
INSERT INTO `view` VALUES (489, 57, 2);
INSERT INTO `view` VALUES (490, 18, 40);
INSERT INTO `view` VALUES (491, 24, 40);
INSERT INTO `view` VALUES (492, 57, 2);
INSERT INTO `view` VALUES (493, 57, 40);
INSERT INTO `view` VALUES (494, 57, 2);
INSERT INTO `view` VALUES (495, 57, 2);
INSERT INTO `view` VALUES (496, 57, 2);
INSERT INTO `view` VALUES (497, 57, 2);
INSERT INTO `view` VALUES (498, 57, 2);
INSERT INTO `view` VALUES (499, 57, 2);
INSERT INTO `view` VALUES (500, 57, 2);
INSERT INTO `view` VALUES (501, 57, 40);
INSERT INTO `view` VALUES (502, 57, 2);
INSERT INTO `view` VALUES (503, 57, 2);
INSERT INTO `view` VALUES (504, 57, 2);
INSERT INTO `view` VALUES (505, 15, 2);
INSERT INTO `view` VALUES (506, 1, 2);
INSERT INTO `view` VALUES (507, 33, 42);
INSERT INTO `view` VALUES (508, 24, 2);
INSERT INTO `view` VALUES (509, 57, 42);
INSERT INTO `view` VALUES (510, 5, 1);
INSERT INTO `view` VALUES (511, 58, 2);
INSERT INTO `view` VALUES (512, 57, 2);
INSERT INTO `view` VALUES (513, 57, 2);
INSERT INTO `view` VALUES (514, 57, 2);
INSERT INTO `view` VALUES (515, 57, 2);
INSERT INTO `view` VALUES (516, 5, 2);
INSERT INTO `view` VALUES (517, 53, 2);
INSERT INTO `view` VALUES (518, 57, 2);
INSERT INTO `view` VALUES (519, 57, 42);
INSERT INTO `view` VALUES (520, 58, 42);
INSERT INTO `view` VALUES (521, 57, 2);
INSERT INTO `view` VALUES (522, 57, 2);
INSERT INTO `view` VALUES (523, 57, 42);
INSERT INTO `view` VALUES (524, 57, 2);
INSERT INTO `view` VALUES (525, 57, 42);
INSERT INTO `view` VALUES (526, 57, 2);
INSERT INTO `view` VALUES (527, 57, 2);
INSERT INTO `view` VALUES (528, 57, 42);
INSERT INTO `view` VALUES (529, 57, 42);
INSERT INTO `view` VALUES (530, 57, 2);
INSERT INTO `view` VALUES (531, 57, 42);
INSERT INTO `view` VALUES (532, 57, 2);
INSERT INTO `view` VALUES (533, 57, 42);
INSERT INTO `view` VALUES (534, 57, 42);
INSERT INTO `view` VALUES (535, 57, 2);
INSERT INTO `view` VALUES (536, 57, 42);
INSERT INTO `view` VALUES (537, 57, 40);
INSERT INTO `view` VALUES (538, 57, 42);
INSERT INTO `view` VALUES (539, 57, 2);
INSERT INTO `view` VALUES (540, 5, 2);
INSERT INTO `view` VALUES (541, 57, 42);
INSERT INTO `view` VALUES (542, 57, 40);
INSERT INTO `view` VALUES (543, 57, 2);
INSERT INTO `view` VALUES (544, 57, 42);
INSERT INTO `view` VALUES (545, 57, 40);
INSERT INTO `view` VALUES (546, 57, 2);
INSERT INTO `view` VALUES (547, 57, 42);
INSERT INTO `view` VALUES (548, 57, 2);
INSERT INTO `view` VALUES (549, 57, 42);
INSERT INTO `view` VALUES (550, 57, 40);
INSERT INTO `view` VALUES (551, 57, 2);
INSERT INTO `view` VALUES (552, 57, 42);
INSERT INTO `view` VALUES (553, 57, 2);
INSERT INTO `view` VALUES (554, 57, 40);
INSERT INTO `view` VALUES (555, 57, 42);
INSERT INTO `view` VALUES (556, 57, 2);
INSERT INTO `view` VALUES (557, 57, 40);
INSERT INTO `view` VALUES (558, 57, 42);
INSERT INTO `view` VALUES (559, 57, 2);
INSERT INTO `view` VALUES (560, 57, 40);
INSERT INTO `view` VALUES (561, 57, 42);
INSERT INTO `view` VALUES (562, 57, 2);
INSERT INTO `view` VALUES (563, 57, 40);
INSERT INTO `view` VALUES (564, 57, 42);
INSERT INTO `view` VALUES (565, 5, 40);
INSERT INTO `view` VALUES (566, 57, 2);
INSERT INTO `view` VALUES (567, 57, 42);
INSERT INTO `view` VALUES (568, 57, 53);
INSERT INTO `view` VALUES (569, 57, 40);
INSERT INTO `view` VALUES (570, 57, 2);
INSERT INTO `view` VALUES (571, 57, 42);
INSERT INTO `view` VALUES (572, 57, 53);
INSERT INTO `view` VALUES (573, 57, 2);
INSERT INTO `view` VALUES (574, 57, 53);
INSERT INTO `view` VALUES (575, 57, 42);
INSERT INTO `view` VALUES (576, 57, 2);
INSERT INTO `view` VALUES (577, 57, 40);
INSERT INTO `view` VALUES (578, 57, 2);
INSERT INTO `view` VALUES (579, 57, 42);
INSERT INTO `view` VALUES (580, 57, 2);
INSERT INTO `view` VALUES (581, 57, 40);
INSERT INTO `view` VALUES (582, 57, 42);
INSERT INTO `view` VALUES (583, 57, 2);
INSERT INTO `view` VALUES (584, 57, 40);
INSERT INTO `view` VALUES (585, 57, 42);
INSERT INTO `view` VALUES (586, 57, 2);
INSERT INTO `view` VALUES (587, 57, 40);
INSERT INTO `view` VALUES (588, 57, 2);
INSERT INTO `view` VALUES (589, 57, 2);
INSERT INTO `view` VALUES (590, 57, 42);
INSERT INTO `view` VALUES (591, 57, 53);
INSERT INTO `view` VALUES (592, 57, 2);
INSERT INTO `view` VALUES (593, 57, 40);
INSERT INTO `view` VALUES (594, 57, 40);
INSERT INTO `view` VALUES (595, 57, 53);
INSERT INTO `view` VALUES (596, 24, 1);
INSERT INTO `view` VALUES (597, 57, 40);
INSERT INTO `view` VALUES (598, 57, 1);
INSERT INTO `view` VALUES (599, 57, 40);
INSERT INTO `view` VALUES (600, 57, 40);
INSERT INTO `view` VALUES (601, 8, 1);
INSERT INTO `view` VALUES (602, 57, 40);
INSERT INTO `view` VALUES (603, 57, 40);
INSERT INTO `view` VALUES (604, 57, 40);
INSERT INTO `view` VALUES (605, 57, 40);
INSERT INTO `view` VALUES (606, 57, 1);
INSERT INTO `view` VALUES (607, 1, 1);
INSERT INTO `view` VALUES (608, 57, 1);
INSERT INTO `view` VALUES (609, 15, 1);
INSERT INTO `view` VALUES (610, 57, 1);
INSERT INTO `view` VALUES (611, 59, 40);
INSERT INTO `view` VALUES (612, 57, 53);
INSERT INTO `view` VALUES (613, 57, 53);
INSERT INTO `view` VALUES (614, 58, 40);
INSERT INTO `view` VALUES (615, 57, 40);
INSERT INTO `view` VALUES (616, 59, 40);
INSERT INTO `view` VALUES (617, 57, 1);
INSERT INTO `view` VALUES (618, 57, 40);
INSERT INTO `view` VALUES (619, 59, 40);
INSERT INTO `view` VALUES (620, 22, 42);
INSERT INTO `view` VALUES (621, 1, 53);
INSERT INTO `view` VALUES (622, 1, 1);
INSERT INTO `view` VALUES (623, 38, 42);
INSERT INTO `view` VALUES (624, 12, 53);
INSERT INTO `view` VALUES (625, 38, 42);
INSERT INTO `view` VALUES (626, 57, 53);
INSERT INTO `view` VALUES (627, 63, 42);
INSERT INTO `view` VALUES (628, 61, 42);
INSERT INTO `view` VALUES (629, 62, 42);
INSERT INTO `view` VALUES (630, 63, 42);
INSERT INTO `view` VALUES (631, 38, 42);
INSERT INTO `view` VALUES (632, 60, 42);
INSERT INTO `view` VALUES (633, 57, 53);
INSERT INTO `view` VALUES (634, 57, 56);
INSERT INTO `view` VALUES (635, 35, 42);
INSERT INTO `view` VALUES (636, 1, 56);
INSERT INTO `view` VALUES (637, 25, 42);
INSERT INTO `view` VALUES (638, 61, 42);
INSERT INTO `view` VALUES (639, 64, 57);
INSERT INTO `view` VALUES (640, 57, 57);
INSERT INTO `view` VALUES (641, 57, 57);
INSERT INTO `view` VALUES (642, 57, 57);
INSERT INTO `view` VALUES (643, 57, 57);
INSERT INTO `view` VALUES (644, 66, 57);
INSERT INTO `view` VALUES (645, 66, 57);
INSERT INTO `view` VALUES (646, 57, 56);
INSERT INTO `view` VALUES (647, 65, 40);
INSERT INTO `view` VALUES (648, 57, 57);
INSERT INTO `view` VALUES (649, 15, 57);
INSERT INTO `view` VALUES (650, 57, 1);
INSERT INTO `view` VALUES (651, 1, 1);
INSERT INTO `view` VALUES (652, 1, 1);
INSERT INTO `view` VALUES (653, 1, 1);
INSERT INTO `view` VALUES (654, 1, 1);
INSERT INTO `view` VALUES (655, 1, 1);
INSERT INTO `view` VALUES (656, 1, 1);
INSERT INTO `view` VALUES (657, 1, 1);
INSERT INTO `view` VALUES (658, 1, 1);
INSERT INTO `view` VALUES (659, 1, 1);
INSERT INTO `view` VALUES (660, 1, 1);
INSERT INTO `view` VALUES (661, 27, 57);
INSERT INTO `view` VALUES (662, 57, 57);
INSERT INTO `view` VALUES (663, 57, 57);
INSERT INTO `view` VALUES (664, 57, 40);
INSERT INTO `view` VALUES (665, 18, 40);
INSERT INTO `view` VALUES (666, 31, 40);
INSERT INTO `view` VALUES (667, 57, 40);
INSERT INTO `view` VALUES (668, 57, 40);
INSERT INTO `view` VALUES (669, 57, 40);
INSERT INTO `view` VALUES (670, 57, 42);
INSERT INTO `view` VALUES (671, 1, 1);
INSERT INTO `view` VALUES (672, 57, 40);
INSERT INTO `view` VALUES (673, 57, 58);
INSERT INTO `view` VALUES (674, 1, 1);
INSERT INTO `view` VALUES (675, 4, 1);
INSERT INTO `view` VALUES (676, 12, 1);
INSERT INTO `view` VALUES (677, 67, 58);
INSERT INTO `view` VALUES (678, 67, 47);
INSERT INTO `view` VALUES (679, 67, 58);
INSERT INTO `view` VALUES (680, 67, 47);
INSERT INTO `view` VALUES (681, 67, 47);
INSERT INTO `view` VALUES (682, 67, 47);
INSERT INTO `view` VALUES (683, 67, 47);
INSERT INTO `view` VALUES (684, 67, 58);
INSERT INTO `view` VALUES (685, 57, 60);
INSERT INTO `view` VALUES (686, 32, 60);
INSERT INTO `view` VALUES (687, 57, 60);
INSERT INTO `view` VALUES (688, 57, 1);
INSERT INTO `view` VALUES (689, 57, 60);
INSERT INTO `view` VALUES (690, 57, 60);
INSERT INTO `view` VALUES (691, 70, 1);
INSERT INTO `view` VALUES (692, 69, 1);
INSERT INTO `view` VALUES (693, 68, 1);
INSERT INTO `view` VALUES (694, 67, 1);
INSERT INTO `view` VALUES (695, 70, 1);
INSERT INTO `view` VALUES (696, 1, 2);
INSERT INTO `view` VALUES (697, 57, 60);
INSERT INTO `view` VALUES (698, 4, 2);
INSERT INTO `view` VALUES (699, 1, 60);
INSERT INTO `view` VALUES (700, 1, 60);
INSERT INTO `view` VALUES (701, 57, 60);
INSERT INTO `view` VALUES (702, 67, 61);
INSERT INTO `view` VALUES (703, 15, 61);
INSERT INTO `view` VALUES (704, 22, 61);
INSERT INTO `view` VALUES (705, 1, 1);
INSERT INTO `view` VALUES (706, 31, 2);
INSERT INTO `view` VALUES (707, 31, 2);
INSERT INTO `view` VALUES (708, 31, 2);
INSERT INTO `view` VALUES (709, 31, 2);
INSERT INTO `view` VALUES (710, 31, 2);
INSERT INTO `view` VALUES (711, 31, 2);
INSERT INTO `view` VALUES (712, 71, 62);
INSERT INTO `view` VALUES (713, 72, 62);
INSERT INTO `view` VALUES (714, 71, 62);
INSERT INTO `view` VALUES (715, 72, 62);
INSERT INTO `view` VALUES (716, 70, 1);
INSERT INTO `view` VALUES (717, 72, 1);
INSERT INTO `view` VALUES (718, 66, 62);
INSERT INTO `view` VALUES (719, 72, 1);
INSERT INTO `view` VALUES (720, 72, 1);
INSERT INTO `view` VALUES (721, 1, 62);
INSERT INTO `view` VALUES (722, 72, 1);
INSERT INTO `view` VALUES (723, 18, 62);
INSERT INTO `view` VALUES (724, 23, 62);
INSERT INTO `view` VALUES (725, 21, 62);
INSERT INTO `view` VALUES (726, 12, 62);
INSERT INTO `view` VALUES (727, 53, 62);
INSERT INTO `view` VALUES (728, 25, 62);
INSERT INTO `view` VALUES (729, 18, 62);
INSERT INTO `view` VALUES (730, 67, 62);
INSERT INTO `view` VALUES (731, 37, 1);
INSERT INTO `view` VALUES (732, 14, 62);
INSERT INTO `view` VALUES (733, 45, 1);
INSERT INTO `view` VALUES (734, 30, 62);
INSERT INTO `view` VALUES (735, 57, 62);
INSERT INTO `view` VALUES (736, 43, 62);
INSERT INTO `view` VALUES (737, 41, 62);
INSERT INTO `view` VALUES (738, 44, 62);
INSERT INTO `view` VALUES (739, 72, 62);
INSERT INTO `view` VALUES (740, 72, 62);
INSERT INTO `view` VALUES (741, 57, 62);
INSERT INTO `view` VALUES (742, 72, 1);
INSERT INTO `view` VALUES (743, 57, 1);
INSERT INTO `view` VALUES (744, 57, 62);
INSERT INTO `view` VALUES (745, 57, 62);
INSERT INTO `view` VALUES (746, 57, 62);
INSERT INTO `view` VALUES (747, 57, 62);
INSERT INTO `view` VALUES (748, 57, 61);
INSERT INTO `view` VALUES (749, 1, 61);
INSERT INTO `view` VALUES (750, 57, 40);
INSERT INTO `view` VALUES (751, 57, 40);
INSERT INTO `view` VALUES (752, 57, 61);
INSERT INTO `view` VALUES (753, 57, 3);
INSERT INTO `view` VALUES (754, 15, 3);
INSERT INTO `view` VALUES (755, 57, 3);
INSERT INTO `view` VALUES (756, 57, 1);
INSERT INTO `view` VALUES (757, 16, 1);
INSERT INTO `view` VALUES (758, 57, 1);
INSERT INTO `view` VALUES (759, 1, 1);
INSERT INTO `view` VALUES (760, 5, 1);
INSERT INTO `view` VALUES (761, 5, 1);
INSERT INTO `view` VALUES (762, 5, 1);
INSERT INTO `view` VALUES (763, 57, 1);
INSERT INTO `view` VALUES (764, 39, 40);
INSERT INTO `view` VALUES (765, 1, 40);
INSERT INTO `view` VALUES (766, 1, 40);
INSERT INTO `view` VALUES (767, 1, 40);
INSERT INTO `view` VALUES (768, 1, 40);
INSERT INTO `view` VALUES (769, 57, 40);
INSERT INTO `view` VALUES (770, 5, 40);
INSERT INTO `view` VALUES (771, 5, 40);
INSERT INTO `view` VALUES (772, 18, 40);
INSERT INTO `view` VALUES (773, 24, 40);
INSERT INTO `view` VALUES (774, 22, 40);
INSERT INTO `view` VALUES (775, 23, 40);
INSERT INTO `view` VALUES (776, 21, 40);
INSERT INTO `view` VALUES (777, 20, 40);
INSERT INTO `view` VALUES (778, 57, 40);
INSERT INTO `view` VALUES (779, 1, 40);
INSERT INTO `view` VALUES (780, 5, 40);
INSERT INTO `view` VALUES (781, 18, 40);
INSERT INTO `view` VALUES (782, 15, 40);
INSERT INTO `view` VALUES (783, 24, 40);
INSERT INTO `view` VALUES (784, 23, 40);
INSERT INTO `view` VALUES (785, 25, 40);
INSERT INTO `view` VALUES (786, 27, 40);
INSERT INTO `view` VALUES (787, 20, 40);
INSERT INTO `view` VALUES (788, 67, 40);
INSERT INTO `view` VALUES (789, 67, 40);
INSERT INTO `view` VALUES (790, 31, 40);
INSERT INTO `view` VALUES (791, 43, 40);
INSERT INTO `view` VALUES (792, 57, 40);
INSERT INTO `view` VALUES (793, 14, 40);
INSERT INTO `view` VALUES (794, 44, 40);
INSERT INTO `view` VALUES (795, 28, 40);
INSERT INTO `view` VALUES (796, 43, 40);
INSERT INTO `view` VALUES (797, 57, 63);
INSERT INTO `view` VALUES (798, 57, 1);
INSERT INTO `view` VALUES (799, 1, 1);
INSERT INTO `view` VALUES (800, 18, 1);
INSERT INTO `view` VALUES (801, 57, 1);
INSERT INTO `view` VALUES (802, 5, 3);
INSERT INTO `view` VALUES (803, 25, 3);
INSERT INTO `view` VALUES (804, 57, 1);
INSERT INTO `view` VALUES (805, 18, 1);
INSERT INTO `view` VALUES (806, 1, 1);
INSERT INTO `view` VALUES (807, 67, 3);
INSERT INTO `view` VALUES (808, 73, 1);
INSERT INTO `view` VALUES (809, 53, 1);
INSERT INTO `view` VALUES (810, 57, 63);
INSERT INTO `view` VALUES (811, 57, 63);
INSERT INTO `view` VALUES (812, 18, 63);
INSERT INTO `view` VALUES (813, 57, 3);
INSERT INTO `view` VALUES (814, 1, 64);
INSERT INTO `view` VALUES (815, 1, 1);
INSERT INTO `view` VALUES (816, 5, 64);
INSERT INTO `view` VALUES (817, 57, 64);
INSERT INTO `view` VALUES (818, 61, 66);
INSERT INTO `view` VALUES (819, 1, 40);
INSERT INTO `view` VALUES (820, 1, 67);
INSERT INTO `view` VALUES (821, 76, 40);
INSERT INTO `view` VALUES (822, 78, 68);
INSERT INTO `view` VALUES (823, 79, 69);
INSERT INTO `view` VALUES (824, 80, 70);
INSERT INTO `view` VALUES (825, 81, 40);
INSERT INTO `view` VALUES (826, 15, 1);
INSERT INTO `view` VALUES (827, 57, 1);
INSERT INTO `view` VALUES (828, 81, 1);
INSERT INTO `view` VALUES (829, 81, 40);
INSERT INTO `view` VALUES (830, 1, 1);
INSERT INTO `view` VALUES (831, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
