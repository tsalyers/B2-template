<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="/bbNG" prefix="bbNG"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<bbNG:genericPage>
    <fmt:setBundle basename="settings" />
    <fmt:message key="name" var="plugin_name"/>
    <fmt:message key="title" var="page_title" />
    <fmt:message key="header.instructions" var="header_instructions" />
    <fmt:message key="step1.title" var="step1_title" />
    <fmt:message key="step1.label" var="step1_label" />
    <fmt:message key="step1.instructions" var="step1_instructions" />
    <fmt:message key="step1.helptext" var="step1_helptext" />

    <bbNG:breadcrumbBar environment="SYS_ADMIN" navItem="admin_plugin_manage">
        <bbNG:breadcrumb href="${recallUrl}" title="${plugin_name}" />
        <bbNG:breadcrumb title="${page_title}" />
    </bbNG:breadcrumbBar>

    <bbNG:pageHeader instructions="${header_instructions}">
        <bbNG:pageTitleBar showTitleBar="true" title="${page_title}" />
    </bbNG:pageHeader>


    <bbNG:form action="" id="id_simpleForm" name="simpleForm" method="post" onsubmit="return validateForm();">
        <bbNG:dataCollection markUnsavedChanges="true" showSubmitButtons="true">
            <bbNG:step hideNumber="true" id="stepOne" title="${step1_title}" instructions="${step1_instructions}">
                <bbNG:dataElement isRequired="true" label="${step1_label}">
                    <bbNG:textElement id="id" name="Name" value="Value" helpText="${step1_helptext}" size="50" minLength="1" />
                </bbNG:dataElement>
            </bbNG:step>
            <bbNG:stepSubmit hideNumber="true" showCancelButton="true" cancelUrl="${recallUrl}" />
        </bbNG:dataCollection>

    </bbNG:form>
</bbNG:genericPage>
