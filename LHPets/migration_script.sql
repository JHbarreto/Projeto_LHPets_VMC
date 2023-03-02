IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230302003013_Inicio-banco')
BEGIN
    CREATE TABLE [cliente] (
        [Id] int NOT NULL IDENTITY,
        [Nome] nvarchar(max) NOT NULL,
        [Cpf] nvarchar(max) NOT NULL,
        [Email] nvarchar(max) Not Null,
        [Paciente] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_cliente] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230302003013_Inicio-banco')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20230302003013_Inicio-banco', N'7.0.3');
END;
GO

COMMIT;
GO

