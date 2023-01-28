<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="f1.aspx.cs" Inherits="CommonEntranceTest.f1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 305px;
        }
        .style2
        {
            width: 276px;
        }
    </style>
</head>
<body>
   <script type="text/javascript">

 

function Get_Cookie( check_name ) {

 

     var a_all_cookies = document.cookie.split( ';' );

     var a_temp_cookie = '';

     var cookie_name = '';

     var cookie_value = '';

     var b_cookie_found = false; 
for ( i = 0; i < a_all_cookies.length; i++ )

     {

         a_temp_cookie = a_all_cookies\[i\].split( '=' );

 

         cookie_name = a_temp_cookie\[0\].replace(/^\s+|\s+$/g, '');

 

         if ( cookie_name == check_name )

         {

             b_cookie_found = true;

 

             if ( a_temp_cookie.length > 1 )
{

                 cookie_value = unescape( a_temp_cookie\[1\].replace(/^\s+|\s+$/g, '') );

             }

             return cookie_value;

             break;

         }

         a_temp_cookie = null;

         cookie_name = '';

     }

     if ( !b_cookie_found )
{

         return null;

     }

 }

 

 function setCookie(name, value, path)

 {

    document.cookie = name+"="+value+";path="+path;

 }

 

 function deleteCookie(name, path)

 {

    if (Get_Cookie(name))

        document.cookie = name+"="+((path)?";path="+path :"")+";expires=Thu, 01-Jan-1970 00:00:01 GMT";

 }
var secs

var timerID = null

var timerRunning = false

var delay = 1000

 

function InitializeTimer()

{

    if(Get_Cookie('timer')){

        document.getElementById('cookieText').innerHTML = 'cookie found with value '+Get_Cookie('timer');

        secs = Get_Cookie('timer');

        }

    else{

        document.getElementById('cookieText').innerHTML = 'no cookie found timer starting from default value';

     secs = 100;

    }
StartTheTimer();

}

 

function StopTheClock()

{

 if(timerRunning)

 clearTimeout(timerID);

 timerRunning = false;

    deleteCookie('timer', '/');

    document.getElementById('cookieText').innerHTML = 'cookie deleted';

}function StartTheTimer()

{

 if (secs==0)

 {

        document.getElementById('tim').innerHTML = secs;

        setCookie('timer', secs, '/');

 StopTheClock();

 }

 else

 {

 self.status = secs;

        document.getElementById('tim').innerHTML = secs;

        setCookie('timer', secs, '/');

 secs = secs - 1;
timerRunning = true;

 timerID = self.setTimeout("StartTheTimer()", delay);

 }

}

//-->

 

</script>
</head>
<body>
<div id="tim"></div>
<div id="cookieText"></div>
<script type="text/javascript">

    InitializeTimer();

</script>
   
    <form id="form1" runat="server">
    <div>
    
    </div>
   
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" ForeColor="Fuchsia" 
                    style="font-weight: 700"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
    
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
    </form>
   
    </body>
</html>
