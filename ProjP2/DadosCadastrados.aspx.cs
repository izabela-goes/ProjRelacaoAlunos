using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjP2
{
    public partial class DadosCadastrados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GVCamisetas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dgvDadosCadastrados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idItem = Convert.ToInt32(e.CommandArgument.ToString());
            ProjP2Entities contextCurso = new ProjP2Entities();
            Curso cursos = new Curso();

            cursos = contextCurso.Curso.First(c => c.Id_aluno == idItem);

            if (e.CommandName == "ALTERAR")
            {
                Response.Redirect("Camisetas.aspx?idItem=" + idItem);
            }
            else if (e.CommandName == "EXCLUIR")
            {
                contextCurso.Curso.Remove(cursos);
                contextCurso.SaveChanges();
                string msg = "Registro excluído com sucesso !";
                string titulo = "Informação";
                CarregarLista();
                DisplayAlert(titulo, msg, this);
            }
        }
    }
}