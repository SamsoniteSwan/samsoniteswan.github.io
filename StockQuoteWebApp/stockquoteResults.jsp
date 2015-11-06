<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--

This example JSP uses JTSL rather than scriplets to access data.

In the MoodSurvey servlet, an instance of a Mood is placed in the http session.

The code on this page gets that instance of out the session and uses'
it values to determine what to display to the user.

--%>

<%-- get the Mood instance out of the session context --%>
<jsp:useBean id="quotes" class="java.util.ArrayList" scope="session">
    <c:set target='${quotes}'  value='${sessionScope.get("quotes")}'/>
</jsp:useBean>
<jsp:useBean id="quote" class="com.model.StockQuote" scope="session">
    <c:set target='${quote}'  value='${sessionScope.get("quote")}'/>
</jsp:useBean>

<html>
<head>
    <title>Stock Quote</title>

    <style>
    table { border: 1px solid green;
        border-spacing: 10px;
        text-align: center;
        }

     th {
        border: 1px solid green;
        }

    </style>
</head>
<body>

<%--

Now use the mood values to see what message to send to the user
Note the use of c:if which is a JSTL tag the makes it easy to do if statements in
JSP code. There JSTL tags for all common  operations
--%>
<h2>~~ Historical Stock values for <c:out value="${quote.symbol}"/> ~~</h2> <br>

<table style="width:100%">
    <th>Date</th>
    <th>Price At Close</th>
<c:forEach items="${quotes}" var="iQuote">
    <tr>

        <td><c:out value="${iQuote.getDateTimeForInsert()}"/></td>
        <td><c:out value="${iQuote.getPrice()}"/></td>
    </tr>
</c:forEach>
</table>

<P>
</P>

</body>
</html>