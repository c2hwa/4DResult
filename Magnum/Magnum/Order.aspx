<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Magnum.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="page_wrapper">
                <div class="pageTitle">
                    Order
                </div>
                <hr />
                <div>
                    <table width="100%">
                        <tr>
                            <td width="200px">
                                <b>Customer Name</b>
                            </td>
                            <td width="500px">Michael Jordan
                            </td>
                            <td width="100px"></td>
                            <td width="200px">
                                <b>Order Date</b>
                            </td>
                            <td width="800px">01/Sep/2019
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Mobile No.</b>
                            </td>
                            <td>012-1234567
                            </td>
                            <td></td>
                            <td>
                                <b>Order By</b>
                            </td>
                            <td>Ah Cow
                            </td>
                        </tr>
                    </table>
                </div>
                <hr />
                <div>
                    Order Item(s)
                </div>
                <div>
                    <asp:GridView ID="gvOrder" runat="server" AutoGenerateColumns="False" GridLines="None" Width="100%" CellPadding="4" ForeColor="#333333">
                        <EditRowStyle BackColor="#999999" />
                        <EmptyDataTemplate>
                            <table style="color: #333333; width: 100%; border-collapse: collapse;">
                                <tr style="color: White; background-color: #5D7B9D; font-weight: bold;">
                                    <th scope="col">No.</th>
                                    <th scope="col">Number #</th>
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
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
