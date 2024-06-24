<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="Projeto3.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row min-height-300px margin-top-120 margin-bottom-120">
        <!-- CADASTRO -->
        <div class="col-6">
            <div class="box border margin-right-20">
                <h2>Contact Us</h2>
                <br />
                <asp:Label ID="Alerta" ForeColor="red" Font-Size="18px" runat="server"></asp:Label>
                <asp:Panel ID="Formulario" runat="server">
                    <br />
                    <label>Name</label>
                    <asp:TextBox ID="Nome" MaxLength="50" runat="server"></asp:TextBox>
                    <label>Email</label>
                    <asp:TextBox ID="Email" TextMode="Email" MaxLength="100" runat="server"></asp:TextBox>
                    <label>Phone Number</label>
                    <asp:TextBox ID="Telefone" MaxLength="30" runat="server"></asp:TextBox>
                    <label>Message</label>
                    <asp:TextBox ID="Mensagem" TextMode="MultiLine" MaxLength="255" Rows="6" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button OnClick="Enviar_Click" ID="Enviar" runat="server" Text="Send" />
                    <br />
                </asp:Panel>
            </div>
        </div>

        <!-- COLUNA 2-->
        <div class="col-6">
            <div class="box border">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2243.787966487184!2d37.54121168342577!3d55.77955433047419!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b5499aca06c7ff%3A0xa971432aeef6dd4f!2sSukhoi%20Civil%20Aircraft!5e0!3m2!1spt-BR!2sbr!4v1718820125885!5m2!1spt-BR!2sbr" width="100%" height="100%" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>

</asp:Content>
