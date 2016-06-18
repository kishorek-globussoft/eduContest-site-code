<%-- 
    Document   : userlayout
    Created on : May 30, 2016, 6:43:53 PM
    Author     : Kishore
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="msapplication-tap-highlight" content="no">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <title>Contest.EduMongoose</title>

        <link rel="icon" href="../view/assets/images/favicon/favicon-32x32.png" sizes="32x32">
        <link rel="apple-touch-icon-precomposed" href="../view/assets/images/favicon/apple-touch-icon-152x152.png">

        <meta name="msapplication-TileColor" content="#00bcd4">
        <meta name="msapplication-TileImage" content="../view/assets/images/favicon/mstile-144x144.png">

        <link href="../view/assets/plugins/materialize/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="../view/assets/users/css/sidenav.css" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="../view/assets/users/css/users.css" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="../view/assets/plugins/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="../view/assets/plugins/font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet" media="screen,projection">
    </head>

    <body>
        <tiles:insertAttribute name="top" />
        <tiles:insertAttribute name="left" />
        <tiles:insertAttribute name="body" />
        <tiles:insertAttribute name="bottom" />
    </body>
</html>
