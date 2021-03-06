USE [master]
GO
/****** Object:  Database [LibraryManagement]    Script Date: 5/11/2020 1:44:24 PM ******/
CREATE DATABASE [LibraryManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibraryManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LibraryManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LibraryManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LibraryManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LibraryManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibraryManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibraryManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibraryManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibraryManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibraryManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibraryManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibraryManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibraryManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibraryManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibraryManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibraryManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibraryManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibraryManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LibraryManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibraryManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibraryManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibraryManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibraryManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibraryManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibraryManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibraryManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LibraryManagement] SET  MULTI_USER 
GO
ALTER DATABASE [LibraryManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibraryManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibraryManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibraryManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LibraryManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LibraryManagement] SET QUERY_STORE = OFF
GO
USE [LibraryManagement]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[NIDNo] [nvarchar](100) NULL,
	[PassportNo] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[MobileNo] [nvarchar](100) NULL,
	[HomeAddress] [nvarchar](400) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Uname] [nvarchar](100) NOT NULL,
	[Upassword] [nvarchar](100) NOT NULL,
	[AccountStatus] [nvarchar](100) NOT NULL,
	[AdminLevel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[HomeAddress] [nvarchar](200) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Tittle] [nvarchar](200) NOT NULL,
	[BookType] [nvarchar](100) NOT NULL,
	[BookDescription] [nvarchar](max) NULL,
	[Auth_id] [int] NULL,
	[Pub_id] [int] NULL,
	[BookStatus] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibraryUser]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryUser](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[NIDNo] [nvarchar](100) NULL,
	[PassportNo] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[MobileNo] [nvarchar](100) NULL,
	[HomeAddress] [nvarchar](400) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Uname] [nvarchar](100) NOT NULL,
	[Upassword] [nvarchar](100) NOT NULL,
	[AccountStatus] [nvarchar](100) NULL,
	[DateOfBirth] [nvarchar](50) NULL,
	[ActiveOn] [datetime] NULL,
	[ApproverBy] [int] NULL,
	[applicationID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibraryUserRegistrationRequest]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryUserRegistrationRequest](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NOT NULL,
	[NIDNo] [nvarchar](100) NULL,
	[PassportNo] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[MobileNo] [nvarchar](100) NULL,
	[HomeAddress] [nvarchar](400) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Uname] [nvarchar](100) NOT NULL,
	[Upassword] [nvarchar](100) NOT NULL,
	[DateOfBirth] [nvarchar](50) NULL,
	[ActivationCode] [nvarchar](50) NOT NULL,
	[RequestTime] [datetime] NOT NULL,
	[UserRequestStatus] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [int] IDENTITY(1,1) NOT NULL,
	[PuilisherName] [nvarchar](100) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RStatus] [nvarchar](100) NOT NULL,
	[ApprovedBy] [int] NULL,
	[RequestToken] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Administrator] ON 

INSERT [dbo].[Administrator] ([AdminId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [AccountStatus], [AdminLevel]) VALUES (1, N'Mohammad Mahfuzun', N'Nabi', N'21899034', NULL, N'nabi.mahfuz@gmail.com', N'01863401884', N'Mirpur 12', N'Dhaka', N'Bangladesh', N'mnabi', N'mNabi', N'Active', 0)
SET IDENTITY_INSERT [dbo].[Administrator] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (1, N'Humayun', N'Ahmed', N'45 Dokhin Hawa', N'Dhaka', NULL, N'Bangladesh')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (2, N'Muhammad Zafor', N'Iqbal', N'Amborkhana', N'Sylhet', NULL, N'Bangladesh')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (3, N'Noor', N'Ahmed', N'Mirpur', N'Dhaka', NULL, N'Bangladesh')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (4, N'Farzana', N'Hoque', N'Mirpur Section 2', N'Dhaka', NULL, N'Bangladesh')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (5, N'Sayed Mujtaba', N'Ali', N'Goribgonj', N'Sylhet', NULL, N'Bangladesh')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (6, N'Omar', N'Khaiyam', N'16 Albruz Street', N'Ardestan', N'Isfahan', N'Iran')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (7, N'Muhammad ibn Ismaʿil', N'AL-Bukhari', N'20 Nishapur Street', N'Bukhara', N'Bukhara Region', N'Uzbekistan')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (8, N'Abū Ḥāmid Muḥammad ibn Muḥammad', N'Al-Ghazali', N'19 Amara Street', N'Tus', N'Khorsan', N'Seljuq Empire')
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [HomeAddress], [City], [State], [Country]) VALUES (9, N'Friedrich Wilhelm', N'Nietzsche', N'Röcken', N'Röcken', N'
Weimar', N'Germany')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (3, N'Cryptography For Dummies', N'Computer Science', N'Elimentary Book on principles of Cryptography', 3, 2, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (4, N'I and We', N'Fiction', N'Misir Ali book', 1, 1, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (5, N'Fiha Shomikoron', N'Science Fiction', N'Science Fiction Book', 1, 2, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (6, N'Copotronik Sukhdukkho', N'Science Fiction', N'Science Fiction Book', 2, 1, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (7, N'Ruby On Rails for dummies', N'Computer Sience', N'Beginners guide', 3, 1, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (8, N'.Net Core 3.1 for dummies', N'Computer Sience', N'Beginners guide', 4, 1, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (9, N'Chacha Kahini', N'Fiction', N'Fiction', 5, 1, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (10, N'The Alchemy of Happiness (Kimiya-e-saadat))', N'Philosophy', N'The Legendary book of Imam Ghazali', 8, 4, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (11, N'Rubayat', N'Poetry', N'Poetry', 6, 3, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (12, N'Sahih Bukhari', N'Religion', N'Hadit Book', 7, 4, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (13, N'JQuery CookBook', N'Computer Science', N'nn', 3, 2, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (15, N'The Incoherence of the Philosophers', N'Philosophy', N'
landmark 11th-century work by the Persian theologian Al-Ghazali and a student of the Asharite school of Islamic theology criticizing the Avicennian school of early Islamic philosophy.', 8, 3, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (16, N'Computer Operating Systems', N'Computer Science', N'Book on Computer Operation System', 3, 4, N'Available')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (17, N'Nishongo Grohochari', N'Science Fiction', N'Science Fiction', 2, 2, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (18, N'PostgreSQL in Action', N'Computer Science', N'Programming Book', 4, 3, N'Available')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (19, N'Thus Spoke Zarathustra: A Book for All and None', N'Philosophy', N' philosophical novel by German philosopher Friedrich Nietzsche', 9, 4, N'Requested')
INSERT [dbo].[Book] ([BookID], [Tittle], [BookType], [BookDescription], [Auth_id], [Pub_id], [BookStatus]) VALUES (20, N'NodeJs Cookbook', N'Computer Science', N'Programming Book', 3, 2, N'Available')
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[LibraryUser] ON 

INSERT [dbo].[LibraryUser] ([UserId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [AccountStatus], [DateOfBirth], [ActiveOn], [ApproverBy], [applicationID]) VALUES (4, N'Noor', N'Ahmed', N'2471238071', NULL, N'noor.ahmed@welldev.com', N'01843028833', N'Mirpur Section 6', N'Dhaka', N'Bangladesh', N'nAhmed', N'lLcFMRjNiuRruhKnqRJidkP1oPR9QBUkEy68/lvioG4=', N'Active', N'2005-01-01', CAST(N'1900-01-01T22:43:01.210' AS DateTime), 1, 5)
INSERT [dbo].[LibraryUser] ([UserId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [AccountStatus], [DateOfBirth], [ActiveOn], [ApproverBy], [applicationID]) VALUES (5, N'Humayun', N'Ahmed', N'2471238071', NULL, N'ahmed.humayun@gmail.com', N'01843028833', N'Dokhin Hawa', N'Dhaka', N'Bangladesh', N'nAhmed1', N'FoL6Byjh2gaa0PQZK/4X0oDA9GMFh90hDfAKMIHyiX0=', N'Active', N'1987-01-02', CAST(N'1900-01-01T10:52:21.080' AS DateTime), 1, 6)
INSERT [dbo].[LibraryUser] ([UserId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [AccountStatus], [DateOfBirth], [ActiveOn], [ApproverBy], [applicationID]) VALUES (6, N'Jibonanondo ', N'Das', N'2471238071', NULL, N'das.jibonanondo@gmail.com', N'01843028833', N'Gouronodi', N'Barishal', N'Bangladesh', N'jdas012', N'TGUVIuCz7WX17ZpdQU3WPNPFE2boiFvWPzpyFmFsvZE=', N'Active', N'1982-01-02', CAST(N'1900-01-01T12:19:18.683' AS DateTime), 1, 4)
INSERT [dbo].[LibraryUser] ([UserId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [AccountStatus], [DateOfBirth], [ActiveOn], [ApproverBy], [applicationID]) VALUES (7, N'Harry', N'Potter', NULL, N'U01973958', N'potter.harry@gmail.com', N'01843028833', N'4 Private Drive, Little Whinging', N'Surrey', N'United Kingdom', N'hPotter', N'zlD9HpctG7vSEIxqS4IowMuYFjR4lC0f20OSC5aZdhI=', N'Active', N'1993-02-06', CAST(N'1900-01-01T12:19:25.123' AS DateTime), 1, 7)
SET IDENTITY_INSERT [dbo].[LibraryUser] OFF
GO
SET IDENTITY_INSERT [dbo].[LibraryUserRegistrationRequest] ON 

INSERT [dbo].[LibraryUserRegistrationRequest] ([RequestId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [DateOfBirth], [ActivationCode], [RequestTime], [UserRequestStatus]) VALUES (4, N'Jibonanondo ', N'Das', N'2471238071', NULL, N'das.jibonanondo@gmail.com', N'01843028833', N'Gouronodi', N'Barishal', N'Bangladesh', N'jdas012', N'TGUVIuCz7WX17ZpdQU3WPNPFE2boiFvWPzpyFmFsvZE=', N'1982-01-02', N'3be1db98-088b-472f-b181-3cf6b66650f4', CAST(N'2020-05-09T03:47:36.783' AS DateTime), N'Approved')
INSERT [dbo].[LibraryUserRegistrationRequest] ([RequestId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [DateOfBirth], [ActivationCode], [RequestTime], [UserRequestStatus]) VALUES (5, N'Noor', N'Ahmed', N'2471238071', NULL, N'noor.ahmed@welldev.com', N'01843028833', N'Mirpur Section 6', N'Dhaka', N'Bangladesh', N'nAhmed', N'lLcFMRjNiuRruhKnqRJidkP1oPR9QBUkEy68/lvioG4=', N'2005-01-01', N'eaf3003d-e6c9-4ff8-84f3-42d533297100', CAST(N'2020-05-09T21:42:52.120' AS DateTime), N'Approved')
INSERT [dbo].[LibraryUserRegistrationRequest] ([RequestId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [DateOfBirth], [ActivationCode], [RequestTime], [UserRequestStatus]) VALUES (6, N'Humayun', N'Ahmed', N'2471238071', NULL, N'ahmed.humayun@gmail.com', N'01843028833', N'Dokhin Hawa', N'Dhaka', N'Bangladesh', N'nAhmed1', N'FoL6Byjh2gaa0PQZK/4X0oDA9GMFh90hDfAKMIHyiX0=', N'1987-01-02', N'3850cbda-6820-43b0-86aa-f3deb3a73602', CAST(N'2020-05-10T10:47:39.450' AS DateTime), N'Approved')
INSERT [dbo].[LibraryUserRegistrationRequest] ([RequestId], [FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], [Upassword], [DateOfBirth], [ActivationCode], [RequestTime], [UserRequestStatus]) VALUES (7, N'Harry', N'Potter', NULL, N'U01973958', N'potter.harry@gmail.com', N'01843028833', N'4 Private Drive, Little Whinging', N'Surrey', N'United Kingdom', N'hPotter', N'zlD9HpctG7vSEIxqS4IowMuYFjR4lC0f20OSC5aZdhI=', N'1993-02-06', N'5c968c90-fde0-4bbd-9baf-86f03b0468b4', CAST(N'2020-05-11T12:05:47.570' AS DateTime), N'Approved')
SET IDENTITY_INSERT [dbo].[LibraryUserRegistrationRequest] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherID], [PuilisherName], [City], [State], [Country]) VALUES (1, N'Seba Prokashoni', N'Dhaka', NULL, N'Bangladesh')
INSERT [dbo].[Publisher] ([PublisherID], [PuilisherName], [City], [State], [Country]) VALUES (2, N'Ononno Prokashoni', N'Rajbari', NULL, N'Bangladesh')
INSERT [dbo].[Publisher] ([PublisherID], [PuilisherName], [City], [State], [Country]) VALUES (3, N'Jibon Prokashoni', N'Khulna', NULL, N'Bangladesh')
INSERT [dbo].[Publisher] ([PublisherID], [PuilisherName], [City], [State], [Country]) VALUES (4, N'Ardestan Pulishing', N'Ardestan', N'Isfahan', N'Iran')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestId], [BookID], [UserID], [RStatus], [ApprovedBy], [RequestToken]) VALUES (8, 4, 4, N'Requested', NULL, N'32783059')
INSERT [dbo].[Request] ([RequestId], [BookID], [UserID], [RStatus], [ApprovedBy], [RequestToken]) VALUES (9, 8, 4, N'Requested', NULL, N'82184803')
INSERT [dbo].[Request] ([RequestId], [BookID], [UserID], [RStatus], [ApprovedBy], [RequestToken]) VALUES (10, 11, 4, N'Requested', NULL, N'57274888')
INSERT [dbo].[Request] ([RequestId], [BookID], [UserID], [RStatus], [ApprovedBy], [RequestToken]) VALUES (11, 12, 4, N'Requested', NULL, N'25571224')
INSERT [dbo].[Request] ([RequestId], [BookID], [UserID], [RStatus], [ApprovedBy], [RequestToken]) VALUES (12, 19, 4, N'Requested', NULL, N'49444325')
INSERT [dbo].[Request] ([RequestId], [BookID], [UserID], [RStatus], [ApprovedBy], [RequestToken]) VALUES (13, 17, 4, N'Requested', NULL, N'83816948')
INSERT [dbo].[Request] ([RequestId], [BookID], [UserID], [RStatus], [ApprovedBy], [RequestToken]) VALUES (14, 15, 4, N'Requested', NULL, N'54543999')
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [auth_ID] FOREIGN KEY([Auth_id])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [auth_ID]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [PUB_ID] FOREIGN KEY([Pub_id])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [PUB_ID]
GO
ALTER TABLE [dbo].[LibraryUser]  WITH CHECK ADD FOREIGN KEY([ApproverBy])
REFERENCES [dbo].[Administrator] ([AdminId])
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Approved_By] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Administrator] ([AdminId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Approved_By]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Book_Id] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Book_Id]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_User_Id] FOREIGN KEY([UserID])
REFERENCES [dbo].[LibraryUser] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_User_Id]
GO
/****** Object:  StoredProcedure [dbo].[InitiateLibraryUserAccount]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[InitiateLibraryUserAccount]
@UserRequestID int,
@AdminId int
As 
Begin
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
Begin Tran
declare @emailHolder nvarchar(200)

insert into [dbo].[LibraryUser]
([FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo],[HomeAddress], 
[City], [Country], [Uname],[Upassword], [AccountStatus], [DateOfBirth], [ActiveOn], [ApproverBy], [applicationID] )
select
[FirstName], [LastName], [NIDNo], [PassportNo], [Email], [MobileNo], [HomeAddress], [City], [Country], [Uname], 
[Upassword], 'Active', [DateOfBirth], Convert(time, GETDATE()), @AdminId, @UserRequestID
from [dbo].[LibraryUserRegistrationRequest]
where [RequestId] = @UserRequestID and [UserRequestStatus] = 'Email Verified'



if((select count(applicationID) from [dbo].[LibraryUser] where applicationID= @UserRequestID) = 1)
Begin
update [dbo].[LibraryUserRegistrationRequest] 
set [UserRequestStatus] = 'Approved'
where [RequestId] = @UserRequestID
End
Commit
End
GO
/****** Object:  StoredProcedure [dbo].[RequestBook]    Script Date: 5/11/2020 1:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[RequestBook]
@bookId int,
@userId int,
@RCode nvarchar(50)
As
Begin
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
declare @returnValue int
set @returnValue = 0

Begin Tran


if((select BookStatus from [dbo].[Book] where [BookID] = @bookId) = 'Available')
Begin
update [dbo].[Book]
set BookStatus = 'Requested'
where [BookID] = @bookId

insert into [dbo].[Request] ([BookID], [UserID],[RStatus],[RequestToken] )
values (@bookId, @userId, 'Requested', @RCode)
End
set @returnValue = 1
Commit
return @returnValue
End
GO
USE [master]
GO
ALTER DATABASE [LibraryManagement] SET  READ_WRITE 
GO
