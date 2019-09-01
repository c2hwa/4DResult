<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="Magnum.PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="page_wrapper">
                <div class="pageTitle">
                    Place Order
                </div>
                <hr />
                <div class="myPanel" style="width: 100%; margin-bottom: 10px;">
                    <div class="myPanelTitle">
                        <b>Place Order</b>
                    </div>
                    <div class="myPanelBody">
                        <table>
                            <tr>
                                <td width="120px">Customer Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCustName" runat="server" CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Mobile No.
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCustMobileNo" runat="server" CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <hr />
                    <div class="myPanelBody">
                        <table border="0" width="100%">
                            <tr>
                                <td width="80px">Number #
                                </td>
                                <td width="200px">
                                    <asp:TextBox ID="txtNumber" runat="server" CssClass="textbox"></asp:TextBox>
                                </td>
                                <td width="80px">Repeat
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRepeat" runat="server" TextMode="Number" CssClass="textbox w80" Text="1"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <table border="1" width="100%">
                                        <tr>
                                            <td></td>
                                            <td>Normal
                                            </td>
                                            <td>Box
                                            </td>
                                            <td>IBox
                                            </td>
                                            <td>Bao Head
                                            </td>
                                            <td>Bao Tail
                                            </td>
                                            <td>Super A1
                                            </td>
                                            <td>Super A2
                                            </td>
                                            <td>Super A3
                                            </td>
                                            <td>Super A4
                                            </td>
                                            <td>Super A5
                                            </td>
                                            <td>Super A6
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>$
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtNormal" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtBox" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtIBox" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtBaoHead" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtBaoTail" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSuperA1" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSuperA2" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSuperA3" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSuperA4" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSuperA5" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSuperA6" runat="server" TextMode="Number" Text="0" CssClass="textbox w80"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <hr />
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                    </div>
                </div>
                <div style="margin-bottom: 10px;">
                    <asp:GridView ID="gvOrder" runat="server" AutoGenerateColumns="False" GridLines="None" Width="100%" CellPadding="4" ForeColor="#333333">
                        <EditRowStyle BackColor="#999999" />
                        <EmptyDataTemplate>
                            <table style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tr style="color: White; background-color: #5D7B9D; font-weight: bold;">
                                    <th scope="col">No.</th>
                                    <th scope="col">Number #</th>
                                    <th scope="col">Normal</th>
                                    <th scope="col">Box</th>
                                    <th scope="col">IBox</th>
                                    <th scope="col">Bao Head</th>
                                    <th scope="col">Bao Tail</th>
                                    <th scope="col">Super A1</th>
                                    <th scope="col">Super A2</th>
                                    <th scope="col">Super A3</th>
                                    <th scope="col">Super A4</th>
                                    <th scope="col">Super A5</th>
                                    <th scope="col">Super A6</th>
                                    <th scope="col">Repeat #</th>
                                </tr>
                                <tr>
                                    <td colspan="11">No Order Found
                                    </td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="No.">
                                <ItemTemplate>
                                    <asp:Label ID="lblNo" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Number #">
                                <ItemTemplate>
                                    <asp:Label ID="lblNumber" runat="server" Text='<%# Eval("Number") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Normal">
                                <ItemTemplate>
                                    <asp:Label ID="lblNormal" runat="server" Text='<%# Eval("Normal") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Box">
                                <ItemTemplate>
                                    <asp:Label ID="lblBox" runat="server" Text='<%# Eval("Box") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="IBox">
                                <ItemTemplate>
                                    <asp:Label ID="lblIBox" runat="server" Text='<%# Eval("IBox") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bao Head">
                                <ItemTemplate>
                                    <asp:Label ID="lblBaoHead" runat="server" Text='<%# Eval("BaoHead") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bao Tail">
                                <ItemTemplate>
                                    <asp:Label ID="lblBaoTail" runat="server" Text='<%# Eval("BaoTail") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Super A1">
                                <ItemTemplate>
                                    <asp:Label ID="lblSuperA1" runat="server" Text='<%# Eval("SuperA1") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Super A2">
                                <ItemTemplate>
                                    <asp:Label ID="lblSuperA2" runat="server" Text='<%# Eval("SuperA2") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Super A3">
                                <ItemTemplate>
                                    <asp:Label ID="lblSuperA3" runat="server" Text='<%# Eval("SuperA3") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Super A4">
                                <ItemTemplate>
                                    <asp:Label ID="lblSuperA4" runat="server" Text='<%# Eval("SuperA4") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Super A5">
                                <ItemTemplate>
                                    <asp:Label ID="lblSuperA5" runat="server" Text='<%# Eval("SuperA5") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Super A6">
                                <ItemTemplate>
                                    <asp:Label ID="lblSuperA6" runat="server" Text='<%# Eval("SuperA6") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Repeat #">
                                <ItemTemplate>
                                    <asp:Label ID="lblRepeat" runat="server" Text='<%# Eval("Repeat") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="" ItemStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="edit" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CssClass="btn btn-primary" />
                                    <asp:Button ID="btnRemove" runat="server" Text="Remove" CommandName="remove" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CssClass="btn btn-primary" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                <div>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnShowReceipt" runat="server" Text="Show Receipt" CssClass="btn btn-primary" OnClick="btnShowReceipt_Click" />
                </div>

                <asp:Button ID="btnDummy" runat="server" Text="Button" Style="visibility: hidden;" />
                <ajaxToolkit:ModalPopupExtender ID="ModalPopupShowReceipt" runat="server"
                    TargetControlID="btnDummy"
                    PopupControlID="pReceipt"
                    BackgroundCssClass="modalBackground"
                    CancelControlID="btnReceiptClose">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Panel ID="pReceipt" runat="server" CssClass="myPanel">
                    <div class="receipt_border">
                        <div class="receipt_close">
                            <img id="btnReceiptClose" src="img/icon_Close.png" />
                        </div>
                        <div class="receipt_company_name">
                            Company Name
                        </div>
                        <div class="receipt_company_add">
                            163A, Jalan Sempang Empat, 11300 Lapa Muda, Penang.
                        </div>
                        <div class="row receipt_no_date">
                            <div class="col-sm-6">
                                Order No.: 5765754
                            </div>
                            <div class="col-sm-6 receipt_date">
                                Date: 30/Aug/2019
                            </div>
                        </div>
                        <div class="row receipt_no_date">
                            <div class="col-sm-6">
                                Customer:
                                <asp:Label ID="lblReceiptCustName" runat="server" Text="-"></asp:Label>
                            </div>
                            <div class="col-sm-6 receipt_date">
                                Mobile No.:
                                <asp:Label ID="lblReceiptMobile" runat="server" Text="-"></asp:Label>
                            </div>
                        </div>
                        <hr />
                        <div class="receipt_body">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </div>
                        <div class="receipt_total">
                            Total
                            <asp:Label ID="lblReceiptTotal" runat="server" Text="-"></asp:Label>
                        </div>
                        <hr />
                        <div class="receipt_footer">
                            Footer
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
