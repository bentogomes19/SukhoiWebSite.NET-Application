<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!-- REFERENCIA: http://flexslider.woothemes.com/index.html -->
  <div class="flexslider">
    <ul class="slides">
      <li>
        <img src="Images/SukhoiSU57.png" />
      </li>
      <li>
        <img src="Images/sukhoiSU57II.jpg" />
      </li>
      <li>
        <img src="Images/sukhoiSU35.jpg" />
      </li>
      <li>
        <img src="Images/su27.jpg" />
      </li>
    </ul>
  </div>
  <script>
    // Can also be used with $(document).ready()
    $(window).load(function () {
      $('.flexslider').flexslider({
          animation: "slide",
      });
    });
  </script>

  <div class="row min-height-300px margin-top-120 margin-bottom-120">
    <!-- COLUNA 1 -->
    <div class="col-6">
      <div class="box border margin-right-20">
        <img height="280" width="100%" src="Images/su271.jpg" />
        <h2 style="text-align:center">Military Aircrafts</h2>
          <hr />
        <h4>
          We built this aircrafts with the best Russian Engineers and the impressivel defense and attack system. The Russian Federation has the best military aircrafts, we also provides our aircrafts for other countries like, India Air Force, Venezuelan Air Force, Iranian Air Force and others.
        </h4>
      </div>
    </div>

    <!-- COLUNA 2 -->
    <div class="col-6">
      <div class="box border margin-right-20">
          <img height="280" width="100%" src="Images/superjet.jpg" />
          <h2 style="text-align:center">Civil Aircrafts</h2>
          <hr />
          <h4>
              The superjet-100 was developed in 2000, it's our best Sukhoi Civil Aircraft. With 100% Russian electronics system. We provide service for Aeroflot, Yamal Airlines, Azimuth and Gazpromavia. 
          </h4>
      </div>
    </div>
  </div>
</asp:Content>
