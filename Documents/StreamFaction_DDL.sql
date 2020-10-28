CREATE TABLE Users
(
	"usr_id" INT PRIMARY KEY NOT NULL,
	"usr_login" VARCHAR(50) NOT NULL,
	"usr_psw" VARCHAR(50) NOT NULL,
	"usr_create_date" DATETIME NOT NULL,
	"usr_modif_date" DATETIME NOT NULL
);

CREATE TABLE Articles
(
	"artc_id" INT PRIMARY KEY NOT NULL,
	"artc_title" VARCHAR(255) NOT NULL,
	"artc_content" TEXT NOT NULL,
	"artc_img" DATETIME NULL,
	"artc_create_date" DATETIME NOT NULL,
	"artc_modif_date" DATETIME NOT NULL
);

CREATE TABLE "Status"
(
	"sta_id" INT PRIMARY KEY NOT NULL,
	"sta_name" VARCHAR(50) NOT NULL,
	"sta_logo" VARCHAR(255) NULL,
	"sta_create_date" DATETIME NOT NULL,
	"sta_modif_date" DATETIME NOT NULL
);

CREATE TABLE "User_infos"
(
	"usrif_iduser" INT PRIMARY KEY NOT NULL,
	"usrif_name" VARCHAR(50) NOT NULL,
	"usrif_name_visible" BIT NOT NULL,
	"usrif_surname" VARCHAR(50) NOT NULL,
	"usrif_surname_visible" BIT NOT NULL,
	"usrif_avatar" VARCHAR(255) NULL,
	"usrif_BDdate" DATE NOT NULL,
	"usrif_BDdate_visible" BIT NOT NULL,
	"usrif_description" TEXT NULL,
	"usrif_create_date" DATETIME NOT NULL,
	"usrif_modif_date" DATETIME NOT NULL
);

ALTER TABLE "Userinfos"
ADD CONSTRAINT "FK_Userinfos_Users"
FOREIGN KEY (usrif_iduser) REFERENCES Users(usr_id);

CREATE TABLE "User_status"
(
	"usrst_id",
	"usrst_",
	"usrst_",
	"usrst_",
	"usrst_",
	"usrst_",
	"usrst_",
	"usrst_"
);

CREATE TABLE Channels
(
	"cha_id" INT PRIMARY KEY NOT NULL,
	"cha_user" INT NOT NULL,
	"cha_name" VARCHAR(50) NOT NULL,
	"cha_description" TEXT NULL,
	"cha_facebook" VARCHAR(255) NULL,
	"cha_twitter" VARCHAR(255) NULL,
	"cha_instagram" VARCHAR(255) NULL,
	"cha_discord" VARCHAR(255) NULL,
	"cha_create_date" DATETIME NOT NULL,
	"cha_modif_date" DATETIME NOT NULL
);

CREATE TABLE "Events"
(
	"evt_id" INT PRIMARY KEY NOT NULL,
	"evt_name" VARCHAR(50) NOT NULL,
	"evt_description" TEXT NULL,
	"evt_create_date" DATETIME NOT NULL,
	"evt_modif_date" DATETIME NOT NULL
);

CREATE TABLE "EventTypes"
(
	"evtt_id" INT PRIMARY KEY NOT NULL,
	"evtt_name" VARCHAR(50) NOT NULL,
	"evtt_create_date" DATETIME NOT NULL,
	"evtt_modif_date" DATETIME NOT NULL
);

ALTER TABLE "Events"
ADD CONSTRAINT "FK_EventTypes_Events"
FOREIGN KEY (evt_idevtt) REFERENCES EventTypes(evtt_id);

CREATE TABLE Ban_List
(
	"ban_description" TEXT NOT NULL,
	"ban_start_date" DATETIME NOT NULL,
	"ban_end_date" DATETIME NOT NULL,
	"ban_create_date" DATETIME NOT NULL,
	"ban_modif_date" DATETIME NOT NULL
);

CREATE TABLE Ban_Type
(
	"bant_id" INT NOT NULL,
	"bant_name" VARCHAR(50) NOT NULL,
	"bant_description" TEXT NOT NULL,
	"bant_create_date" DATETIME NOT NULL,
	"bant_modif_date" DATETIME NOT NULL
);