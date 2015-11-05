
using System;

using Foundation;
using UIKit;
using DevFest.Controllers;
using DevFest.Dtos;

namespace DevFest.Views
{
	public partial class LoginViewController : UIViewController
	{
		Controller controller;

		public LoginViewController () : base ("LoginViewController", null)
		{
			controller = new Controller ();
		}

		#region cicle Life

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			btnLogin.TouchDown += Login;
		}

		#endregion

		#region Class Methods

		private void Login (object sender, EventArgs e)
		{
			if (ValidateFields ()) {
				User user = new User ();
				user.UserName = txtLogin.Text;
				user.Password = txtPassword.Text;
				if (controller.ExistUser (user)) {

				} else {
					//No existe el usario con dicha contraseña en la db
					UIAlertView alert = new UIAlertView () { 
						Title = "Error", Message = "Error en el usuario o clave"
					};
					alert.AddButton ("OK");
					alert.Show ();
				}
			} else {
				//No ha ingresado todos los campos
				UIAlertView alert = new UIAlertView () { 
					Title = "Error", Message = "Debe ingresar todos los campos"
				};
				alert.AddButton ("OK");
				alert.Show ();
			}
		}

		private bool ValidateFields ()
		{
			if (String.IsNullOrEmpty (txtLogin.Text) || String.IsNullOrEmpty (txtPassword.Text)) {
				return false;
			}
			return true;
		}

		#endregion
	}
}

