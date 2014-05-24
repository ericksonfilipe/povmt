
<%@ page import="povmt.Atividade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'atividade.label', default: 'Atividade')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-atividade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-atividade" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list atividade">
			
				<g:if test="${atividadeInstance?.dono}">
				<li class="fieldcontain">
					<span id="dono-label" class="property-label"><g:message code="atividade.dono.label" default="Dono" /></span>
					
						<span class="property-value" aria-labelledby="dono-label"><g:fieldValue bean="${atividadeInstance}" field="dono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atividadeInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="atividade.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${atividadeInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atividadeInstance?.tempo}">
				<li class="fieldcontain">
					<span id="tempo-label" class="property-label"><g:message code="atividade.tempo.label" default="Tempo" /></span>
					
						<span class="property-value" aria-labelledby="tempo-label"><g:fieldValue bean="${atividadeInstance}" field="tempo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atividadeInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="atividade.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:fieldValue bean="${atividadeInstance}" field="data"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atividadeInstance?.foto}">
				<li class="fieldcontain">
					<span id="foto-label" class="property-label"><g:message code="atividade.foto.label" default="Foto" /></span>
					
						<span class="property-value" aria-labelledby="foto-label"><g:fieldValue bean="${atividadeInstance}" field="foto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atividadeInstance?.prioridade}">
				<li class="fieldcontain">
					<span id="prioridade-label" class="property-label"><g:message code="atividade.prioridade.label" default="Prioridade" /></span>
					
						<span class="property-value" aria-labelledby="prioridade-label"><g:fieldValue bean="${atividadeInstance}" field="prioridade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atividadeInstance?.lazer}">
				<li class="fieldcontain">
					<span id="lazer-label" class="property-label"><g:message code="atividade.lazer.label" default="Lazer" /></span>
					
						<span class="property-value" aria-labelledby="lazer-label"><g:formatBoolean boolean="${atividadeInstance?.lazer}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:atividadeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${atividadeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
