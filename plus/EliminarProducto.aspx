﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarProducto.aspx.cs" Inherits="FF_al_15.EliminarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title>Eliminar Producto</title>
</head>
<body>
    <script type="text/javascript">
        function validar(e) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            patron = /[A-Za-z\s]/; // 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>
    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false
        }
    </script>

    <form id="form1" runat="server">
        <div class="my-content">
            <div class="container">
                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Eliminar</h1>
                        <div class="myform-top">
                        </div>
                        <div class="myform-bottom">
                            
                                <div class="form-group">
                                    <asp:TextBox ID="txtid" runat="server" placeholder="ID producto..." type="text" class="form-control" onpaste="return false" 
                                        onkeypress="return NumCheck(event, this)"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtmarca" runat="server" placeholder="Marca..." type="text" class="form-control" onpaste="return false" 
                                        onkeypress="return validar(event)" minlength="1" MaxLength="12"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtproducto" runat="server" placeholder="Producto..." type="text" class="form-control" onpaste="return false" 
                                        onkeypress="return validar(event)" minlength="1" MaxLength="12"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtprecio" runat="server" placeholder="Precio..." type="text" class="form-control" onpaste="return false" 
                                        onkeypress="return NumCheck(event, this)" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtcantidad" runat="server" placeholder="Cantidad..." type="text" class="form-control" minlength="5" MaxLength="10" />
                                </div>
                          <div class="form-group">
                                     <asp:TextBox ID="txtaddress" runat="server" placeholder="Address..." type="text" class="form-control" onpaste="return false" 
                                    onkeypress="return validar(event)" minlength="1" MaxLength="25"></asp:TextBox>
                            </div>

                                <asp:Button runat="server" Text="Seleccionar" CssClass="mybtn" OnClick="Unnamed1_Click" Width="109px"></asp:Button>
                                <asp:Button runat="server" Text="Eliminar" CssClass="mybtn" OnClick="Unnamed2_Click"></asp:Button>
                                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" Width="1004px" Height="270px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Producto" HeaderText="Producto" />
                    <asp:BoundField DataField="Marca" HeaderText="Marca" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                      <asp:BoundField DataField="Address" HeaderText="Address" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
