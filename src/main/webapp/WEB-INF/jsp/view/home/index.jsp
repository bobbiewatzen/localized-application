<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
  <head>
    <title><spring:message code="title.alerts" /></title>
  </head>
  <body>
    <h2><spring:message code="title.alerts" /></h2>
    <i><fmt:message key="alerts.current.date">
      <fmt:param value="${date}" />
    </fmt:message></i><br /><br />
    <fmt:message key="number.alerts">
      <fmt:param value="${alerts}" />
    </fmt:message>
    <c:if test="${alerts} > 0">&nbsp;
      <spring:message code="alert.details">
      <spring:argument value="${numCritical}" />
      <spring:argument value="${numImportant}" />
      <spring:argument value="${numTrivial}" />
      </spring:message>
    </c:if>
    <c:if test="${exception != null }"><br /><br />
      <spring:message message="${exception }" />
    </c:if>
  </body>
</html>