using System;
using System.Runtime.InteropServices.Expando;

namespace DevFest.Dtos
{
	public class User : IEquatable<User>
	{
		public string UserName { get; set; }

		public string Password { get; set; }

		#region IEquatable implementation

		bool IEquatable<User>.Equals (User other)
		{
			if (String.Equals (other.UserName, this.UserName)) {
				if (String.Equals (other.Password, this.Password)) {
					return true;
				}
			}
			return false;
		}

		#endregion
	}
}

