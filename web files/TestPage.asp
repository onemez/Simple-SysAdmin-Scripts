<html>
    Server Information<br>
    ------------------<br>
    Server Name = <%= Request.serverVariables("SERVER_NAME") %> <BR>
    Server Protocol = <%= Request.serverVariables("SERVER_PROTOCOL") %> <br>
    Server IP = <%= Request.serverVariables("LOCAL_ADDR") %> <br>
    Server Port = <%= Request.serverVariables("SERVER_PORT") %> <br>
    IIS Version = <%= Request.serverVariables("SERVER_SOFTWARE") %> <br>
    <br>
    Website Information<br>
    ------------------<br>
    Application Physical Path = <%= Request.serverVariables("APPL_PHYSICAL_PATH") %> <br>
    Application Path = <%= Request.serverVariables("PATH_INFO") %> <br>
    Application Translated Path = <%= Request.serverVariables("PATH_TRANSLATED") %> <br>
    <br>
</html>
