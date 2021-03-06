<%--
 Sistema de Ouvidoria: um canal atrav�s do qual os usu�rios
 podem encaminhar suas reclama��es, elogios e sugest�es.
 
 Copyright (C) 2011 SERPRO
 
 Este programa � software livre; voc� pode redistribu�-lo e/ou
 modific�-lo sob os termos da Licen�a P�blica Geral GNU, conforme
 publicada pela Free Software Foundation; tanto a vers�o 2 da
 Licen�a como (a seu crit�rio) qualquer vers�o mais nova.
 
 Este programa � distribu�do na expectativa de ser �til, mas SEM
 QUALQUER GARANTIA; sem mesmo a garantia impl�cita de
 COMERCIALIZA��O ou de ADEQUA��O A QUALQUER PROP�SITO EM
 PARTICULAR. Consulte a Licen�a P�blica Geral GNU para obter mais
 detalhes.
 
 Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral GNU,
 sob o t�tulo "LICENCA.txt", junto com esse programa. Se n�o,
 acesse o Portal do Software P�blico Brasileiro no endere�o
 http://www.softwarepublico.gov.br/ ou escreva para a Funda��o do
 Software Livre (FSF) Inc., 51 Franklin St, Fifth Floor, Boston,
 MA 02111-1301, USA.
 
 Contatos atrav�s do seguinte endere�o internet:
 http://www.serpro.gov.br/sistemaouvidoria/
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%--
  /*
   -- Sistema:      Ouvidoria
   -- M�dulo:       Geral
   -- Aplica��o:    Login
   -- 
   -- Descri��o:    Login da Aplica��o
   -- 
   -- Vers�o:       1.0
   -- Data:         03/12/2004
  */
--%>

<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html lang="pt">

<head>
	<title>Abertura Sistema Ouvidoria</title>
	<html:base/>
	<link rel="stylesheet" href="<bean:write name="_LAYOUT_" property="esquemaCores"/>/estilo_capa_int.css" type="text/css">
	<script src="js/util.js" type="text/javascript"></script>
	
	<script type="text/javascript" language="JavaScript">
	<!-- //
		function _abreAlerta(texto) {
			var baseHref = location.protocol + "//" + location.host + location.pathname;
			novaJanela( baseHref + "../../pages/Alerta.jsp?error=" + texto, "Erro", 450, 180, 0, 0, 300, 200 ); 
		}
	
		try { 
			if ( window.name != "conteudo" && top.parent.frames["conteudo"] ) {
				top.parent.frames["conteudo"].location = window.location;
			} 
			document.getElementById("titulo").focus(); 
		} catch(e) {}

	  // -->
	</script>

	<logic:messagesPresent>
	<script type="text/javascript" charset='iso-8859-1'>
	  <!-- //
		var innerHtmlMsgErros = '';
		<html:messages id="message" message="false">
			innerHtmlMsgErros += formataErro('<%= message %>');
		</html:messages>
		_abreAlerta(innerHtmlMsgErros);
	  // -->
	</script>
	</logic:messagesPresent>

</head>
<body style="margin: 0px 0px;">

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td class="tdLeft" width="162">
		<table cellspacing=0 cellpadding=0 border=0 width=100%>
			<tr height="30%">
				<td>
					<IMG alt="Logotipo Acessibilidade" src="images/acessibilidade.gif" tabindex="1">
				</td>
			</tr>
			<tr height="70%">
				<td>
				</td>
			</tr>
			<tr height="30%">
				<td>
					<IMG alt="Logotipo Serpto" src="images/serpro.gif" tabindex="2">
				</td>
			</tr>			
		</table>
	</td>
	<td valign="middle" align="center" bgColor="#FFFFFF"> 
	<img alt="Logotipo Sistema Ouvidoria" src="images/SistCpMarcaSistemaPG.gif" tabindex="3">
	  <p tabindex="4">
		  <font style="font-size='70%'">
		  	<%= request.getAttribute("textoOuvidoria") %>
	      </font>
	  </p>
      <div id=left>
      <ul>
         <li><a tabindex="5" href="<%= request.getAttribute("suporteUsuario")%>" target="_top">Suporte ao Usu�rio</a></li>
      </ul>
      </div>
      </td>
	 <td class="tdRight" width="162"></td>
</tr>
</table>
</body>

</html>

