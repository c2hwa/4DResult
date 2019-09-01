<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DrawResult.aspx.cs" Inherits="Magnum.DrawResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="page_wrapper">
                <div class="pageTitle">
                    Draw Result
                </div>
                <hr />

                <div>
                    <table>
                        <tr>
                            <td>
                                <b>Max Lose Threshold</b>
                            </td>
                            <td>
                                <asp:TextBox ID="txtLoseThreshold" runat="server" CssClass="textbox"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnDrawResult" runat="server" CssClass="btn btn-primary" Text="Draw Result" OnClick="btnDrawResult_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <hr />
                <div>
                    <div style="background-color: #ffc423; padding: 20px 10px 10px 10px; width: 100%; text-align: center;">
                        <div style="text-align: center; margin-bottom: 20px; font-size: 24px;">4D CLASSIC 万能万字</div>

                        <div class="livedraw-content">
                            <span class="livedraw-label">1ST PRIZE</span>
                            <span class="livedraw-number-lg">
                                <asp:Label ID="lbl1stPrize" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, '1ST PRIZE')"></asp:Label></span>
                        </div>
                        <div class="livedraw-content">
                            <span class="livedraw-label">2ND PRIZE</span>
                            <span class="livedraw-number-lg">
                                <asp:Label ID="lbl2ndPrize" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, '2ND PRIZE')"></asp:Label></span>
                        </div>
                        <div class="livedraw-content">
                            <span class="livedraw-label">3RD PRIZE</span>
                            <span class="livedraw-number-lg">
                                <asp:Label ID="lbl3rdPrize" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, '3RD PRIZE')"></asp:Label></span>
                        </div>

                        <div class="livedraw-content">
                            <div class="row">
                                <div class="livedraw-col col-xs-6">
                                    <span class="livedraw-label block">Special
                                    </span>
                                    <div class="livedraw-number-list list-2" id="specialResultList">
                                        <span class="livedraw-number special-number" id="s01">
                                            <asp:Label ID="lblSpecial1" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s08">
                                            <asp:Label ID="lblSpecial2" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s02">
                                            <asp:Label ID="lblSpecial3" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s09">
                                            <asp:Label ID="lblSpecial4" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s03">
                                            <asp:Label ID="lblSpecial5" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s10">
                                            <asp:Label ID="lblSpecial6" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s04">
                                            <asp:Label ID="lblSpecial7" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s11">
                                            <asp:Label ID="lblSpecial8" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s05">
                                            <asp:Label ID="lblSpecial9" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                        <span class="livedraw-number special-number" id="s12">
                                            <asp:Label ID="lblSpecial10" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'SPECIAL')"></asp:Label></span>
                                    </div>
                                </div>
                                <div class="livedraw-col col-xs-6" style="border-left: 1px solid #ffc423;">
                                    <span class="livedraw-label block">Consolation
                                    </span>
                                    <div class="livedraw-number-list list-2" id="consoResultList">
                                        <span class="livedraw-number" id="c01">
                                            <asp:Label ID="lblConsolation1" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c06">
                                            <asp:Label ID="lblConsolation2" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c02">
                                            <asp:Label ID="lblConsolation3" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c07">
                                            <asp:Label ID="lblConsolation4" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c03">
                                            <asp:Label ID="lblConsolation5" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c08">
                                            <asp:Label ID="lblConsolation6" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c04">
                                            <asp:Label ID="lblConsolation7" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c09">
                                            <asp:Label ID="lblConsolation8" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c05">
                                            <asp:Label ID="lblConsolation9" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                        <span class="livedraw-number" id="c10">
                                            <asp:Label ID="lblConsolation10" runat="server" Text="-" onclick="ShowEditPanel(this.id, this.innerHTML, 'CONSOLATION')"></asp:Label></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <hr />

                <div style="float: left; width: 30%;">
                    <table>
                        <tr>
                            <td>
                                <b>Total Income</b>
                            </td>
                            <td>
                                <asp:Label ID="lblTotalIncome" runat="server" Text="-"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Max Lose Threshold</b>
                            </td>
                            <td>
                                <asp:Label ID="lblMaxLoseThreshold" runat="server" Text="-"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Total Payout</b>
                            </td>
                            <td>
                                <asp:Label ID="lblTotalPayout" runat="server" Text="-"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Gross Profit</b>
                            </td>
                            <td>
                                <asp:Label ID="lblGP" runat="server" Text="-"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

                <div style="float: left; width: 70%;">
                    <asp:GridView ID="gvSummary" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                            <asp:BoundField DataField="Number" HeaderText="Number" />
                            <asp:BoundField DataField="Code" HeaderText="Code" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                            <asp:BoundField DataField="Rate" HeaderText="Rate" />
                            <asp:BoundField DataField="PayoutAmt" HeaderText="Payout Amount" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </div>
            </div>

            <div style="clear: both;"></div>

            <hr />

            <div style="text-align: center;">
                <asp:Button ID="btnPublish" runat="server" CssClass="btn btn-primary" Text="Publish" OnClick="btnPublish_Click" />
            </div>

            <div id="dEdit" runat="server" class="myPanel centerPanel" style="display: none;">
                <div class="myPanelTitle">
                    <b>Edit Result</b>
                </div>
                <div class="myPanelBody">
                    <div class="editNumber">
                        <asp:Label ID="lblPrize" runat="server" Text="" CssClass="editPrizeLabel"></asp:Label>
                        <asp:Label ID="lblNumber" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="row text-center">
                        <div class="col-sm-12">
                            New Number
                            <asp:TextBox ID="txtEditNewNumber" runat="server" CssClass="textbox"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="text-center">
                        <asp:Button ID="btnChange" runat="server" Text="Change" OnClick="btnChange_Click" CssClass="btn btn-primary" />
                        <asp:Button ID="btnCloseEditNumber" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                        <asp:HiddenField ID="hfEditNumberID" runat="server" />
                        <asp:HiddenField ID="hfEditNumber" runat="server" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
