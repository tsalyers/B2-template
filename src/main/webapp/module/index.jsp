<%@ page import="java.util.*,
                 java.lang.*"
%>

<%@ taglib uri="/bbData" prefix="bbData"%>
<%@ taglib uri="/bbNG" prefix="bbNG"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
    String hello = request.getAttribute("hello").toString();
%>


<bbData:context>
    <bbNG:genericPage>

        <fmt:setBundle basename="settings" />
        <fmt:message key="name" var="plugin_name"/>
        <fmt:message key="title" var="plugin_title"/>
        <fmt:message key="hw.main.page.breadcrumb" var="plugin_breadcrumb"/>
        <fmt:message key="hw.main.page.header" var="page_title"/>
        <fmt:message key="hw.main.tabbed.panel" var="tabbed_panel"/>
        <jsp:useBean id="HWM" class="edu.irsc.es.bb.beans.HelloWorldModel" scope="session"/>


        <bbNG:breadcrumbBar environment="SYS_ADMIN" navItem="admin_plugin_manage">
            <bbNG:breadcrumb href="${recallUrl}" title="${plugin_name}" />
            <bbNG:breadcrumb title="${plugin_breadcrumb}" />
        </bbNG:breadcrumbBar>

        <bbNG:pageHeader>
            <bbNG:pageTitleBar title="${page_title}">
                ${page_title}
            </bbNG:pageTitleBar>
        </bbNG:pageHeader>

        <bbNG:tabbedPanels>
            <bbNG:tabbedPanel title="${tabbed_panel}">
                ${hello}
            </bbNG:tabbedPanel>
        </bbNG:tabbedPanels>

        <h4>${HWM.getHello()}</h4>
    </bbNG:genericPage>
</bbData:context>
