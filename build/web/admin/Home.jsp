<%-- 
    Document   : Home
    Created on : Jun 16, 2017, 3:42:18 PM
    Author     : Ryu
--%>

<!DOCTYPE html>
<html>
    <head>
        <%@page language="java" contentType="text/html" pageEncoding="windows-1252" import="java.util.*,java.sql.*"%>
        <title>Home Page</title>
    </head>
    <body>



        <%@include file="dashboard.jsp" %>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li class="active">Dashboard</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">

                <div class="row">
                    <!-- left column -->
                    <div class="col-md-12">
                        <!-- general form elements -->
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Home Page</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <form  action="HomeServlet" enctype="multipart/form-data" method="post">
                                <div class="box">
                                    <div class="box-header">                                       
                                        <h3 class="box-title">Message                                      
                                        </h3>
                                        <!-- tools box -->
                                        <%
                                            Connection con = null;
                                            PreparedStatement pst = null;
                                            ResultSet rs = null;
                                            try {
                                                con = OnsiteTeckies.Connect.makeConnection();
                                                String query = "select * from homepage";
                                                pst = con.prepareStatement(query);
                                                rs = pst.executeQuery();
                                                if (rs.next()) {
                                                    String img = rs.getString(2);
                                                    String msg = rs.getString(3);
                                                    String test = rs.getString(4);

                                        %>
                                        <div class="pull-right box-tools">
                                            <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                <i class="fa fa-minus"></i></button>
                                        </div>
                                        <!-- /. tools -->
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body pad">
                                        <textarea class="textarea" id="message" name="msg"  placeholder="Message" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"> <%=msg%></textarea>
                                    </div>
                                </div>
                                <div class="box">
                                    <div class="box-header">                                                                           
                                        <h3 class="box-title">Testimonial                                      
                                        </h3>  
                                        <!-- tools box -->
                                        <div class="pull-right box-tools">
                                            <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                <i class="fa fa-minus"></i></button>
                                        </div>
                                        <!-- /. tools -->
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body pad">
                                        <textarea class="textarea" id="test" name="test" placeholder="Testimonial" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><%=test%></textarea>
                                    </div>
                                </div>
                                <div class="box">
                                    <div class="box-header">                                                                           
                                        <h3 class="box-title">Banner Image                                      
                                        </h3>  
                                        <!-- tools box -->
                                        <div class="pull-right box-tools">
                                            <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                <i class="fa fa-minus"></i></button>
                                        </div>
                                        <!-- /. tools -->
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body pad">
                                        <img src="../images/<%=img%>" width="100%" height="300px" >
                                    </div>
                                </div>                                      

                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                                <div class="box-body">                                    
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-xs-5">                                            
                                                <input type="file" id="img" name="img">
                                            </div>
                                        </div>                            
                                    </div>
                                </div>


                                <%
                                    String res = (String) session.getAttribute("result");
                                    if (res != null) {
                                %>

                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div class="callout callout-success">
                                        <h4><%=res%></h4>
                                    </div>         
                                </div>
                                <!-- /.box-body -->

                                <%
                                        session.removeAttribute("result");
                                    } else {

                                        session.setAttribute("result", "");
                                    }
                                %>


                                <!-- /.box -->

                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <center><input type="submit" name="Submit" class="btn btn-primary" onclick="return check();"></center>
                                </div>
                            </form>
                        </div>
                        <!-- /.box -->

                        </section>
                        <!-- /.content -->
                    </div>
                    <!-- /.content-wrapper -->
                    <script>
                        function check() {

                            if (document.getElementById('message').value == "") {
                                alert('Message Cannot be Blank Left !!');
                                return false;
                            }

                            if (document.getElementById('test').value == "") {
                                alert('Testimonial Cannot be Blank Left !!');
                                return false;
                            }
                            if (document.getElementById('img').value == "") {
                                alert('Image Cannot be Blank Left !!');
                                return false;
                            }
                        }
                    </script>

                    <%@include file="footer.html" %>
                    </body>
                    </html>
