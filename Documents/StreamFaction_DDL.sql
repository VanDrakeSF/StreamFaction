USE Stream_Faction

CREATE TABLE Users
(
	"usr_id" INT PRIMARY KEY,
	"usr_login" VARCHAR(50) NOT NULL,
	"usr_psw" VARCHAR(50) NOT NULL,
	"usr_create_date" DATETIME NOT NULL,
	"usr_modif_date" DATETIME NOT NULL
);

CREATE TABLE Articles
(
	"artc_id" INT PRIMARY KEY,
	"artc_title" VARCHAR(255) NOT NULL,
	"artc_content" TEXT NOT NULL,
	"artc_img" DATETIME NULL,
	"artc_create_date" DATETIME NOT NULL,
	"artc_modif_date" DATETIME NOT NULL
);

CREATE TABLE "Status"
(
	"sta_id" INT PRIMARY KEY,
	"sta_name" VARCHAR(50) NOT NULL,
	"sta_logo" VARCHAR(255) NULL,
	"sta_create_date" DATETIME NOT NULL,
	"sta_modif_date" DATETIME NOT NULL
);

CREATE TABLE "User_infos"
(
	"usrif_iduser" INT PRIMARY KEY,
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

ALTER TABLE "User_infos"
ADD CONSTRAINT "FK_Userinfos_Users"
FOREIGN KEY (usrif_iduser) REFERENCES Users(usr_id);

CREATE TABLE "User_status"
(
	"usrsta_id" INT PRIMARY KEY,
	"usr_id" INT FOREIGN KEY (usr_id) REFERENCES Users(usr_id) NOT NULL,
	"sta_id" INT FOREIGN KEY (sta_id) REFERENCES Status(sta_id) NOT NULL,
	"usrsta_enabled" BIT NOT NULL,
	"usrsta_create_date" DATETIME NOT NULL,
	"usrsta_modif_date" DATETIME NOT NULL
);

ALTER TABLE "User_status"
ADD CONSTRAINT "FK_Users_Status"
UNIQUE (usr_id, sta_id);

CREATE TABLE Channels
(
	"cha_id" INT PRIMARY KEY,
	"cha_usr_id" INT NOT NULL,
	"cha_name" VARCHAR(50) NOT NULL,
	"cha_description" TEXT NULL,
	"cha_facebook" VARCHAR(255) NULL,
	"cha_twitter" VARCHAR(255) NULL,
	"cha_instagram" VARCHAR(255) NULL,
	"cha_discord" VARCHAR(255) NULL,
	"cha_create_date" DATETIME NOT NULL,
	"cha_modif_date" DATETIME NOT NULL
);

ALTER TABLE Channels
ADD CONSTRAINT "FK_Channels_Users"
FOREIGN KEY (cha_usr_id) REFERENCES Users(usr_id);

CREATE TABLE "Events"
(
	"evt_id" INT PRIMARY KEY,
	"evt_idevtt" INT NOT NULL,
	"evt_name" VARCHAR(50) NOT NULL,
	"evt_description" TEXT NULL,
	"evt_start_date" DATETIME NOT NULL,
	"evt_end_date" DATETIME NOT NULL,
	"evt_create_date" DATETIME NOT NULL,
	"evt_modif_date" DATETIME NOT NULL
);

CREATE TABLE "EventTypes"
(
	"evtt_id" INT PRIMARY KEY,
	"evtt_name" VARCHAR(50) NOT NULL,
	"evtt_create_date" DATETIME NOT NULL,
	"evtt_modif_date" DATETIME NOT NULL
);

ALTER TABLE "Events"
ADD CONSTRAINT "FK_EventTypes_Events"
FOREIGN KEY (evt_idevtt) REFERENCES EventTypes(evtt_id);

CREATE TABLE Ban_Types
(
	"bant_id" INT PRIMARY KEY,
	"bant_name" VARCHAR(50) NOT NULL,
	"bant_description" TEXT NOT NULL,
	"bant_create_date" DATETIME NOT NULL,
	"bant_modif_date" DATETIME NOT NULL
);

CREATE TABLE Bans
(
	"ban_idbant" INT FOREIGN KEY (ban_idbant) REFERENCES Ban_Types(bant_id) PRIMARY KEY,
	"ban_description" TEXT NOT NULL,
	"ban_start_date" DATETIME NOT NULL,
	"ban_end_date" DATETIME NOT NULL,
	"ban_create_date" DATETIME NOT NULL,
	"ban_modif_date" DATETIME NOT NULL
);

