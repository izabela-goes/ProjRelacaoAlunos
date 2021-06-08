<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ImportPlanilha.aspx.cs" Inherits="ProjP2.ImportPlanilha" %>
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
                    <h2><a href="#">Import de Planilhas</a> <span></span></h2>
                    <p></p>
                </div>
            </div>
        </article>
        
        <asp:Button class="btn btn-primary" ID="btnImport" runat="server" Text="Importar Planilha" OnClick="btnImport_Click" />
    </form>

</asp:Content>
