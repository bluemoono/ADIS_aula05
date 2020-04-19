<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alterar Filme</title>
</head>
<body>
<h1>Alterar Filme</h1>
	<p> Digite os dados do filme para alterar</p>
	<form action="alterar_filmes.do" method="POST">
		<p><label>Título do Filme: </label><input type="text" name="titulo" required/></p>
		<c:forEach var="filme" items="${filme}">
			<option value="${filme.titulo}">${filme.titulo}</option>
		</c:forEach>
		
		<p><label>Descrição: </label><input type="text" name="descricao" /></p>
		<c:forEach var="filme" items="${filme}">
			<option value="${filme.descicao}">${filme.descricao}</option>
		</c:forEach>
		
		<p><label>Diretor: </label><input type="text" name="diretor"/>
		<c:forEach var="filme" items="${filme}">
			<option value="${filme.diretor}">${filme.diretor}</option>
		</c:forEach>
		
		<label>Gênero: </label><select name="genero" required>
		<c:forEach var="genero" items="${generos}">
			<option value="${genero.id}">${genero.nome}</option>
		</c:forEach>
		</select>
		</p>
		
		<p><label>Lançamento: </label><input type="date" name="data_lancamento"/>
		<c:forEach var="filme" items="${filme}">
			<option value="${filme.dataLancamento}">${filme.dataLancamento}</option>
		</c:forEach>
		
		<label>Popularidade: </label><input type="number" name="popularidade"/></p>
		<c:forEach var="filme" items="${filme}">
			<option value="${filme.populariedade}">${filme.populariedade}</option>
		</c:forEach>
		
		<p><label>URL do Pôster: </label><input type="text" name="poster_path"/></p>
		<c:forEach var="filme" items="${filme}">
			<option value="${filme.poster}">${filme.poster}</option>
		</c:forEach>
		
		<p><input type="submit" name="acao" value="alterar"></p>
	</form>
</body>
</html>