using System;
using System.Collections.Generic;
using DevFest.Dtos;

namespace DevFest.Controllers
{
	public class Controller
	{
		private List<User> userList;

		#region Construction

		public Controller ()
		{
			FillUsers ();
		}

		#endregion

		#region Private Methods

		private void FillUsers ()
		{
			userList = new List<User> ();
			User user = new User ();
			user.UserName = "Juan";
			user.Password = "123456";
			userList.Add (user);
			user = new User ();
			user.UserName = "Angela";
			user.Password = "105383";
			userList.Add (user);
		}

		#endregion

		#region Public Methods

		public bool ExistUser (User user)
		{
			if (userList.Contains (user)) {
				return true;
			}
			return false;
		}

		#endregion
	}
}

