PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2024-04-15 14:03:08.500702');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2024-04-15 14:03:08.527703');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2024-04-15 14:03:08.553704');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2024-04-15 14:03:08.571702');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2024-04-15 14:03:08.626704');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2024-04-15 14:03:08.659707');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2024-04-15 14:03:08.730706');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2024-04-15 14:03:08.759703');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2024-04-15 14:03:08.769701');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2024-04-15 14:03:08.791703');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2024-04-15 14:03:08.800703');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2024-04-15 14:03:08.810701');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2024-04-15 14:03:08.834705');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2024-04-15 14:03:08.849704');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2024-04-15 14:03:08.869703');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2024-04-15 14:03:08.882700');
INSERT INTO django_migrations VALUES(17,'auth','0012_alter_user_first_name_max_length','2024-04-15 14:03:08.900717');
INSERT INTO django_migrations VALUES(18,'sessions','0001_initial','2024-04-15 14:03:08.911704');
INSERT INTO django_migrations VALUES(19,'python_tutorial','0001_initial','2024-04-15 14:04:11.580520');
INSERT INTO django_migrations VALUES(20,'python_tutorial','0002_lesson_questionnaire_activity_questionnaire_type','2024-04-16 01:07:30.898534');
INSERT INTO django_migrations VALUES(21,'python_tutorial','0003_rename_type_lesson_topic_and_more','2024-04-16 01:22:19.003039');
INSERT INTO django_migrations VALUES(22,'python_tutorial','0004_remove_questionnaire_activity_questionnaire_status_and_more','2024-04-16 01:32:41.685347');
INSERT INTO django_migrations VALUES(23,'python_tutorial','0005_remove_lesson_heading_remove_lesson_paragraph_and_more','2024-04-16 01:36:59.682272');
INSERT INTO django_migrations VALUES(24,'python_tutorial','0006_rename_paragraph_content_desc_and_more','2024-04-16 05:06:48.810554');
INSERT INTO django_migrations VALUES(25,'python_tutorial','0007_activity_code_example_content_code_example','2024-04-16 08:42:36.200859');
INSERT INTO django_migrations VALUES(26,'python_tutorial','0008_alter_activity_code_example_and_more','2024-04-16 08:47:29.817900');
INSERT INTO django_migrations VALUES(27,'python_tutorial','0009_rename_code_example_activity_data_pym_src_and_more','2024-04-16 11:31:05.979182');
INSERT INTO django_migrations VALUES(28,'python_tutorial','0010_rename_data_pym_src_activity_compiler_src_and_more','2024-04-16 11:33:20.583043');
INSERT INTO django_migrations VALUES(29,'python_tutorial','0011_yourmodel','2024-04-16 12:02:38.916466');
INSERT INTO django_migrations VALUES(30,'python_tutorial','0012_rename_yourmodel_uploadimage','2024-04-16 12:11:45.027763');
INSERT INTO django_migrations VALUES(31,'python_tutorial','0013_content_image_alter_uploadimage_image','2024-04-16 12:26:46.755126');
INSERT INTO django_migrations VALUES(32,'python_tutorial','0014_alter_content_image','2024-04-16 23:23:34.784009');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log VALUES(1,'1','intoduction',1,'[{"added": {}}]',8,1,'2024-04-16 01:16:57.970876');
INSERT INTO django_admin_log VALUES(2,'2','intoduction',1,'[{"added": {}}]',8,1,'2024-04-16 01:17:56.277717');
INSERT INTO django_admin_log VALUES(3,'3','intoduction',1,'[{"added": {}}]',8,1,'2024-04-16 01:20:14.886630');
INSERT INTO django_admin_log VALUES(4,'4','intoduction',1,'[{"added": {}}]',8,1,'2024-04-16 01:21:01.421690');
INSERT INTO django_admin_log VALUES(5,'5','introduction',1,'[{"added": {}}]',8,1,'2024-04-16 01:24:01.333440');
INSERT INTO django_admin_log VALUES(6,'6','introduction',1,'[{"added": {}}]',8,1,'2024-04-16 01:24:34.875793');
INSERT INTO django_admin_log VALUES(7,'4','introduction',2,'[{"changed": {"fields": ["Topic"]}}]',8,1,'2024-04-16 01:24:49.835690');
INSERT INTO django_admin_log VALUES(8,'3','introduction',2,'[{"changed": {"fields": ["Topic"]}}]',8,1,'2024-04-16 01:24:56.755637');
INSERT INTO django_admin_log VALUES(9,'2','introduction',2,'[{"changed": {"fields": ["Topic"]}}]',8,1,'2024-04-16 01:25:02.948150');
INSERT INTO django_admin_log VALUES(10,'1','introduction',2,'[{"changed": {"fields": ["Topic"]}}]',8,1,'2024-04-16 01:25:08.195375');
INSERT INTO django_admin_log VALUES(11,'6','introduction',3,'',8,1,'2024-04-16 01:37:41.831308');
INSERT INTO django_admin_log VALUES(12,'5','introduction',3,'',8,1,'2024-04-16 01:37:41.836979');
INSERT INTO django_admin_log VALUES(13,'4','introduction',3,'',8,1,'2024-04-16 01:37:41.843064');
INSERT INTO django_admin_log VALUES(14,'3','introduction',3,'',8,1,'2024-04-16 01:37:41.847065');
INSERT INTO django_admin_log VALUES(15,'2','introduction',3,'',8,1,'2024-04-16 01:37:41.853064');
INSERT INTO django_admin_log VALUES(16,'1','introduction',3,'',8,1,'2024-04-16 01:37:41.860064');
INSERT INTO django_admin_log VALUES(17,'7','Lesson object (7)',1,'[{"added": {}}, {"added": {"name": "content", "object": "Content object (1)"}}, {"added": {"name": "content", "object": "Content object (2)"}}, {"added": {"name": "content", "object": "Content object (3)"}}, {"added": {"name": "content", "object": "Content object (4)"}}, {"added": {"name": "content", "object": "Content object (5)"}}, {"added": {"name": "questionnaire", "object": "Questionnaire object (1)"}}, {"added": {"name": "activity", "object": "Activity object (1)"}}]',8,1,'2024-04-16 01:45:29.747680');
INSERT INTO django_admin_log VALUES(18,'7','introduction',2,'[{"changed": {"name": "activity", "object": "Activity object (1)", "fields": ["Activity", "Code example"]}}]',8,1,'2024-04-16 08:47:58.688757');
INSERT INTO django_admin_log VALUES(19,'7','introduction',2,'[{"changed": {"name": "activity", "object": "Activity object (1)", "fields": ["Activity", "Code example"]}}]',8,1,'2024-04-16 09:31:41.675792');
INSERT INTO django_admin_log VALUES(20,'7','introduction',2,'[{"changed": {"name": "activity", "object": "Activity object (1)", "fields": ["Compiler src"]}}]',8,1,'2024-04-16 11:34:03.751765');
INSERT INTO django_admin_log VALUES(21,'1','YourModel object (1)',1,'[{"added": {}}]',11,1,'2024-04-16 12:03:01.087134');
INSERT INTO django_admin_log VALUES(22,'2','UploadImage object (2)',1,'[{"added": {}}]',11,1,'2024-04-16 12:13:34.848196');
INSERT INTO django_admin_log VALUES(23,'3','UploadImage object (3)',1,'[{"added": {}}]',11,1,'2024-04-16 12:15:06.130552');
INSERT INTO django_admin_log VALUES(24,'4','images/2bd36bce-d9be-4eb0-82f8-46af18c70813rct.png',1,'[{"added": {}}]',11,1,'2024-04-16 12:16:41.201246');
INSERT INTO django_admin_log VALUES(25,'4','images/2bd36bce-d9be-4eb0-82f8-46af18c70813rct.png',3,'',11,1,'2024-04-16 12:17:34.623311');
INSERT INTO django_admin_log VALUES(26,'3','images/rct.png6de6db51-04c7-4348-b0fb-99590986b98b',3,'',11,1,'2024-04-16 12:17:34.628512');
INSERT INTO django_admin_log VALUES(27,'2','images/60c49c4f-db32-4c43-9e3f-667e2be0ef00.png',3,'',11,1,'2024-04-16 12:17:34.633515');
INSERT INTO django_admin_log VALUES(28,'1','images/rct.png',3,'',11,1,'2024-04-16 12:17:34.639513');
INSERT INTO django_admin_log VALUES(29,'5','images/fcebc971-68e9-4958-b4c8-87ee42779ab8rct.png',1,'[{"added": {}}]',11,1,'2024-04-16 12:20:27.549792');
INSERT INTO django_admin_log VALUES(30,'5','images/fcebc971-68e9-4958-b4c8-87ee42779ab8rct.png',3,'',11,1,'2024-04-16 12:20:33.519997');
INSERT INTO django_admin_log VALUES(31,'7','introduction',2,'[{"added": {"name": "questionnaire", "object": "Questionnaire object (2)"}}, {"added": {"name": "questionnaire", "object": "Questionnaire object (3)"}}, {"added": {"name": "questionnaire", "object": "Questionnaire object (4)"}}, {"added": {"name": "questionnaire", "object": "Questionnaire object (5)"}}]',8,1,'2024-04-16 23:23:44.320399');
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'python_tutorial','questionnaire');
INSERT INTO django_content_type VALUES(8,'python_tutorial','lesson');
INSERT INTO django_content_type VALUES(9,'python_tutorial','activity');
INSERT INTO django_content_type VALUES(10,'python_tutorial','content');
INSERT INTO django_content_type VALUES(11,'python_tutorial','uploadimage');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_questionnaire','Can add questionnaire');
INSERT INTO auth_permission VALUES(26,7,'change_questionnaire','Can change questionnaire');
INSERT INTO auth_permission VALUES(27,7,'delete_questionnaire','Can delete questionnaire');
INSERT INTO auth_permission VALUES(28,7,'view_questionnaire','Can view questionnaire');
INSERT INTO auth_permission VALUES(29,8,'add_lesson','Can add lesson');
INSERT INTO auth_permission VALUES(30,8,'change_lesson','Can change lesson');
INSERT INTO auth_permission VALUES(31,8,'delete_lesson','Can delete lesson');
INSERT INTO auth_permission VALUES(32,8,'view_lesson','Can view lesson');
INSERT INTO auth_permission VALUES(33,9,'add_activity','Can add activity');
INSERT INTO auth_permission VALUES(34,9,'change_activity','Can change activity');
INSERT INTO auth_permission VALUES(35,9,'delete_activity','Can delete activity');
INSERT INTO auth_permission VALUES(36,9,'view_activity','Can view activity');
INSERT INTO auth_permission VALUES(37,10,'add_content','Can add content');
INSERT INTO auth_permission VALUES(38,10,'change_content','Can change content');
INSERT INTO auth_permission VALUES(39,10,'delete_content','Can delete content');
INSERT INTO auth_permission VALUES(40,10,'view_content','Can view content');
INSERT INTO auth_permission VALUES(41,11,'add_yourmodel','Can add your model');
INSERT INTO auth_permission VALUES(42,11,'change_yourmodel','Can change your model');
INSERT INTO auth_permission VALUES(43,11,'delete_yourmodel','Can delete your model');
INSERT INTO auth_permission VALUES(44,11,'view_yourmodel','Can view your model');
INSERT INTO auth_permission VALUES(45,11,'add_uploadimage','Can add upload image');
INSERT INTO auth_permission VALUES(46,11,'change_uploadimage','Can change upload image');
INSERT INTO auth_permission VALUES(47,11,'delete_uploadimage','Can delete upload image');
INSERT INTO auth_permission VALUES(48,11,'view_uploadimage','Can view upload image');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$720000$LEGH72CP3Ta31JTEKmKeeh$ri7C/p+i2doCW1tNNPpr+hJ7W3nS2ScUYRIxUeI/7Mk=','2024-04-16 01:10:08.480891',1,'admin','','irishderoxas@gmail.com',1,1,'2024-04-16 01:08:55.894523','');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('bkg0egb77erdgh580rpngb1676ufngz0','.eJxVjEEOwiAQRe_C2hBIgQ4u3XsGMsOMUjWQlHbVeHdt0oVu_3vvbyrhupS0dpnTxOqsrDr9boT5KXUH_MB6bzq3uswT6V3RB-362lhel8P9OyjYy7cmQHYxuuCMg0EQbXTeCmQhJoNj9BhtDC5zthYy0hC8yIgAhoHgpt4f5bI4QQ:1rwXKq:PPLmXFgocz4LKkS_QvOLfm2l8RZAnUOa_2aKjY5dfqw','2024-04-30 01:10:08.487891');
CREATE TABLE IF NOT EXISTS "python_tutorial_lesson" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "topic" varchar(200) NOT NULL);
INSERT INTO python_tutorial_lesson VALUES(7,'introduction');
CREATE TABLE IF NOT EXISTS "python_tutorial_questionnaire" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "question" varchar(200) NOT NULL, "answer" varchar(200) NOT NULL, "topic_id" bigint NOT NULL REFERENCES "python_tutorial_lesson" ("id") DEFERRABLE INITIALLY DEFERRED, "status" varchar(20) NOT NULL);
INSERT INTO python_tutorial_questionnaire VALUES(1,'Python has a simple? Similar to English language.','Syntax',7,'PENDING');
INSERT INTO python_tutorial_questionnaire VALUES(2,'Python uses what for defining code blocks?','Indentation',7,'PENDING');
INSERT INTO python_tutorial_questionnaire VALUES(3,'Python has some similarities to the English language with influence from?','Mathematics',7,'PENDING');
INSERT INTO python_tutorial_questionnaire VALUES(4,'Who created python','Guido van Rossum',7,'PENDING');
INSERT INTO python_tutorial_questionnaire VALUES(5,'What year python was created?','1991',7,'PENDING');
CREATE TABLE IF NOT EXISTS "python_tutorial_activity" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "activity" text NULL, "status" varchar(20) NOT NULL, "topic_id" bigint NOT NULL REFERENCES "python_tutorial_lesson" ("id") DEFERRABLE INITIALLY DEFERRED, "compiler_src" text NULL);
INSERT INTO python_tutorial_activity VALUES(1,'Use this code sandbox to print out your name.','PENDING',7,'https://www.jdoodle.com/embed/v1/7ace366fbdd53b9c');
CREATE TABLE IF NOT EXISTS "python_tutorial_content" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(200) NOT NULL, "desc" text NOT NULL, "topic_id" bigint NOT NULL REFERENCES "python_tutorial_lesson" ("id") DEFERRABLE INITIALLY DEFERRED, "code_example" text NULL, "image" varchar(100) NULL);
INSERT INTO python_tutorial_content VALUES(1,'What is Python?','Python, a popular language created by Guido van Rossum in 1991, is prized for its readability due to its clear syntax resembling English and its use of indentation over curly-braces.  This, along with its versatility, makes it a great choice for beginners.  Python''s applications span web development (server-side), software development in general, complex mathematical tasks, and even system scripting.',7,NULL,NULL);
INSERT INTO python_tutorial_content VALUES(2,'What can Python do?','Python''s reach extends beyond human-readable syntax: it empowers web development (server-side applications), streamlines workflows through software integration, tackles data manipulation (databases, file I/O), and conquers complex tasks like big data and mathematics. It thrives in both rapid prototyping and production-ready software creation.',7,NULL,NULL);
INSERT INTO python_tutorial_content VALUES(3,'Why Python?','Python''s versatility goes beyond its clear, English-like syntax.  This beginner-friendly language runs seamlessly across various platforms (Windows, Mac, Linux, etc.) and fosters rapid development due to its interpretable nature (write and execute code quickly).  Furthermore, Python''s flexibility allows for procedural, object-oriented, or functional programming paradigms, making it adaptable for diverse projects.',7,NULL,NULL);
INSERT INTO python_tutorial_content VALUES(4,'Good to know','This tutorial focuses on Python 3, the current major version, but be aware that Python 2 is still somewhat in use.  Regardless of version, you can start coding with a simple text editor. For larger projects, however, consider using an Integrated Development Environment (IDE) like Thonny, PyCharm, NetBeans, or Eclipse. These IDEs provide features that streamline managing and working with Python code.',7,NULL,NULL);
INSERT INTO python_tutorial_content VALUES(5,'Python Syntax compared to other programming languages',replace(replace('Python was designed for readability, and has some similarities to the English language with influence from mathematics.\r\nPython uses new lines to complete a command, as opposed to other programming languages which often use semicolons or parentheses.\r\nPython relies on indentation, using whitespace, to define scope; such as the scope of loops, functions and classes. Other programming languages often use curly-brackets for this purpose.','\r',char(13)),'\n',char(10)),7,NULL,NULL);
CREATE TABLE IF NOT EXISTS "python_tutorial_uploadimage" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "image" varchar(100) NOT NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',32);
INSERT INTO sqlite_sequence VALUES('django_admin_log',31);
INSERT INTO sqlite_sequence VALUES('django_content_type',11);
INSERT INTO sqlite_sequence VALUES('auth_permission',48);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',1);
INSERT INTO sqlite_sequence VALUES('python_tutorial_lesson',7);
INSERT INTO sqlite_sequence VALUES('python_tutorial_questionnaire',5);
INSERT INTO sqlite_sequence VALUES('python_tutorial_content',5);
INSERT INTO sqlite_sequence VALUES('python_tutorial_activity',1);
INSERT INTO sqlite_sequence VALUES('python_tutorial_uploadimage',0);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE INDEX "python_tutorial_questionnaire_topic_id_cb88c95a" ON "python_tutorial_questionnaire" ("topic_id");
CREATE INDEX "python_tutorial_activity_topic_id_97ac4ef8" ON "python_tutorial_activity" ("topic_id");
CREATE INDEX "python_tutorial_content_topic_id_07f120db" ON "python_tutorial_content" ("topic_id");
COMMIT;
