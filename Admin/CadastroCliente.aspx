<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroCliente.aspx.cs" Inherits="Projeto3.Admin.CadastroCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row margin-top-120">
        <div class="col-6">
            <div class="box border margin-right-20 ">
                <h2>Customer Registration</h2>
                <br />
                <asp:Label ID="alerta" runat="server"></asp:Label>
                <br />

                <asp:Label ID="ClienteID" Font-Size="25px" runat="server"></asp:Label>

                <br />

                <label>Name</label>
                <asp:TextBox ID="Nome" MaxLength="60" runat="server"></asp:TextBox>

                <label>Email</label>
                <asp:TextBox ID="Email" MaxLength="255" runat="server"></asp:TextBox>

                <label>Phone Number</label>
                <asp:TextBox ID="telefone" MaxLength="20" runat="server"></asp:TextBox>

                <label>CPF</label>
                <asp:TextBox ID="CPF" MaxLength="20" runat="server"></asp:TextBox>

                <label>CEP</label>
                <asp:TextBox ID="CEP" MaxLength="13" runat="server"></asp:TextBox>

                <label>House Number</label>
                <asp:TextBox ID="Numero" MaxLength="4" runat="server"></asp:TextBox>

                <label>Complement</label>
                <asp:TextBox ID="Complemento" MaxLength="70" runat="server"></asp:TextBox>

                <label>Person</label>
                <asp:DropDownList ID="Pessoa" runat="server">
                    <asp:ListItem Text="Fisical" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Legal Persons" Value="1"></asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="Confirmar" OnClick="Confirmar_Click" runat="server" Text="Confirm" />
            </div>
        </div>
    </div>
</asp:Content>
