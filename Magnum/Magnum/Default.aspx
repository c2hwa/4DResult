<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Magnum._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page_wrapper">
        <div class="row text-center clearFixBoxContainer">
            <div class="col-sm-6 clearFixBox active">
                Live Result
            </div>
            <div class="col-sm-6 clearFixBox inactive">
                Winning History
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class='input-group date' id='datetimepicker3' style="width: 214px; margin-bottom: 10px;">
                    <asp:TextBox ID="txtFilterDate" runat="server" CssClass="textbox"></asp:TextBox>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="didiwin">
                    Did I Win
                </div>
            </div>
        </div>

        <div style="background-color: #000000; color: #ffffff; padding: 10px; text-align: center; font-size: 18px; margin: 10px 0;">
            DRAW NO:  231/19 28/08/2019
        </div>

        <div style="background-color: #ffc423; padding: 20px 10px 10px 10px; width: 100%; text-align: center;">
            <div style="text-align: center; margin-bottom: 20px; font-size: 24px;">4D CLASSIC 万能万字</div>

            <div class="livedraw-content">
                <span class="livedraw-label">1ST PRIZE</span>
                <span class="livedraw-number-lg">3481</span>
            </div>
            <div class="livedraw-content">
                <span class="livedraw-label">2ND PRIZE</span>
                <span class="livedraw-number-lg">1654</span>
            </div>
            <div class="livedraw-content">
                <span class="livedraw-label">3RD PRIZE</span>
                <span class="livedraw-number-lg">3945</span>
            </div>

            <div class="livedraw-content">
                <div class="row">
                    <div class="livedraw-col col-xs-6">
                        <span class="livedraw-label block">Special
                        </span>
                        <div class="livedraw-number-list list-2" id="specialResultList">
                            <span class="livedraw-number special-number" id="s01">2256</span>
                            <span class="livedraw-number special-number" id="s08">5574</span>
                            <span class="livedraw-number special-number" id="s02">8541</span>
                            <span class="livedraw-number special-number" id="s09">9324</span>
                            <span class="livedraw-number special-number" id="s03">6541</span>
                            <span class="livedraw-number special-number" id="s10">9512</span>
                            <span class="livedraw-number special-number" id="s04">7621</span>
                            <span class="livedraw-number special-number" id="s11">9541</span>
                            <span class="livedraw-number special-number" id="s05">6523</span>
                            <span class="livedraw-number special-number" id="s12">8625</span>
                        </div>
                    </div>
                    <div class="livedraw-col col-xs-6" style="border-left: 1px solid #ffc423;">
                        <span class="livedraw-label block">Consolation
                        </span>
                        <div class="livedraw-number-list list-2" id="consoResultList">
                            <span class="livedraw-number" id="c01">6521</span>
                            <span class="livedraw-number" id="c06">6373</span>
                            <span class="livedraw-number" id="c02">5678</span>
                            <span class="livedraw-number" id="c07">6864</span>
                            <span class="livedraw-number" id="c03">7862</span>
                            <span class="livedraw-number" id="c08">2863</span>
                            <span class="livedraw-number" id="c04">1237</span>
                            <span class="livedraw-number" id="c09">7892</span>
                            <span class="livedraw-number" id="c05">5387</span>
                            <span class="livedraw-number" id="c10">2348</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>
</asp:Content>
