<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="${locale}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="author" content="Caelum"/>
	<meta name="reply-to" content="contato@caelum.com.br"/>
	<meta name="author" content="Design"/>
	<meta name="reply-to" content="lokidg@gmail.com"/>

	<meta name="description" content="<fmt:message key="meta.description"/>"/>
	<meta name="keywords" content="sites, web, desenvolvimento, development, java, opensource"/>
	<title>V|Raptor - Minicurso</title>
	<link href="<c:url value="/minicurso.css"/>" rel="stylesheet" type="text/css" media="screen" />
    <!--[if lt IE 7]>
    <script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE7.js" type="text/javascript"></script>
    <![endif]-->
</head>

<body>
	<div id="headerWrap">
    	<div id="headerContent">
        	<h1 id="logoVraptor"><span>V|Raptor</span></h1><!-- vraptorlogo-->
            
        </div><!-- header content -->
    </div><!-- header wrap-->
    <c:set var="path"><c:url value="/"/></c:set>
    <div id="menuWrap">
	    <form class="busca" action="<c:url value="/materias/busca"/>" method="get">
	    	<ul id="menuElementsEn">
	        	<li><a id="homeBtnEn" href="${path }"><span>home</span></a></li>
	        	<li><a id="downloadBtnEn" href="${path }professores/form"><span>Adiciona professor</span></a></li>
	        	<li><a id="downloadBtnEn" href="${path }professores/lista"><span>Professores</span></a></li>
		        <li>
		        <input type="text" name="materia" value="Digite uma mat�ria" onfocus="this.value='';" 
		        		onblur="if (this.value == '') this.value='Digite uma mat�ria';"/>
		        <button type="submit">Busca</button></li>
	        </ul><!-- menuElements-->
        </form>
    </div><!-- menuWrap-->
    <c:if test="${not empty errors}">
		<div id="errors">
			<ul>
				<c:forEach items="${errors }" var="error">
					<li>${error.category } - ${error.message }</li>
				</c:forEach>
			</ul>
		</div>
	</c:if>
	
	
	
	
	
	
	<c:if test="${not empty mensagem}">
		<div id="notice">
			<p>${mensagem }</p>
		</div>
	</c:if>
	<div id="contentWrap">