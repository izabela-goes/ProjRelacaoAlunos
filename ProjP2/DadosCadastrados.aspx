<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="DadosCadastrados.aspx.cs" Inherits="ProjP2.DadosCadastrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>

   <form id="form1" runat="server">
        <article class="kanban-entry grab" id="item1" draggable="true">
            <div class="kanban-entry-inner">
                <div class="kanban-label">
                    <h2><a href="#">Dados Cadastrados</a> <span></span></h2>
                    <p></p>
                </div>
            </div>
             <div class="kanban-entry-inner">
                <div class="kanban-label">
                    <h2>&nbsp;<asp:GridView ID="dgvDadosCadastrados" runat="server" CellPadding="4" CssClass="table" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="dgvDadosCadastrados_RowCommand" Height="16px" OnSelectedIndexChanged="GVCamisetas_SelectedIndexChanged" Width="1038px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" />
                <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                <asp:BoundField DataField="preco" HeaderText="Preço" />
                <asp:BoundField DataField="cor" HeaderText="Cor" />
                <asp:BoundField DataField="tamanho" HeaderText="Tamanho" />
                <asp:TemplateField HeaderText="Ações">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="btnAlterarMidia" CommandName="ALTERAR" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn btn-info" Text="Alterar" />
                        <asp:LinkButton runat="server" ID="btnExcluirMidia" CommandName="EXCLUIR" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn btn-primary" Text="Excluir" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
                    </h2>
                    <p></p>
                </div>
            </div>
        </article>
        
        <asp:Button class="btn btn-primary" ID="btnImport" runat="server" Text="Importar Planilha" OnClick="btnImport_Click" />
    </form>
</asp:Content>
