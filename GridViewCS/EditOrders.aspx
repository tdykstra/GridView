<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head id="Head1" runat="server">
    <title>GridView Edit Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>GridView Edit Example</h3>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="AdventureWorksDataContext" 
        TableName="SalesOrderDetails" EntityTypeName="" EnableUpdate="true">
    </asp:LinqDataSource>
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" 
        DataKeyNames="SalesOrderID,SalesOrderDetailID"
        DataSourceID="LinqDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" 
                ShowEditButton="True" />
            <asp:BoundField DataField="SalesOrderID" 
                HeaderText="SalesOrderID" ReadOnly="True"
                SortExpression="SalesOrderID" />
            <asp:BoundField DataField="SalesOrderDetailID" 
                HeaderText="SalesOrderDetailID" InsertVisible="False"
                ReadOnly="True" SortExpression="SalesOrderDetailID" />
            <asp:BoundField DataField="OrderQty" 
                HeaderText="OrderQty" SortExpression="OrderQty" />
            <asp:BoundField DataField="ProductID" 
                HeaderText="ProductID" SortExpression="ProductID" />
            <asp:BoundField DataField="UnitPrice" 
                HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="ModifiedDate" 
                HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>