<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/contact-Dede-Emerson.aspx.cs" Inherits="_About_Dede_Emerson"  %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" 
    TagPrefix="BotDetect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
        <title>Contact author Dede Emerson</title>
    <meta name="description" content ="Contact Karl Milde, author of The Airplane, The Commuter Train and The Road Ranger" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderText" Runat="Server">
    <form id="form1" runat="server">
    <div class="jumbotron">
<img src="images/Dede-Emerson-NYC-photographer.jpg" alt="Dede Emerson, author of book of photos of Manhattan" class="pull-right" />
<h1 >Contact Dede Emerson</h1>
    <h3>
     
<asp:Label ID="lblResult" Font-Bold="true"  runat ="server" Text="" ></asp:Label>
</h3>
<table><tr><td>
Email address:</td><td><asp:TextBox ID="txtEmail" Columns ="45" runat="server"></asp:TextBox>
</td></tr>
<tr><td>Your Name:</td><td>
<asp:TextBox ID="txtName" Columns ="45" runat="server"></asp:TextBox>
</td></tr>
<tr><td>Your Phone Number:</td><td>
<asp:TextBox ID="txtPhone" Columns ="45" runat="server"></asp:TextBox>
</td></tr>
<tr><td>Your message:</td><td><asp:TextBox runat ="server" ID="txtMessage" TextMode="MultiLine" Columns="40" Rows="4"></asp:TextBox></td></tr>
<tr><td></td><td>
    <fieldset> 
      
      <p class="prompt"> 
        <label for="Captcha1CodeTextBox">Retype the characters from the picture:</label></p>
      
      <BotDetect:WebFormsCaptcha runat="server" ID="Captcha1" 
      UserInputControlID="Captcha1CodeTextBox" 
        CodeLength="6" 
        CodeStyle="Alphanumeric" 
        DisallowedCodeSubstringsCsv="1,2,3,4,5,00,777,9999" 
        CodeTimeout="300" 
        ImageStyle="SunAndWarmAir" 
        ImageSize="250,60" 
        ImageFormat="Png" 
        CustomDarkColor="Black" 
        CustomLightColor="White" 
        SoundEnabled="true" 
        SoundStyle="Synth" 
        SoundFormat="WavPcm8bit8kHzMono" 
        SoundRegenerationMode="Limited" 
        Locale="en-US" 
        ReloadEnabled="true" 
        UseSmallIcons="false" 
        UseHorizontalIcons="false" 
        SoundIconUrl="" 
        ReloadIconUrl="" 
        IconsDivWidth="27" 
        HelpLinkEnabled="true" 
        HelpLinkMode="Text" 
        TabIndex="-1" 
        AdditionalCssClasses="class1 class2 class3" 
        AdditionalInlineCss="border: 4px solid #fff; background-color: #f8f8f8;" 
        AddScriptInclude="true" 
        AddInitScript="true" 
        AutoUppercaseInput="true" 
        AutoFocusInput="true" 
        AutoClearInput="true" 
        AutoReloadExpiredCaptchas="true" 
        AutoReloadTimeout="7200" 
        SoundStartDelay="100" 
        RemoteScriptEnabled="true" /> 
      <div class="validationDiv"> 
        <asp:TextBox ID="Captcha1CodeTextBox" runat="server"></asp:TextBox> 
        <asp:Label ID="Captcha1CorrectLabel" runat="server" CssClass="correct" 
        Text="Correct!" Visible="false"></asp:Label> 
        <asp:Label ID="Captcha1IncorrectLabel" runat="server" 
        CssClass="incorrect" Text="Incorrect!" Visible="false"></asp:Label> 
        
        
      </div> 
    </fieldset> 
    <asp:Button ID="Button1" runat="server" Text="Contact the Author" />  

    

             </td></tr>

</table>
    </div>
    </form>
</asp:Content>


