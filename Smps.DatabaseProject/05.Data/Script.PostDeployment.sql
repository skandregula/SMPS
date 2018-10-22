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
           (519420,'Sai','Patha',9948484684,'sai_patha@epam.com','Holder','1','JVP',0,'Epam@1234'),
                 (519325,'prem','yelavarthi',8977510620,'prem_yelavarthi@epam.com','Holder','6','JVP',0,'Epam@1234')
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
