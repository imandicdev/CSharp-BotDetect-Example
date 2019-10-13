using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BotDetect;
using BotDetect.Web;

//Custom Captcha validation and mailing 
//(c) I.Mandic, Software Development Services https://imandic.tk


public partial class SomePage : System.Web.UI.Page
{

    
    protected void Page_PreRender(object sender, EventArgs e)
    {
        Captcha1.CodeLength = 6;
        Captcha1.CodeStyle = CodeStyle.Alphanumeric;
        Captcha1.DisallowedCodeSubstringsList = new List<string> { "AAA", "BBB",
    "CCC" };
        Captcha1.CodeTimeout = 900; // 15 minutes 

        // only re-calcualated on form load 
        ImageStyle[] imageStyles =
            {
            ImageStyle.BlackOverlap,
            ImageStyle.Graffiti,
            ImageStyle.Overlap
        };
        Captcha1.ImageStyle = CaptchaRandomization.GetRandomImageStyle(imageStyles);
        Captcha1.ImageSize = new System.Drawing.Size(120, 35);
        Captcha1.ImageFormat = ImageFormat.Png;
        Captcha1.CustomDarkColor = System.Drawing.Color.DarkGreen;
        Captcha1.CustomLightColor = System.Drawing.ColorTranslator.FromHtml("#eeeeff");

        

        Captcha1.Locale = "en-US";
        Captcha1.ReloadEnabled = true;
        Captcha1.UseSmallIcons = true;
        Captcha1.UseHorizontalIcons = true;
        Captcha1.SoundIconUrl = "";
        Captcha1.ReloadIconUrl = "";
        Captcha1.IconsDivWidth = 50;
        Captcha1.TabIndex = 15;
        Captcha1.AdditionalCssClasses = "";
        Captcha1.AdditionalInlineCss = "";

        //Captcha1.AddScriptInclude = true;
        //Captcha1.AddInitScript = true;
        Captcha1.AutoUppercaseInput = true;
        Captcha1.AutoFocusInput = true;
        Captcha1.AutoClearInput = true;
        Captcha1.AutoReloadExpiredCaptchas = true;
        Captcha1.AutoReloadTimeout = 3600; // 1 hour 
        Captcha1.SoundStartDelay = 1000; // 1 second 
        Captcha1.RemoteScriptEnabled = true;

        if (IsPostBack)
        {

            bool isHuman1 = Captcha1.Validate(Captcha1CodeTextBox.Text);
            Captcha1CodeTextBox.Text = null; // clear previous user input

            if (!isHuman1)
            {
                
                Captcha1CorrectLabel.Visible = false;
                Captcha1IncorrectLabel.Visible = true;
            }
            else
            {
                
                Captcha1CorrectLabel.Visible = true;
                Captcha1IncorrectLabel.Visible = false;
                SendEMailAddress();

            }
        }
        
        
    }

   public void SendEMailAddress()
    {
        editCode ec = new editCode();

        ec.SendMailMessage("Contact from Website", txtEmail.Text, txtName.Text, txtMessage.Text);
        lblResult.Text = "Thank you for contacting me. <br />";
        txtName.Enabled = false;
        txtEmail.Enabled = false;
        txtPhone.Enabled = false;
        txtMessage.Enabled = false;
        Button1.Enabled = false;
    }
}
