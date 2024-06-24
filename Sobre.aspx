<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="Projeto3.Sobre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .logo, #about-us, #h301, #h102, #h401, #su02, #su03, #su04 {
            opacity: 0;
            transition: opacity 1.5s ease-in-out;
        }

            .logo.visible, #about-us.visible, #h301.visible, #su02.visible, #h401.visible, #h102.visible, #su03.visible, #su04.visible {
                opacity: 1;
            }

        .centered-image {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
        }
    </style>

    <div class="row min-height-300px margin-top-120 margin-bottom-120">
        <div class="logo" id="logo">
            <img src="Images/logo3.png" />
        </div>
        <div class="col-12">
            <div class="box border margin-right-20">
                <h1 id="about-us" style="text-align: center">About Us</h1>
                <hr />
                <h3 id="h301">The JSC Sukhoi Company ПАО Компания Сухой, is a Russian aircraft manufacturer (formerly Soviet), headquartered in Begovoy District, Northern Administrative Okrug, Moscow, that designs both civilian and military aircraft. It was founded in the Soviet Union by Pavel Sukhoi in 1939 as the Sukhoi Design Bureau (OKB-51, design office prefix Su). During February 2006, the Russian government merged Sukhoi with Mikoyan, Ilyushin, Irkut, Tupolev, and Yakovlev as a new company named United Aircraft Corporation.
                </h3>
                <div style="min-height: 100px">
                    <img id="su02" class="centered-image" src="Images/su02.jpg" />
                </div>
                <h4 id="h401" style="text-align: center">Sukhoi SU-33 OTAN Designator: Flanker-D</h4>
                <br />
                <br />

                <h1 id="h102" style="text-align: center">Our Aircrafs</h1>
                <br />

                <div style="min-height: 100px">
                    <img id="su03" class="centered-image" src="Images/su03.jpeg" />
                </div>
                <h4 style="text-align: center">Sukhoi Superjet-100</h4>
                <div style="min-height: 100px">
                    <img id="su04" class="centered-image" src="Images/SukhoiSU57.png" />
                </div>
                <h4 style="text-align: center">Sukhoi SU-57</h4>

                <a target="_blank" href="https://en.wikipedia.org/wiki/List_of_Sukhoi_aircraft#Military_Aircraft">List of All Aircrafts</a>
            </div>

        </div>
    </div>



    <script>
        document.addEventListener("DOMContentLoaded", function () {

            function addVisibleClass(element, delay) {
                setTimeout(function () {
                    element.classList.add("visible");
                }, delay);
            }

            function isElementInViewport(el) {
                var rect = el.getBoundingClientRect();
                return (
                    rect.top >= 0 &&
                    rect.left >= 0 &&
                    rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
                    rect.right <= (window.innerWidth || document.documentElement.clientWidth)
                );
            }

            // Função para adicionar a classe 'visible' aos elementos visíveis
            function checkVisibility() {
                var elements = document.querySelectorAll('#h102, #su03, #su04');
                elements.forEach(function (element) {
                    if (isElementInViewport(element)) {
                        element.classList.add('visible');
                    }
                });
            }

            // Adiciona o evento de rolagem
            window.addEventListener('scroll', checkVisibility);

            // Verifica a visibilidade ao carregar a página
            document.addEventListener('DOMContentLoaded', checkVisibility);

            document.getElementById("logo").classList.add("visible");
            document.getElementById("about-us").classList.add("visible");

            addVisibleClass(document.getElementById("h301"), 1000);
            addVisibleClass(document.getElementById("su02"), 1000);
            addVisibleClass(document.getElementById("h401"), 800);
        });


    </script>



</asp:Content>
