CREATE DATABASE ChampionsLegaueDb;
USE [ChampionsLegaueDb]
CREATE TABLE ������� (
[���] [int] NOT NULL PRIMARY KEY,
	[�����] [nvarchar](255) NOT NULL,
	[������] [nvarchar](255) NOT NULL,
	[�����] [nvarchar](5) NOT NULL,
);

CREATE TABLE �������1 (
[���] [int] NOT NULL PRIMARY KEY,
	[�����] [nvarchar](255)  NOT NULL,
	[������] [nvarchar](255) NOT NULL,
	[�����] [nvarchar](5) NOT NULL,
);

CREATE TABLE ���� (

	[����  ID] [int] NOT NULL PRIMARY KEY,
	[���� �����] [datetime] NOT NULL,
	[��� ������� ���������] [int] NOT NULL,
	[��� ������� ������] [int] NOT NULL,
	[����� ���� �����������] [int] NULL,
	[����� �������] [int] NULL,
	[������] [int] NOT NULL,
	[��������� �������] [int] NOT NULL,
	[����] [nvarchar](20) NOT NULL,
);

CREATE TABLE ������� (
[������] [int] NOT NULL PRIMARY KEY,
	[�����] [nvarchar](20) NOT NULL,
	[�����] [nvarchar](20) NOT NULL,
	[̳���] [nvarchar](40) NOT NULL,
	[̳������] [int] NOT NULL,
);

CREATE TABLE ����(
	[�������] [int] NOT NULL PRIMARY KEY,
	[�������� �����] [nvarchar](40) NOT NULL,
	[�������1] [nvarchar](40) NOT NULL,
	[�������2] [nvarchar](40) NOT NULL,
	[���������] [nvarchar](40) NOT NULL,
	[�����] [nvarchar](40) NOT NULL,
	);

	CREATE TABLE [����� �������](
	[�����] [int] NOT NULL PRIMARY KEY,
	[�������] [nvarchar](40) NOT NULL,
	[������] [nvarchar](20) NOT NULL,
	[�����] [int] NULL,
	[����] [int] NULL,
	[�������] [int] NOT NULL,
	);
	USE[ChampionsLegaueDb]
	GO
	

	ALTER TABLE [����� �������]
	ADD
	FOREIGN KEY (�������) REFERENCES ������� (���)
	 ON DELETE CASCADE ON UPDATE CASCADE
	 GO
	 ALTER TABLE ����
	ADD
	FOREIGN KEY ([��� ������� ���������]) REFERENCES ������� (���)
	 ON DELETE CASCADE ON UPDATE CASCADE

	  ALTER TABLE ����
	ADD
	FOREIGN KEY ([��� ������� ������]) REFERENCES �������1 (���)
	 ON DELETE CASCADE ON UPDATE CASCADE

	 ALTER TABLE ����
	ADD
	FOREIGN KEY (������) REFERENCES ������� (������)
	 ON DELETE CASCADE ON UPDATE CASCADE

	 ALTER TABLE ����
	ADD
	FOREIGN KEY ([��������� �������]) REFERENCES ���� (�������)
	 ON DELETE CASCADE ON UPDATE CASCADE
	 GO