/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


MERGE INTO [dbo].[Users] AS TARGET USING (VALUES
           
				 )

				 AS Source ([EmpNo]
           ,[FirstName]
           ,[LastName]
           ,[MobileNumber]
           ,[UserLoginId]
           ,[UserType]
           ,[ParkingSlotNumber]
           ,[Location]
           ,[OperationType]
           ,[UserLoginPassword])

		   ON Target.[EmpNo] = Source.[EmpNo]
		   
		   WHEN NOT MATCHED BY TARGET THEN 
			INSERT ([EmpNo]
           ,[FirstName]
           ,[LastName]
           ,[MobileNumber]
           ,[UserLoginId]
           ,[UserType]
           ,[ParkingSlotNumber]
           ,[Location]
           ,[OperationType]
           ,[UserLoginPassword]) 
			VALUES ([EmpNo]
           ,[FirstName]
           ,[LastName]
           ,[MobileNumber]
           ,[UserLoginId]
           ,[UserType]
           ,[ParkingSlotNumber]
           ,[Location]
           ,[OperationType]
           ,[UserLoginPassword]);  
GO
