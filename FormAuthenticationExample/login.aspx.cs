using System;
using System.Web;
using System.Web.Security;

namespace FormAuthenticationExample
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //when accessing unauthorized page, it will redirect to login page.
            //for this case, it should redirect to 'unauthorized.html'
            if (!Page.IsPostBack)
            {

                if (Request.IsAuthenticated && !string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))

                    Response.Redirect("~/unauthorized.html");
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(userNameTextBox.Text, passwordTextBox.Text))
            {
                string strRoles = "";
                if (userNameTextBox.Text == "user1")
                    strRoles = "admin,manager";
                else if (userNameTextBox.Text == "user2")
                    strRoles = "admin";
                else if (userNameTextBox.Text == "user4")
                    strRoles = "student,cs";
                else if (userNameTextBox.Text == "user5")
                    strRoles = "staff,cs";
                else
                    strRoles = "";

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                  1,
                  userNameTextBox.Text,
                  DateTime.Now,
                  DateTime.Now.AddMinutes(30),
                  false,
                  strRoles,
                  FormsAuthentication.FormsCookiePath);

                // Encrypt the ticket.
                string encTicket = FormsAuthentication.Encrypt(ticket);

                // Create the cookie.
                Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, encTicket));

                //Redirect back to original URL.
                Response.Redirect(FormsAuthentication.GetRedirectUrl(userNameTextBox.Text, false));
            }
            else
            {
                errorMessageLabel.Text = "Invalid credentials.";
            }
        }
    }
}