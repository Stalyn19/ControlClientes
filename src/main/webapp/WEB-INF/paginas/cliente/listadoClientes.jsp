<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_MX"/>
<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de Clientes</h4>
                        <table class="table table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>#</th>
                                    <th>nombre</th>
                                    <th>saldo</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach var="cliente" items="${clientes}">
                                    <tr>        
                                        <td>${cliente.idCliente}</td>
                                        <td>${cliente.nombre} ${cliente.apellido}</td>
                                        <td><fmt:formatNumber value="${cliente.saldo}" type="currency"/></td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}" class="btn btn-secondary">
                                                <i class="fas fa-angle-double-right"></i>
                                                Editar
                                            </a>
                                        </td>
                                    </tr>     
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!--Tarjetas para los totales-->
            <div class="col-md-3">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo Total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>   
                        </h4>
                    </div>
                </div>
                        <div class="card text-center bg-success text-white mb-3">
                            <div class="card-body">
                                <h4 class="display-4">
                                     <i class="fas fa-users"></i> ${totalClientes}
                                </h4>
                            </div>
                        </div>  
            </div>
        </div>
    </div>

</section>
      <!--Agregar cliente MODAL-->
      <jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>
                                