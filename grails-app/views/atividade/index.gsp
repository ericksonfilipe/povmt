
<%@ page import="povmt.Atividade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'atividade.label', default: 'Atividade')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-atividade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-atividade" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dono" title="${message(code: 'atividade.dono.label', default: 'Dono')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'atividade.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="tempo" title="${message(code: 'atividade.tempo.label', default: 'Tempo')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'atividade.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="foto" title="${message(code: 'atividade.foto.label', default: 'Foto')}" />
					
						<g:sortableColumn property="prioridade" title="${message(code: 'atividade.prioridade.label', default: 'Prioridade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${atividadeInstanceList}" status="i" var="atividadeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${atividadeInstance.id}">${fieldValue(bean: atividadeInstance, field: "dono")}</g:link></td>
					
						<td>${fieldValue(bean: atividadeInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: atividadeInstance, field: "tempo")}</td>
					
						<td>${fieldValue(bean: atividadeInstance, field: "data")}</td>
					
						<td>${fieldValue(bean: atividadeInstance, field: "foto")}</td>
					
						<td>${fieldValue(bean: atividadeInstance, field: "prioridade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${atividadeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
