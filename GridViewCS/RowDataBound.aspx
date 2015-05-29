
<%@ Page language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  void CustomersGridView_RowDataBound(Object sender, GridViewRowEventArgs e)
  {

    if(e.Row.RowType == DataControlRowType.DataRow)
    {
      // Display the company name in italics.
      e.Row.Cells[1].Text = "<i>" + e.Row.Cells[1].Text + "</i>";

    }

  }

</script>

<html  >
  <head id="Head1" runat="server">
    <title>GridView RowDataBound Example</title>
</head>
<body>
    <form id="form1" runat="server">

      <h3>GridView RowDataBound Example</h3>

      <asp:gridview id="CustomersGridView" 
        datasourceid="CustomersSqlDataSource" 
        autogeneratecolumns="False"
        allowpaging="True"
        onrowdatabound="CustomersGridView_RowDataBound" 
        runat="server" DataKeyNames="CustomerID">
          <Columns>
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                  InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
              <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                  SortExpression="CompanyName" />
              <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                  SortExpression="FirstName" />
              <asp:BoundField DataField="LastName" HeaderText="LastName" 
                  SortExpression="LastName" />
          </Columns>
      </asp:gridview>

      <!-- This example uses Microsoft SQL Server and connects  -->
      <!-- to the Northwind sample database. Use an ASP.NET     -->
      <!-- expression to retrieve the connection string value   -->
      <!-- from the Web.config file.                            -->
      <asp:sqldatasource id="CustomersSqlDataSource"  
        selectcommand="SELECT CustomerID, CompanyName, FirstName, LastName FROM SalesLT.Customer"
        connectionstring="<%$ ConnectionStrings:AWLTConnectionString %>"
        runat="server">
      </asp:sqldatasource>


    </form>
  </body>
</html>