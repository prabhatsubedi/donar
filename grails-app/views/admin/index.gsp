<%@ page import="java.math.MathContext" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>DR+ Admin Dashboard</title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.css"/>

    <!-- Morris -->

    <asset:stylesheet src="plugins/morris/morris-0.4.3.min.css"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style"/>

</head>

<body>
<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                        <asset:image alt="image" class="img-circle" src="profile_small.jpg" />
                    </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Admin</strong>
                                %{--</span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>--}%
                                <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                    <li><a href="profile.html">Profile</a></li>
                                    <li><a href="contacts.html">Contacts</a></li>
                                    <li><a href="mailbox.html">Mailbox</a></li>
                                    <li class="divider"></li>
                                    <li><a href="/logout">Logout</a></li>
                                </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li class="active">
                    <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">Admin</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        %{--<li><a href="index.html">Dashboard v.1</a></li>
                        <li><a href="dashboard_2.html">Dashboard v.2</a></li>
                        <li><a href="dashboard_3.html">Dashboard v.3</a></li>--}%
                        <li class="active"><a href="/">Dashboard</a></li>
                        %{--<li><a href="dashboard_5.html">Dashboard v.5 </a></li>--}%
                    </ul>
                </li>
                %{--<<li>
                    <a href="layouts.html"><i class="fa fa-diamond"></i> <span class="nav-label">Layouts</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Graphs</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="graph_flot.html">Flot Charts</a></li>
                        <li><a href="graph_morris.html">Morris.js Charts</a></li>
                        <li><a href="graph_rickshaw.html">Rickshaw Charts</a></li>
                        <li><a href="graph_chartjs.html">Chart.js</a></li>
                        <li><a href="graph_chartist.html">Chartist</a></li>
                        <li><a href="c3.html">c3 charts</a></li>
                        <li><a href="graph_peity.html">Peity Charts</a></li>
                        <li><a href="graph_sparkline.html">Sparkline Charts</a></li>
                    </ul>
                </li>
                <li>
                    <a href="mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox </span><span class="label label-warning pull-right">16/24</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="mailbox.html">Inbox</a></li>
                        <li><a href="mail_detail.html">Email view</a></li>
                        <li><a href="mail_compose.html">Compose email</a></li>
                        <li><a href="email_template.html">Email templates</a></li>
                    </ul>
                </li>
                <li>
                    <a href="metrics.html"><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span>  </a>
                </li>
                <li>
                    <a href="widgets.html"><i class="fa fa-flask"></i> <span class="nav-label">Widgets</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Forms</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="form_basic.html">Basic form</a></li>
                        <li><a href="form_advanced.html">Advanced Plugins</a></li>
                        <li><a href="form_wizard.html">Wizard</a></li>
                        <li><a href="form_file_upload.html">File Upload</a></li>
                        <li><a href="form_editors.html">Text Editor</a></li>
                        <li><a href="form_autocomplete.html">Autocomplete</a></li>
                        <li><a href="form_markdown.html">Markdown</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">App Views</span>  <span class="pull-right label label-primary">SPECIAL</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="profile.html">Profile</a></li>
                        <li><a href="profile_2.html">Profile v.2</a></li>
                        <li><a href="contacts_2.html">Contacts v.2</a></li>
                        <li><a href="projects.html">Projects</a></li>
                        <li><a href="project_detail.html">Project detail</a></li>
                        <li><a href="activity_stream.html">Activity stream</a></li>
                        <li><a href="teams_board.html">Teams board</a></li>
                        <li><a href="social_feed.html">Social feed</a></li>
                        <li><a href="clients.html">Clients</a></li>
                        <li><a href="full_height.html">Outlook view</a></li>
                        <li><a href="vote_list.html">Vote list</a></li>
                        <li><a href="file_manager.html">File manager</a></li>
                        <li><a href="calendar.html">Calendar</a></li>
                        <li><a href="issue_tracker.html">Issue tracker</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="article.html">Article</a></li>
                        <li><a href="faq.html">FAQ</a></li>
                        <li><a href="timeline.html">Timeline</a></li>
                        <li><a href="pin_board.html">Pin board</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="search_results.html">Search results</a></li>
                        <li><a href="lockscreen.html">Lockscreen</a></li>
                        <li><a href="invoice.html">Invoice</a></li>
                        <li><a href="login.html">Login</a></li>
                        <li><a href="login_two_columns.html">Login v.2</a></li>
                        <li><a href="forgot_password.html">Forget password</a></li>
                        <li><a href="register.html">Register</a></li>
                        <li><a href="404.html">404 Page</a></li>
                        <li><a href="500.html">500 Page</a></li>
                        <li><a href="empty_page.html">Empty page</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-globe"></i> <span class="nav-label">Miscellaneous</span><span class="label label-info pull-right">NEW</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="toastr_notifications.html">Notification</a></li>
                        <li><a href="nestable_list.html">Nestable list</a></li>
                        <li><a href="agile_board.html">Agile board</a></li>
                        <li><a href="timeline_2.html">Timeline v.2</a></li>
                        <li><a href="diff.html">Diff</a></li>
                        <li><a href="pdf_viewer.html">PDF viewer</a></li>
                        <li><a href="i18support.html">i18 support</a></li>
                        <li><a href="sweetalert.html">Sweet alert</a></li>
                        <li><a href="idle_timer.html">Idle timer</a></li>
                        <li><a href="truncate.html">Truncate</a></li>
                        <li><a href="password_meter.html">Password meter</a></li>
                        <li><a href="spinners.html">Spinners</a></li>
                        <li><a href="spinners_usage.html">Spinners usage</a></li>
                        <li><a href="tinycon.html">Live favicon</a></li>
                        <li><a href="google_maps.html">Google maps</a></li>
                        <li><a href="datamaps.html">Datamaps</a></li>
                        <li><a href="social_buttons.html">Social buttons</a></li>
                        <li><a href="code_editor.html">Code editor</a></li>
                        <li><a href="modal_window.html">Modal window</a></li>
                        <li><a href="clipboard.html">Clipboard</a></li>
                        <li><a href="text_spinners.html">Text spinners</a></li>
                        <li><a href="forum_main.html">Forum view</a></li>
                        <li><a href="validation.html">Validation</a></li>
                        <li><a href="tree_view.html">Tree view</a></li>
                        <li><a href="loading_buttons.html">Loading buttons</a></li>
                        <li><a href="chat_view.html">Chat view</a></li>
                        <li><a href="masonry.html">Masonry</a></li>
                        <li><a href="tour.html">Tour</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">UI Elements</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="typography.html">Typography</a></li>
                        <li><a href="icons.html">Icons</a></li>
                        <li><a href="draggable_panels.html">Draggable Panels</a></li> <li><a href="resizeable_panels.html">Resizeable Panels</a></li>
                        <li><a href="buttons.html">Buttons</a></li>
                        <li><a href="video.html">Video</a></li>
                        <li><a href="tabs_panels.html">Panels</a></li>
                        <li><a href="tabs.html">Tabs</a></li>
                        <li><a href="notifications.html">Notifications & Tooltips</a></li>
                        <li><a href="helper_classes.html">Helper css classes</a></li>
                        <li><a href="badges_labels.html">Badges, Labels, Progress</a></li>
                    </ul>
                </li>

                <li>
                    <a href="grid_options.html"><i class="fa fa-laptop"></i> <span class="nav-label">Grid options</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-table"></i> <span class="nav-label">Tables</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="table_basic.html">Static Tables</a></li>
                        <li><a href="table_data_tables.html">Data Tables</a></li>
                        <li><a href="table_foo_table.html">Foo Tables</a></li>
                        <li><a href="jq_grid.html">jqGrid</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="ecommerce_products_grid.html">Products grid</a></li>
                        <li><a href="ecommerce_product_list.html">Products list</a></li>
                        <li><a href="ecommerce_product.html">Product edit</a></li>
                        <li><a href="ecommerce_product_detail.html">Product detail</a></li>
                        <li><a href="ecommerce-cart.html">Cart</a></li>
                        <li><a href="ecommerce-orders.html">Orders</a></li>
                        <li><a href="ecommerce_payments.html">Credit Card form</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-picture-o"></i> <span class="nav-label">Gallery</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="basic_gallery.html">Lightbox Gallery</a></li>
                        <li><a href="slick_carousel.html">Slick Carousel</a></li>
                        <li><a href="carousel.html">Bootstrap Carousel</a></li>

                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap"></i> <span class="nav-label">Menu Levels </span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a href="#">Third Level <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>

                            </ul>
                        </li>
                        <li><a href="#">Second Level Item</a></li>
                        <li>
                            <a href="#">Second Level Item</a></li>
                        <li>
                            <a href="#">Second Level Item</a></li>
                    </ul>
                </li>
                <li>
                    <a href="css_animation.html"><i class="fa fa-magic"></i> <span class="nav-label">CSS Animations </span><span class="label label-info pull-right">62</span></a>
                </li>
                <li class="landing_link">
                    <a target="_blank" href="landing.html"><i class="fa fa-star"></i> <span class="nav-label">Landing Page</span> <span class="label label-warning pull-right">NEW</span></a>
                </li>
                <li class="special_link">
                    <a href="package.html"><i class="fa fa-database"></i> <span class="nav-label">Package</span></a>
                </li>--}%
            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    %{--<form role="search" class="navbar-form-custom" action="search_results.html">
                        <div class="form-group">
                            <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                        </div>
                    </form>--}%
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">Welcome to DR+ Admin Dashboard.</span>
                    </li>
                    %{--<li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a7.jpg">
                                    </a>
                                    <div>
                                        <small class="pull-right">46h ago</small>
                                        <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                        <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a4.jpg">
                                    </a>
                                    <div>
                                        <small class="pull-right text-navy">5h ago</small>
                                        <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                        <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/profile.jpg">
                                    </a>
                                    <div>
                                        <small class="pull-right">23h ago</small>
                                        <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                        <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a href="mailbox.html">
                                        <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="mailbox.html">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="profile.html">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="grid_options.html">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a href="notifications.html">
                                        <strong>See All Alerts</strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>--}%


                    <li>
                        <a href="/logout">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                    %{-- <li>
                         <a class="right-sidebar-toggle">
                             <i class="fa fa-tasks"></i>
                         </a>
                     </li>--}%
                </ul>

            </nav>
        </div>


        <div class="wrapper wrapper-content">
            <div class="row">
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div>
                                <h3 class="font-bold no-margins">
                                    Desired Optimal / Current Inventory Level
                                </h3>
                            </div>

                            <div class="m-t-sm">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div>
                                            <canvas id="optimalCurrentInventory" height="130"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div>
                                <h3 class="font-bold no-margins">
                                    Weekly Projection Level
                                </h3>
                            </div>

                            <div class="m-t-sm">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div>
                                            <canvas id="weeklyProjectionLevel" height="130"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div>
                                <h3 class="font-bold no-margins">
                                    Current Inventory Level Percent
                                </h3>
                            </div>

                            <div class="m-t-sm">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div>
                                            <canvas id="currentInventoryPercent" height="114"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <div>
                                <h3 class="font-bold no-margins">
                                    Current Inventory Level Gap
                                </h3>
                            </div>

                            <div class="m-t-sm">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div>
                                            <canvas id="currentInventoryGap" height="114"></canvas>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">

                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Forcasted Data</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-sm-9 m-b-xs">
                                    <div data-toggle="buttons" class="btn-group">
                                        <label class="btn btn-sm btn-white" onclick="changeBloodProduct('rbc')"> <input type="radio" id="option1" name="options"> RBC </label>
                                        <label class="btn btn-sm btn-white active" onclick="changeBloodProduct('platelet')" > <input type="radio" id="option2" name="options"> Platelets </label>
                                        <label class="btn btn-sm btn-white" onclick="changeBloodProduct('plasma')" > <input type="radio" id="option3" name="options"> Plasma </label>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table id="blood-product-table" class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Blood Type</th>
                                        <th>Forecasted Collections Day I</th>
                                        <th>Forecasted Import </th>
                                        <th>Forecasted Usage </th>
                                        <th>Percentage Met Demand </th>
                                        <th>Demand Gap</th>
                                    </tr>
                                    </thead>
                                    <tbody style="display: none"></tbody>
                                    <tbody id="blood-product-rbc" style="display: none">
                                    <g:each in="${rbcList}" var="bloodProduct" status="i">
                                        <tr style="text-align: center">
                                            <td>${i+1}</td>
                                            <td>${bloodProduct.bloodType}</td>
                                            <td>${bloodProduct.projectedCollectionDayI}</td>
                                            <td>${bloodProduct.projectedWeeklyImport}</td>
                                            <td>${bloodProduct.projectedUsageDaily}</td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)/
                                                        bloodProduct.projectedUsageDaily}" format="#.##"/>
                                            </td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)-
                                                        bloodProduct.projectedUsageDaily}"/>
                                            </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                    <tbody id="blood-product-platelet">
                                    <g:each in="${plateletList}" var="bloodProduct" status="i">
                                        <tr style="text-align: center">
                                            <td>${i+1}</td>
                                            <td>${bloodProduct.bloodType}</td>
                                            <td>${bloodProduct.projectedCollectionDayI}</td>
                                            <td>${bloodProduct.projectedWeeklyImport}</td>
                                            <td>${bloodProduct.projectedUsageDaily}</td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)/
                                                        bloodProduct.projectedUsageDaily}" format="#.##"/>
                                            </td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)-
                                                        bloodProduct.projectedUsageDaily}"/>
                                            </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                    <tbody id="blood-product-plasma" style="display: none">
                                    <g:each in="${plasmaList}" var="bloodProduct" status="i">
                                        <tr style="text-align: center">
                                            <td>${i+1}</td>
                                            <td>${bloodProduct.bloodType}</td>
                                            <td>${bloodProduct.projectedCollectionDayI}</td>
                                            <td>${bloodProduct.projectedWeeklyImport}</td>
                                            <td>${bloodProduct.projectedUsageDaily}</td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)/
                                                        bloodProduct.projectedUsageDaily}" format="#.##"/>
                                            </td>
                                            <td>
                                                <g:formatNumber number="${(bloodProduct.projectedWeeklyImport + bloodProduct.projectedCollectionDayI
                                                        + bloodProduct.projectedCollectionDayIPlusOne + bloodProduct.projectedCollectionDayIPlusTwo
                                                        + bloodProduct.projectedCollectionDayIPlusThree + bloodProduct.projectedCollectionDayIPlusFour
                                                        + bloodProduct.projectedCollectionDayIPlusFive + bloodProduct.projectedCollectionDayIPlusSix)-
                                                        bloodProduct.projectedUsageDaily}"/>
                                            </td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="footer">
            <div>
                <strong>Copyright</strong> DR &copy; 2017
            </div>
        </div>

    </div>
</div>

<!-- Mainly scripts -->
<asset:javascript src="jquery-3.1.1.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="plugins/metisMenu/jquery.metisMenu.js"/>
<asset:javascript src="plugins/slimscroll/jquery.slimscroll.min.js"/>

<!-- Flot -->
<asset:javascript src="plugins/flot/jquery.flot.js"/>
<asset:javascript src="plugins/flot/jquery.flot.tooltip.min.js"/>
<asset:javascript src="plugins/flot/jquery.flot.spline.js"/>
<asset:javascript src="plugins/flot/jquery.flot.resize.js"/>
<asset:javascript src="plugins/flot/jquery.flot.pie.js"/>
<asset:javascript src="plugins/flot/jquery.flot.symbol.js"/>
<asset:javascript src="plugins/flot/curvedLines.js"/>

<!-- Peity -->
<asset:javascript src="plugins/peity/jquery.peity.min.js"/>
<asset:javascript src="demo/peity-demo.js"/>

<!-- Custom and plugin javaasset:javascript -->
<asset:javascript src="inspinia.js"/>
<asset:javascript src="plugins/pace/pace.min.js"/>

<!-- jQuery UI -->
<asset:javascript src="plugins/jquery-ui/jquery-ui.min.js"/>

<!-- Jvectormap -->
<asset:javascript src="plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"/>
<asset:javascript src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>

<!-- Sparkline -->
<asset:javascript src="plugins/sparkline/jquery.sparkline.min.js"/>

<!-- Sparkline demo data  -->
<asset:javascript src="demo/sparkline-demo.js"/>

<!-- ChartJS-->
<asset:javascript src="plugins/chartJs/Chart.min.js"/>

<script>
    function changeBloodProduct(type){
        $('#blood-product-table tbody').hide();
        $('#blood-product-'+type).show();
    }
</script>

<script>
    $(document).ready(function() {
        var bloodType = ["O+", "A+", "B+", "AB+", "O-", "A-", "B-", "AB-"]
        var currentInventoryPercentData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet",
                    backgroundColor: "rgba(26,179,148,0.5)",
                    borderColor: "rgba(26,179,148,0.7)",
                    pointBackgroundColor: "rgba(26,179,148,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryPercent.platelet}
                },
                {
                    label: "RBC",
                    backgroundColor: "rgba(255,0,0,0.5)",
                    borderColor: "rgba(255,0,0,1)",
                    pointBackgroundColor: "rgba(255,0,0,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryPercent.rbc}
                },
                {
                    label: "Plasma",
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,1)",
                    pointBackgroundColor: "rgba(220,220,220,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryPercent.plasma}
                }
            ]
        };

        var lineOptions = {
            responsive: true
        };

        var ctx = document.getElementById("currentInventoryPercent").getContext("2d");
        new Chart(ctx, {type: 'line', data: currentInventoryPercentData, options:lineOptions});

        var currentInventoryGapData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet",
                    backgroundColor: "rgba(26,179,148,0.5)",
                    borderColor: "rgba(26,179,148,0.7)",
                    pointBackgroundColor: "rgba(26,179,148,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryGap.platelet}
                },
                {
                    label: "RBC",
                    backgroundColor: "rgba(255,0,0,0.5)",
                    borderColor: "rgba(255,0,0,1)",
                    pointBackgroundColor: "rgba(255,0,0,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryGap.rbc}
                },
                {
                    label: "Plasma",
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,1)",
                    pointBackgroundColor: "rgba(220,220,220,1)",
                    pointBorderColor: "#fff",
                    data: ${currentInventoryGap.plasma}
                }
            ]
        };

        var ctx1 = document.getElementById("currentInventoryGap").getContext("2d");
        new Chart(ctx1, {type: 'line', data: currentInventoryGapData, options:lineOptions});

        var optimalCurrentInventoryData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet - Current",
                    data: ${plateletList.currentInventoryLevel},
                    borderColor: "#1ab394",
                    fill: false
                },
                {
                    label: "RBC - Current",
                    data: ${rbcList.currentInventoryLevel},
                    borderColor: "#ff0000",
                    fill: false
                },
                {
                    label: "Plasma - Current",
                    data: ${plasmaList.currentInventoryLevel},
                    borderColor: "#3e95cd",
                    fill: false
                },
                {
                    label: "Platelet - Optimal",
                    data: ${plateletList.optimalLevel},
                    borderColor: "#0000ff",
                    fill: false
                },
                {
                    label: "RBC - Optimal",
                    data: ${rbcList.optimalLevel},
                    borderColor: "#ff00ff",
                    fill: false
                },
                {
                    label: "Plasma - Optimal",
                    data: ${plasmaList.optimalLevel},
                    borderColor: "#008000",
                    fill: false
                }
            ]
        };

        var ctx1 = document.getElementById("optimalCurrentInventory").getContext("2d");
        new Chart(ctx1, {type: 'line', data: optimalCurrentInventoryData, options:lineOptions});

        var weeklyProjectionData = {
            labels: bloodType,
            datasets: [
                {
                    label: "Platelet",
                    backgroundColor: "rgba(26,179,148,0.5)",
                    borderColor: "rgba(26,179,148,0.7)",
                    pointBackgroundColor: "rgba(26,179,148,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyProjectionMap.platelet}
                },
                {
                    label: "RBC",
                    backgroundColor: "rgba(255,0,0,0.5)",
                    borderColor: "rgba(255,0,0,1)",
                    pointBackgroundColor: "rgba(255,0,0,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyProjectionMap.rbc}
                },
                {
                    label: "Plasma",
                    backgroundColor: "rgba(220,220,220,0.5)",
                    borderColor: "rgba(220,220,220,1)",
                    pointBackgroundColor: "rgba(220,220,220,1)",
                    pointBorderColor: "#fff",
                    data: ${weeklyProjectionMap.plasma}
                }
            ]
        };

        var ctx1 = document.getElementById("weeklyProjectionLevel").getContext("2d");
        new Chart(ctx1, {type: 'line', data: weeklyProjectionData, options:lineOptions});
    });
</script>
</body>
</html>
