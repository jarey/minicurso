<%@ include file="/header.jsp" %>

<form action="<c:url value="/professores"/>" method="post">
	<fieldset>
		<legend>Cadastro de Professor</legend>
		
		<label for="nome">Nome:</label>
		<input type="text" id="nome" name="professor.nome" value="${professor.nome }"/>
		
		<label for="email">Email:</label>
		<input type="text" id="email" name="professor.email" value="${professor.email }"/>
		
		<label for="senha">Senha:</label>
		<input type="password" id="senha" name="professor.senha"/>
		
		<label for="materias">Mat�rias (separado por v�rgula):</label>
		<input type="text" id="materias" name="professor.materias" value="${professor.materias }"/>
		
		<label for="salario">Sal�rio:</label>
		<input type="text" id="salario" name="professor.salario" value="${professor.salario }"/>
		
		<input type="submit" value="Salvar"/>
	</fieldset>
</form>

<%@ include file="/footer.jsp" %>