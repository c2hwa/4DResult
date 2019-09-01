<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Magnum.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="page_wrapper">
                <div class="pageTitle">
                    Profile
                </div>
                <hr />
                <div>
                    <table>
                        <tr>
                            <td>
                                <b>Name</b>
                            </td>
                            <td>
                                <asp:Label ID="lblName" runat="server" Text="Mr Owner"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>IC No.</b>
                            </td>
                            <td>
                                <asp:Label ID="lblICNo" runat="server" Text="890321-07-1234"></asp:Label>
                            </td>
                        </tr
                        <tr>
                            <td>
                                <b>Mobile No.</b>
                            </td>
                            <td>
                                <asp:Label ID="lblMobileNo" runat="server" Text="012-1234567"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Point</b>
                            </td>
                            <td>
                                <asp:Label ID="lblPoint" runat="server" Text="Unlimited"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <hr />
                <div>
                    <div style="margin-bottom: 10px;">
                        <asp:Button ID="btnPopupAddAgent" runat="server" Text="Add Agent" CssClass="btn btn-primary" />
                    </div>
                    <div>


                        <asp:GridView ID="gvAgent" runat="server" AutoGenerateColumns="False" GridLines="None" Width="100%" CellPadding="4" ForeColor="#333333" OnRowCommand="gvAgent_RowCommand">
                            <EditRowStyle BackColor="#999999" />
                            <EmptyDataTemplate>
                                <table style="color: #333333; width: 100%; border-collapse: collapse;">
                                    <tr style="color: White; background-color: #5D7B9D; font-weight: bold;">
                                        <th scope="col">No.</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">IC No.</th>
                                        <th scope="col">Mobile No.</th>
                                        <th scope="col">Point</th>
                                        <th scope="col"></th>
                                    </tr>
                                    <tr>
                                        <td colspan="5">No Agent Found
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
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="IC No.">
                                    <ItemTemplate>
                                        <asp:Label ID="lblICNo" runat="server" Text='<%# Eval("ICNo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Mobile No.">
                                    <ItemTemplate>
                                        <asp:Label ID="lblMobileNo" runat="server" Text='<%# Eval("MobileNo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Point">
                                    <ItemTemplate>
                                        <asp:Label ID="lblPoint" runat="server" Text='<%# Eval("Point") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="" ItemStyle-Width="230px">
                                    <ItemTemplate>
                                        <asp:Button ID="btnTopUp" runat="server" Text="Top Up" CommandName="topup" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CssClass="btn btn-primary" />
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
                <ajaxToolkit:ModalPopupExtender ID="ModalPopupAddHeadcount" runat="server"
                    TargetControlID="btnPopupAddAgent"
                    PopupControlID="pAddAgent"
                    BackgroundCssClass="modalBackground"
                    CancelControlID="btnCancel">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Panel ID="pAddAgent" runat="server" CssClass="myPanel">
                    <div class="myPanelTitle">
                        <b>Add New Agent</b>
                    </div>
                    <div class="myPanelBody">
                        <div>
                            <table>
                                <tr>
                                    <td>Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAddAgentName" runat="server" CssClass="textbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>IC No.
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtICNo" runat="server" CssClass="textbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Mobile No.
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMobileNo" runat="server" CssClass="textbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Point
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPoint" runat="server" CssClass="textbox"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <hr />
                        <asp:Button ID="btnAddAgent" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAddAgent_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                    </div>
                </asp:Panel>

                <asp:Button ID="btnDummy" runat="server" style="visibility:hidden;" />
                <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtenderTopUp" runat="server"
                    TargetControlID="btnDummy"
                    PopupControlID="pTopUp"
                    BackgroundCssClass="modalBackground"
                    CancelControlID="btnTopUpCancel">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Panel ID="pTopUp" runat="server" CssClass="myPanel">
                    <div class="myPanelTitle">
                        <b>Top Up Point</b>
                    </div>
                    <div class="myPanelBody">
                        <div>
                            <table>
                                <tr>
                                    <td>
                                        Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTopName" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        IC No.
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTopUpICNo" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Top Up Point
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTopUpPoint" runat="server" CssClass="textbox"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <hr />
                        <asp:Button ID="btnTopUpOk" runat="server" Text="OK" CssClass="btn btn-primary" />
                        <asp:Button ID="btnTopUpCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                    </div>
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
