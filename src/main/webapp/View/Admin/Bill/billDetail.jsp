<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
  <meta name="author" content="AdminKit">
  <meta name="keywords"
        content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/Views/Admin/img/icons/icon-48x48.png"/>

  <link rel="canonical" href="https://demo-basic.adminkit.io/"/>
  <title>Gent Steak Management</title>
  <link href="<%=request.getContextPath()%>/View/Admin/css/app1.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/View/Admin/css/1.css" rel="stylesheet">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

</head>

<body>
<div class="wrapper">

  <nav id="sidebar" class="sidebar js-sidebar">
    <div class="sidebar-content js-simplebar">
      <a class="sidebar-brand" href="index.html">
        <span class="align-middle">Gent Steak Management</span>
      </a>

      <ul class="sidebar-nav">
        <li class="sidebar-header">
          Pages
        </li>
        <li class="sidebar-item ">
          <a class="sidebar-link" href="<%=request.getContextPath()%>/OrderServlet?action=earning">
            <i class="bi bi-house-dash-fill"></i> <span class="align-middle">Dashboard</span>
          </a>
        </li>
        <li class="sidebar-item  ">
          <a class="sidebar-link" href="<%=request.getContextPath()%>/CatalogServlet">
            <i class="bi bi-tags"></i> <span class="align-middle">Category</span>
          </a>
        </li>
        <li class="sidebar-item ">
          <a class="sidebar-link" href="<%=request.getContextPath()%>/ProductServlet">
            <i class="bi bi-cup-straw"></i> <span class="align-middle">Product List</span>
          </a>
        </li>
        <li class="sidebar-item">
          <a class="sidebar-link" href="<%=request.getContextPath()%>/UserServlet">
            <i class="bi bi-people-fill"></i><span class="align-middle">User List</span>
          </a>
        </li>
        <li class="sidebar-item active">
          <a class="sidebar-link" href="<%=request.getContextPath()%>/OrderServlet">
            <i class="bi bi-receipt"></i> <span class="align-middle">Bill List</span>
          </a>
        </li>
        <li class="sidebar-item ">
          <a class="sidebar-link" href="<%=request.getContextPath()%>/TableServlet">
            <i class="bi bi-menu-button-wide"></i><span class="align-middle">Order Table</span>
          </a>
        </li>
        <li class="sidebar-item ">
          <a class="sidebar-link" href="<%=request.getContextPath()%>/StarServlet?action=GetAll">
            <i class="bi bi-star-half"></i></i><span class="align-middle">List Star</span>
          </a>
        </li>


        <li class="sidebar-item">
          <a class="sidebar-link" href="<%=request.getContextPath()%>/ContactServlet?action=Update">
            <i class="bi bi-phone-vibrate"></i> <span class="align-middle">Contact</span>
          </a>
        </li>
        <li class="sidebar-item">
          <a class="sidebar-link" href="index.jsp">
            <i class="bi bi-xbox"></i><span class="align-middle">Log Out</span>
          </a>
        </li>

      </ul>
    </div>
  </nav>



  <div class="main">
    <jsp:include page="../navbarLink.jsp"/>

    <main class="content">
      <div class="container-fluid p-0">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Order Detail</h3>
            <nav class="navbar navbar-expand-lg bg-light">
              <div class="container-fluid">
                <a class="navbar-brand"
                   href="<%=request.getContextPath()%>/OrderServlet">
                  <button type="button" class="btn btn-outline-success"><i class="bi bi-arrow-left-square"></i></button>
                </a>
              </div>
            </nav>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped text-center">
              <thead>
              <tr>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Amount</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${Detail}" var="o">
                <tr>
                  <td>${o.productName}</td>
                  <td>${o.quantity}</td>
                  <td>${o.price} $</td>
                  <td>${o.quantity*o.price} $</td>
                </tr>
              </c:forEach>
              </tbody>

            </table>
          </div>
          <!-- /.card-body -->

        </div>
      </div>
    </main>

    <jsp:include page="../footer.jsp"/>

  </div>
</div>


<selector>



  <div class="modal fade" id="updateCatalogModal" tabindex="-1" aria-labelledby="updateCatalogLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="updateCatalogLabel">Update Catalog</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="<%=request.getContextPath()%>/OrderServlet" method="post">
          <div class="modal-body">

            <div class="input-group mb-3">
              <select class="form-select" id="catalogStatusUpdate" name="status">
                <option value="true" selected>Active</option>
                <option value="false">Inactive</option>
              </select>
            </div>
          </div>


          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input type="submit" name="action" value="Update" class="btn btn-primary"/>
          </div>
        </form>
      </div>
    </div>
  </div>
</selector>

<script src="js/app.js"></script>





<script>
  document.addEventListener("DOMContentLoaded", function () {
    var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
    var gradient = ctx.createLinearGradient(0, 0, 0, 225);
    gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
    gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
    // Line chart
    new Chart(document.getElementById("chartjs-dashboard-line"), {
      type: "line",
      data: {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Sales ($)",
          fill: true,
          backgroundColor: gradient,
          borderColor: window.theme.primary,
          data: [
            2115,
            1562,
            1584,
            1892,
            1587,
            1923,
            2566,
            2448,
            2805,
            3438,
            2917,
            3327
          ]
        }]
      },
      options: {
        maintainAspectRatio: false,
        legend: {
          display: false
        },
        tooltips: {
          intersect: false
        },
        hover: {
          intersect: true
        },
        plugins: {
          filler: {
            propagate: false
          }
        },
        scales: {
          xAxes: [{
            reverse: true,
            gridLines: {
              color: "rgba(0,0,0,0.0)"
            }
          }],
          yAxes: [{
            ticks: {
              stepSize: 1000
            },
            display: true,
            borderDash: [3, 3],
            gridLines: {
              color: "rgba(0,0,0,0.0)"
            }
          }]
        }
      }
    });
  });
</script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Pie chart
    new Chart(document.getElementById("chartjs-dashboard-pie"), {
      type: "pie",
      data: {
        labels: ["Chrome", "Firefox", "IE"],
        datasets: [{
          data: [4306, 3801, 1689],
          backgroundColor: [
            window.theme.primary,
            window.theme.warning,
            window.theme.danger
          ],
          borderWidth: 5
        }]
      },
      options: {
        responsive: !window.MSInputMethodContext,
        maintainAspectRatio: false,
        legend: {
          display: false
        },
        cutoutPercentage: 75
      }
    });
  });
</script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Bar chart
    new Chart(document.getElementById("chartjs-dashboard-bar"), {
      type: "bar",
      data: {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "This year",
          backgroundColor: window.theme.primary,
          borderColor: window.theme.primary,
          hoverBackgroundColor: window.theme.primary,
          hoverBorderColor: window.theme.primary,
          data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
          barPercentage: .75,
          categoryPercentage: .5
        }]
      },
      options: {
        maintainAspectRatio: false,
        legend: {
          display: false
        },
        scales: {
          yAxes: [{
            gridLines: {
              display: false
            },
            stacked: false,
            ticks: {
              stepSize: 20
            }
          }],
          xAxes: [{
            stacked: false,
            gridLines: {
              color: "transparent"
            }
          }]
        }
      }
    });
  });
</script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    var markers = [{
      coords: [31.230391, 121.473701],
      name: "Shanghai"
    },
      {
        coords: [28.704060, 77.102493],
        name: "Delhi"
      },
      {
        coords: [6.524379, 3.379206],
        name: "Lagos"
      },
      {
        coords: [35.689487, 139.691711],
        name: "Tokyo"
      },
      {
        coords: [23.129110, 113.264381],
        name: "Guangzhou"
      },
      {
        coords: [40.7127837, -74.0059413],
        name: "New York"
      },
      {
        coords: [34.052235, -118.243683],
        name: "Los Angeles"
      },
      {
        coords: [41.878113, -87.629799],
        name: "Chicago"
      },
      {
        coords: [51.507351, -0.127758],
        name: "London"
      },
      {
        coords: [40.416775, -3.703790],
        name: "Madrid "
      }
    ];
    var map = new jsVectorMap({
      map: "world",
      selector: "#world_map",
      zoomButtons: true,
      markers: markers,
      markerStyle: {
        initial: {
          r: 9,
          strokeWidth: 7,
          stokeOpacity: .4,
          fill: window.theme.primary
        },
        hover: {
          fill: window.theme.primary,
          stroke: window.theme.primary
        }
      },
      zoomOnScroll: false
    });
    window.addEventListener("resize", () => {
      map.updateSize();
    });
  });
</script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
    var defaultDate = date.getUTCFullYear() + "-" + (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
    document.getElementById("datetimepicker-dashboard").flatpickr({
      inline: true,
      prevArrow: "<span title=\"Previous month\">&laquo;</span>",
      nextArrow: "<span title=\"Next month\">&raquo;</span>",
      defaultDate: defaultDate
    });
  });
</script>


<%--=============================================================  Modal Delete =============================================================== --%>
<div class="modal fade" id="deleteProductModal" tabindex="-1" aria-labelledby="deleteProductModalLabel"
     aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteProductModalLabel">Delete Catalog</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="<%=request.getContextPath()%>/ProductServlet" method="post">
        <div class="modal-body">
          <p> Bạn chắc chắn có muốn xóa sản phẩm này không? 🤨 </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success" data-bs-dismiss="modal">Close</button>
          <input type="submit" class="btn btn-danger" value="delete" name="action" class="btn btn-primary"/>
          <input type="hidden" name="proProductId" id="proProductId"/>
        </div>
      </form>
    </div>
  </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
  $(document).on('click', 'table .delete', function () {
    let catId = $(this).parent().find('#catId').val();
    $('#catDeleteId').val(catId);
  });
  $(document).on('click','table .update',function (){
    console.log('Vao event update click');
    let catId = $(this).parent().find('#catId').val();
    $.ajax({
      type:'GET',
      url: '${pageContext.request.contextPath}/OrderServlet?action=GetById&&catalogId='+catId,
      success:function (catalogUpdate){
        let status = catalogUpdate.catalogStatus.toString();
        $('#catalogStatusUpdate').val(status);
      }
    });
  });
</script>
<%--=============================================================  Modal Delete =============================================================== --%>


</body>

</html>