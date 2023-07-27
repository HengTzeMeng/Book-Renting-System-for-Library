﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Book_Renting_System_for_Library.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2><br /></h2>
                  <p><b></b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <a href="viewbooks.aspx"><img width="150px" src="imgs/library.png"/></a>
                  <h4>Digital Book Inventory</h4>
                  <p class="text-center"></p>
               </center>
            </div>
            <div class="col-md-4">

               <center>
                 <a href="userlogin.aspx"> <img width="150px" src="imgs/pt.png"/></a>
                  <h4>Rent Books</h4>
                  <p class="text-center"></p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                   <a href="adminlogin.aspx"><img width="150px" src="imgs/addd.png"/></a>
                  <h4>Admin Login</h4>
                  <p class="text-center"></p>
               </center>
                
            </div>
         </div>
      </div>
   </section>
   <section>

   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2></h2>
                  <p><b></b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                 <a href="usersignup.aspx"><img width="150px" src="imgs/su.png" /></a>
                  <h4>Sign Up</h4>
                  <p class="text-center"></p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                 <img width="150px" src="imgs/bbk.png"/>
                  <h4>Search Books</h4>
                  <p class="text-center"></p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                 <img width="150px" src="imgs/map.png"/>
                  <h4>Visit Us</h4>
                  <a href= "https://www.youtube.com/watch?v=dQw4w9WgXcQ"><p class="text-center"> Visit...</p></a>
               </center>
            </div>
         </div>
      </div>
  </section><br /><br /><br />
                                 <center><h1><b><p style="font-size:80px; color:#FFE87C; font-family:'HoloLens MDL2 Assets'">Library</p></b></h1></center><br />
                                  <div class="container-fluid p-3 my-3 bg-dark text-white">
                                  <div class="row">
                                  <div class="card">
                                   <div class="card-body"
                                       
                                    style="background-image: url('imgs/yel.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [book_table]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id">
                                                    <ControlStyle Font-Bold="True" />
                                                    <ItemStyle Font-Bold="True" />
                                                </asp:BoundField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-10">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <span>Author - </span>
                                                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                            &nbsp;| <span><span>&nbsp;</span>Genre - </span>
                                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                            &nbsp;|
                                                                            <span>
                                                                          Language -<span>&nbsp;

                                                                            </span>
                                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Publisher -
                                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                            &nbsp;| Publish Date -
                                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                            &nbsp;| Pages -
                                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                            &nbsp;| Edition -
                                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Cost -
                                                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                            &nbsp;| Actual Stock -
                                                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                            &nbsp;| Available Stock -
                                                                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Description -
                                                                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

</asp:Content>
