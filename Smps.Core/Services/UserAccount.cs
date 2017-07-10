﻿//-----------------------------------------------------------------------
// <copyright file="UserAccount.cs" company="CompanyName">
//     Company copyright tag.
// </copyright>
//<summary>This is the User account class.</summary>
//This contains all the crud operations related to user account.
//-----------------------------------------------------------------------

namespace Smps.Core.Services
{
    
    using BusinessObjects.Account;
    using Interfaces.Account;
    using Interfaces.Account.Repositories;
    
    
    /// <summary>
    /// This class contains the methods related to user account.
    /// </summary>
    public class UserAccount : IUserAccount
    {
        /// <summary>
        /// The object instance.
        /// Of the user account.
        /// This would be used across this class.
        /// </summary>
        private readonly IUserAccountRepository userAccount;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserAccount" /> class.
        /// This is implemented using strategic design pattern.
        /// This class depends on abstractions.
        /// </summary>
        /// <param name="userAccount">The object instance.</param>
        public UserAccount(IUserAccountRepository userAccount)
        {
            //Storing the object instance.
            this.userAccount = userAccount;
        }

        /// <summary>
        /// Gets the user profile.
        /// </summary>
        /// <param name="userId">The user id.</param>
        /// <returns>The user profile.</returns>
        public UserProfile GetUserProfile(string userId)
        {
            //returning the user profile.
            return userAccount.GetUserProfile(userId);
        }

        /// <summary>
        /// Validates the user and returns profile
        /// </summary>
        /// <param name="userId">The user id.</param>
        /// <param name="password">The password.</param>
        /// <returns>The user profile.</returns>
        public UserProfile ValidateUser(string userId, string password)
        {
            //returning the user profile.
            return userAccount.ValidateUser(userId, password);
        }
    }
}
