<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OrderList.aspx.cs" Inherits="Magnum.OrderList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page_wrapper">
        <div class="pageTitle">
            Order list
        </div>
        <hr />
        <div>
            <table>
                <tr>
                    <td>
                        Order No
                    </td>
                    <td>
                        <asp:TextBox ID="txtSearchOrderNo" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="gvOrderList" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                <table style="color: #333333; width: 100%; border-collapse: collapse;">
                    <tr style="color: White; background-color: #5D7B9D; font-weight: bold;">
                        <th scope="col">No.</th>
                        <th scope="col">Order No.</th>
                        <th scope="col">Customer Name</th>
                        <th scope="col">Order Date</th>
                    </tr>
                    <tr>
                        <td colspan="5">No Order Found
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
                <asp:TemplateField HeaderText="Order No.">
                    <ItemTemplate>
                        <asp:HyperLink ID="linkOrderNo" runat="server" Text='<%# Eval("OrderNo") %>' NavigateUrl='<%# "Order.aspx?id=" + Eval("OrderNo") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer Name">
                    <ItemTemplate>
                        <asp:Label ID="lblCustName" runat="server" Text='<%# Eval("CustName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Order Date">
                    <ItemTemplate>
                        <asp:Label ID="lblOrderDate" runat="server" Text='<%# Eval("OrderDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ordered By">
                    <ItemTemplate>
                        <asp:Label ID="lblOrderedBy" runat="server" Text='<%# Eval("OrderedBy") %>'></asp:Label>
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
    </div>
</asp:Content>
