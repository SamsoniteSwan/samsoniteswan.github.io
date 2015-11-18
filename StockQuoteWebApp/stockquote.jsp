<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<jsp:useBean id="stockQuote" class="com.model.StockQuote" scope="request"/>
<jsp:setProperty name="stockQuote" property="*"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get Stock Form</title>
<style>
div.space {
    line-height: 2;
    }
table { text-align: right; }

td.center { text-align: center; }

</style>
</head>
<body>
<h2>
    Enter a stock: <br>
</h2>

<P></P>

<form name="stockform" action="servlets/StockSearchServletForwarding/" method="post">
    <div class="space">
    <table>
        <tr>
            <td>Source<td>
            <td class="center"><select name="source">
                <option value="yahoo">Yahoo</option>
                <option value="db">Database</option>
                </td>
            <td></td>
        </tr>
        <tr>
            <td>Stock Symbol</td>
            <td><input type="text" name="stockSymbol"
                  value='<%= stockQuote.getSymbol() == null ? "" : stockQuote.getSymbol() %>'></td>
        </tr>
        <tr>
            <td>Start</td>
            <td><input type="text" name="startDate" title="startDate"></td>
            <td><i>(Format: YYYY-MM-DD HH:mm:ss)</i></td>
        </tr>
        <tr>
            <td>End</td>
            <td><input type="text" name="endDate" title="endDate"></td>
            <td><i>(Format: YYYY-MM-DD HH:mm:ss)</i></td>
        </tr>
        <tr><td colspan="2"><input type="SUBMIT" value="Get Values"></td></tr>
    </table>
    <br>


    <input type="HIDDEN" name="submit" value="true">

    </div>
</form>

</body>
</html>