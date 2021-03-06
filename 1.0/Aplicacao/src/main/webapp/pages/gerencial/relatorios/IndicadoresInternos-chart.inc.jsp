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
<cewolf:chart 
    id="serproChart" 
    type='<%= request.getParameter("sel_tipo_grafico") %>' 
    title='<%= params.getTitle() %>'
    antialias='<%= params.getAntialias() %>'
    showlegend="false"
    legendanchor='<%= params.getLegendAnchor() %>'>

    <cewolf:colorpaint color='<%= params.getColorColor() %>'/>

    <cewolf:data>
        <cewolf:producer id="pieData">

            <cewolf:param name="indicador" value="<%= request.getParameter("indicador") %>"/>

            <cewolf:param name="r_modo_exibicao" value="<%= request.getParameter("r_modo_exibicao") %>"/>
            <cewolf:param name="sel_tabela" value="<%= request.getParameter("sel_tabela") %>"/>
            <cewolf:param name="ii_itens_tabela" value="<%= request.getAttribute("ii_itens_tabela") == null ? null : new java.util.ArrayList((java.util.List) request.getAttribute("ii_itens_tabela")).toArray() %>"/>
            <cewolf:param name="sel_itens_tabela" value="<%= request.getParameterValues("sel_itens_tabela") %>"/>

            <cewolf:param name="r_base_x" value="<%= request.getParameter("r_base_x") %>"/>

            <cewolf:param name="sel_tipo_grafico" value="<%= request.getParameter("sel_tipo_grafico") %>"/>

            <cewolf:param name="txt_periodo_i" value="<%= request.getParameter("txt_periodo_i") %>"/>
            <cewolf:param name="txt_periodo_f" value="<%= request.getParameter("txt_periodo_f") %>"/>
            <cewolf:param name="h_locais" value="<%= request.getParameter("h_locais") %>"/>

            <cewolf:param name="orgao" value="<%= (br.gov.serpro.ouvidoria.model.Orgao) request.getAttribute("orgao") %>"/>

        </cewolf:producer>
    </cewolf:data>

    <cewolf:chartpostprocessor 
        id="myEnhancer">
        <cewolf:param
            name="title"
            value="<%= params.getExtraTitle() %>"/>
            <cewolf:param name="local" value="<%= (String) pageContext.getAttribute("local") %>"/>
						<cewolf:param name="r_base_x" value="<%= request.getParameter("r_base_x") %>"/>
    </cewolf:chartpostprocessor>

</cewolf:chart>
<cewolf:imgurl 
	chartid="serproChart"    
	renderer="/cewolf"
    width="600" 
    height="320"
    mime="<%= params.getMimeType() %>"
    var="imgURL"/>
