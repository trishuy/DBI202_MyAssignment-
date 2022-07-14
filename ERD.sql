USE [master]
GO

/****** Object:  Database [Student Grading Management Subsystem ]    Script Date: 7/14/2022 10:28:15 PM ******/
CREATE DATABASE [Student Grading Management Subsystem ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Student Grading Management Subsystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Student Grading Management Subsystem .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Student Grading Management Subsystem _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Student Grading Management Subsystem _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student Grading Management Subsystem ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET ARITHABORT OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET  ENABLE_BROKER 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET  MULTI_USER 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Student Grading Management Subsystem ] SET  READ_WRITE 
GO

