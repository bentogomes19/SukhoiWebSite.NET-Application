using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datapost.DB;

namespace Projeto3.Admin
{
    public partial class CadastroCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["key"] != null)
                {
                    ClienteID.Text = Request.QueryString["key"].ToString();
                    LerClientes();
                }
            }
        }

        protected void LerClientes()
        {
            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/BancoDeDados.accdb") + ";Persist Security Info=False;";

           string comandoSQL = "SELECT * FROM Clientes WHERE clienteID=" + ClienteID.Text;

           DataTable tb = new DataTable();

           tb = (DataTable)db.Query(comandoSQL);

            if (tb.Rows.Count > 0)
            {
                Nome.Text = tb.Rows[0]["Nome"].ToString();
                Email.Text = tb.Rows[0]["Email"].ToString();
                telefone.Text = tb.Rows[0]["Telefone"].ToString();
                CPF.Text = tb.Rows[0]["CPF"].ToString();
                CEP.Text = tb.Rows[0]["CEP"].ToString();
                Numero.Text = tb.Rows[0]["Numero"].ToString();
                Complemento.Text = tb.Rows[0]["Complemento"].ToString();
                Pessoa.SelectedValue = tb.Rows[0]["FisicaJuridica"].ToString();
            }
        }

        protected void Confirmar_Click(object sender, EventArgs e)
        {
            // CAMPOS OBRIGATÓRIOS
            if (Nome.Text.Trim() == "") // NOME DO USUÁRIO
            {
                alerta.Text = "Digite seu nome";
            }
            else if (Email.Text.Trim() == "") // EMAIL DO USUÁRIO
            {
                alerta.Text = "Digite o e-mail";
            }
            else if (CPF.Text == "") // CPF DO USUÁRIO 
            {
                alerta.Text = "Digite o CPF";
            }
            else if (telefone.Text == "")
            {
                alerta.Text = "Informe o numero de telefone";
            }
            else if (CEP.Text.Trim() == "") // CEP - CIDADE ESTADO PAÍS
            {
                alerta.Text = "Informe o CEP";
            }
            else if(Numero.Text == "") // NÚMERO DA RESIDÊNCIA
            {
                alerta.Text = "Informe o numero da residência.";
            }
            else
            {
                DAO db = new DAO();
                db.DataProviderName = DAO.ProviderName.OleDb;
                db.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/BancoDeDados.accdb") + ";Persist Security Info=False;";

                String sql;

                if (ClienteID.Text == "")
                {
                    sql = "INSERT INTO Clientes(Nome,Email,Telefone,CPF,CEP,Numero,Complemento,FisicaJuridica) VALUES('" + Nome.Text + "','" + Email.Text + "','" + telefone.Text + "','" + CPF.Text + "','" + CEP.Text + "','" + Numero.Text + "','" + Complemento.Text + "'," + Pessoa.SelectedValue + ");";
                }
                else
                {
                    sql = "UPDATE Clientes SET Nome='" + Nome.Text + "',Email='" + Email.Text + "',Telefone='" + telefone.Text + "',CPF='" + CPF.Text + "',CEP='" + CEP.Text +  "',Numero='" + Numero.Text + "',Complemento='" + Complemento.Text + "',FisicaJuridica=" + Pessoa.SelectedValue + " WHERE clienteID=" + ClienteID.Text;
                }

                db.Query(sql);

                Response.Redirect("ExibirClientes.aspx");
            }
        }


    }
}