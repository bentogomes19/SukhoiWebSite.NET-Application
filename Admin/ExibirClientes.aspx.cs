using Datapost.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto3.Admin
{
    public partial class ExibirClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LerCliente();
        }
            
        protected void LerCliente()
        {
            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb; //access
            db.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/BancoDeDados.accdb") + ";Persist Security Info=False;";

            string comandoSQL = "SELECT clienteID,Nome,Email,Telefone,CPF,CEP,Numero,Complemento,FisicaJuridica FROM Clientes ORDER BY Nome ASC ";

            GridViewClientes.DataSource = db.Query(comandoSQL);
            GridViewClientes.DataBind();

        }
        protected void Inserir_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroCliente.aspx");
        }

        protected void Fechar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void GridViewClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            string chave = GridViewClientes.SelectedRow.Cells[1].Text;

            Response.Redirect("CadastroCliente.aspx?key=" + chave);
        }
    }
}