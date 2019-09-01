<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ResultList.aspx.cs" Inherits="Magnum.ResultList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="page_wrapper">
                <div class="pageTitle">
                    Result List
                </div>
                <hr />
            </div>


            <div>
                <table>
                    <tr>
                        <td>Result No.
                        </td>
                        <td>
                            <asp:TextBox ID="txtSearchResultNo" runat="server" CssClass="textbox w50"></asp:TextBox>
                        </td>
                        <td>/
                        </td>
                        <td>
                            <asp:TextBox ID="txtSearchYear" runat="server" CssClass="textbox w50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" />
                        </td>
                    </tr>
                </table>
            </div>
            <hr />
            <asp:GridView ID="gvResultList" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" ShowHeader="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <EditRowStyle BackColor="#999999" />
                <EmptyDataTemplate>
                    <div style="background-color: #000000; color: #ffffff; padding: 10px; text-align: center; font-size: 18px; margin-bottom: 10px;">
                        No Result Found
                    </div>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="container">

                                <div style="background-color: #000000; color: #ffffff; padding: 10px; text-align: center; font-size: 18px; margin-bottom: 10px;" data-toggle="collapse" data-target='<%# "#Demo_" + Eval("ID") %>'>
                                    DRAW NO:  231/19 28/08/2019
                                </div>

                                <div id='<%# "Demo_" + Eval("ID") %>' class="collapse" style="background-color: #ffc423; padding: 20px 10px 10px 10px; width: 100%; text-align: center;">
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
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
