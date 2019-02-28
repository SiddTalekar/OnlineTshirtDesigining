<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="OnlineDesigingwebAppTest.WebForm1" %>

<!DOCTYPE html>
<script runat="server">

    void Page4SaveButton_Click(Object sender, System.EventArgs e)
    {
      // The user wants to save the survey results.
      // Insert code here to save survey results.
        
      // Disable the navigation buttons.
      Page4Save.Enabled = false;
      Page4Restart.Enabled = false;

    }
    
  </script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Page1ViewPanel"
                Width="330px"
                Height="150px"
                HorizontalAlign="Left"
                Font-Size="12"
                BackColor="#C0C0FF"
                BorderColor="#404040"
                BorderStyle="Double"
                runat="Server">

                <asp:MultiView ID="DevPollMultiView"
                    ActiveViewIndex="0"
                    runat="Server">

                    <asp:View ID="Page1"
                        runat="Server">

                        <asp:Label ID="Page1Label"
                            Font-Bold="true"
                            Text="What kind of applications do you develop?"
                            runat="Server"
                            AssociatedControlID="Page1">
                        </asp:Label>

                        <br />
                        <br />

                        <asp:RadioButton ID="Page1Radio1"
                            Text="Web Applications"
                            Checked="False"
                            GroupName="RadioGroup1"
                            runat="server"></asp:RadioButton>

                        <br />

                        <asp:RadioButton ID="Page1Radio2"
                            Text="Windows Forms Applications"
                            Checked="False"
                            GroupName="RadioGroup1"
                            runat="server"></asp:RadioButton>

                        <br />
                        <br />
                        <br />

                        <asp:Button ID="Page1Next"
                            Text="Next"
                            CommandName="NextView"
                            Height="25"
                            Width="70"
                            runat="Server"></asp:Button>

                    </asp:View>

                    <asp:View ID="Page2"
                        runat="Server">

                        <asp:Label ID="Page2Label"
                            Font-Bold="true"
                            Text="How long have you been a developer?"
                            runat="Server"
                            AssociatedControlID="Page2">                    
                        </asp:Label>

                        <br />
                        <br />

                        <asp:RadioButton ID="Page2Radio1"
                            Text="Less than five years"
                            Checked="False"
                            GroupName="RadioGroup1"
                            runat="Server"></asp:RadioButton>

                        <br />

                        <asp:RadioButton ID="Page2Radio2"
                            Text="More than five years"
                            Checked="False"
                            GroupName="RadioGroup1"
                            runat="Server"></asp:RadioButton>

                        <br />
                        <br />
                        <br />

                        <asp:Button ID="Page2Back"
                            Text="Previous"
                            CommandName="PrevView"
                            Height="25"
                            Width="70"
                            runat="Server"></asp:Button>

                        <asp:Button ID="Page2Next"
                            Text="Next"
                            CommandName="NextView"
                            Height="25"
                            Width="70"
                            runat="Server"></asp:Button>

                    </asp:View>

                    <asp:View ID="Page3"
                        runat="Server">

                        <asp:Label ID="Page3Label1"
                            Font-Bold="true"
                            Text="What is your primary programming language?"
                            runat="Server"
                            AssociatedControlID="Page3">                    
                        </asp:Label>

                        <br />
                        <br />

                        <asp:RadioButton ID="Page3Radio1"
                            Text="Visual Basic"
                            Checked="False"
                            GroupName="RadioGroup1"
                            runat="Server"></asp:RadioButton>

                        <br />

                        <asp:RadioButton ID="Page3Radio2"
                            Text="C#"
                            Checked="False"
                            GroupName="RadioGroup1"
                            runat="Server"></asp:RadioButton>

                        <br />

                        <asp:RadioButton ID="Page3Radio3"
                            Text="C++"
                            Checked="False"
                            GroupName="RadioGroup1"
                            runat="Server"></asp:RadioButton>

                        <br />
                        <br />

                        <asp:Button ID="Page3Back"
                            Text="Previous"
                            CommandName="PrevView"
                            Height="25"
                            Width="70"
                            runat="Server"></asp:Button>

                        <asp:Button ID="Page3Next"
                            Text="Next"
                            CommandName="NextView"
                            Height="25"
                            Width="70"
                            runat="Server"></asp:Button>

                        <br />

                    </asp:View>

                    <asp:View ID="Page4"
                        runat="Server">

                        <asp:Label ID="Label1"
                            Font-Bold="true"
                            Text="Thank you for taking the survey."
                            runat="Server"
                            AssociatedControlID="Page4">
                        </asp:Label>

                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                        <asp:Button ID="Page4Save"
                            Text="Save Responses"
                            OnClick="Page4SaveButton_Click"
                            Height="25"
                            Width="110"
                            runat="Server"></asp:Button>

                        <asp:Button ID="Page4Restart"
                            Text="Retake Survey"
                            CommandName="SwitchViewByID"
                            CommandArgument="Page1"
                            Height="25"
                            Width="110"
                            runat="Server"></asp:Button>

                    </asp:View>

                </asp:MultiView>

            </asp:Panel>
        </div>
    </form>
</body>
</html>
