<%@ page import="povmt.Atividade" %>



<div class="fieldcontain ${hasErrors(bean: atividadeInstance, field: 'dono', 'error')} required">
	<label for="dono">
		<g:message code="atividade.dono.label" default="Dono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dono" required="" value="${atividadeInstance?.dono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: atividadeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="atividade.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${atividadeInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: atividadeInstance, field: 'tempo', 'error')} required">
	<label for="tempo">
		<g:message code="atividade.tempo.label" default="Tempo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tempo" type="number" value="${atividadeInstance.tempo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: atividadeInstance, field: 'data', 'error')} ">
	<label for="data">
		<g:message code="atividade.data.label" default="Data" />
		
	</label>
	<g:field name="data" type="number" value="${atividadeInstance.data}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: atividadeInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="atividade.foto.label" default="Foto" />
		
	</label>
	<g:textField name="foto" value="${atividadeInstance?.foto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: atividadeInstance, field: 'prioridade', 'error')} ">
	<label for="prioridade">
		<g:message code="atividade.prioridade.label" default="Prioridade" />
		
	</label>
	<g:field name="prioridade" type="number" value="${atividadeInstance.prioridade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: atividadeInstance, field: 'lazer', 'error')} ">
	<label for="lazer">
		<g:message code="atividade.lazer.label" default="Lazer" />
		
	</label>
	<g:checkBox name="lazer" value="${atividadeInstance?.lazer}" />
</div>

