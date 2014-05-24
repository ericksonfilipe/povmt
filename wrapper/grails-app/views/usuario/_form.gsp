<%@ page import="povmt.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} ">
	<label for="login">
		<g:message code="usuario.login.label" default="Login" />
		
	</label>
	<g:textField name="login" value="${usuarioInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'atividades', 'error')} ">
	<label for="atividades">
		<g:message code="usuario.atividades.label" default="Atividades" />
		
	</label>
	<g:select name="atividades" from="${povmt.Atividade.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.atividades*.id}" class="many-to-many"/>
</div>

