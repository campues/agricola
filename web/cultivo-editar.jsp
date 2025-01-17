<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Control.Variables"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Datos de la empresa</title>

        <!-- Normalize V8.0.1 -->
        <link rel="stylesheet" href="./css/normalize.css">

        <!-- Bootstrap V4.3 -->
        <link rel="stylesheet" href="./css/bootstrap.min.css">

        <!-- Bootstrap Material Design V4.0 -->
        <link rel="stylesheet" href="./css/bootstrap-material-design.min.css">

        <!-- Font Awesome V5.9.0 -->
        <link rel="stylesheet" href="./css/all.css">

        <!-- Sweet Alerts V8.13.0 CSS file -->
        <link rel="stylesheet" href="./css/sweetalert2.min.css">

        <!-- Sweet Alert V8.13.0 JS file-->
        <script src="./js/sweetalert2.min.js"></script>

        <!-- jQuery Custom Content Scroller V3.1.5 -->
        <link rel="stylesheet" href="./css/jquery.mCustomScrollbar.css">

        <!-- General Styles -->
        <link rel="stylesheet" href="./css/style.css">
    </head>

    <body>
        <!-- Main container -->
        <main class="full-box main-container">
            <!--------------EMCABEZADO------------------->
            <jsp:include page="header.jsp"/>
            <!-- Dialog help -->
            <jsp:include page="ayuda.jsp"/>
            <!-- Page content -->
            <section class="full-box page-content">
                <nav class="full-box navbar-info">
                    <a href="#" class="float-left show-nav-lateral">
                        <i class="fas fa-exchange-alt"></i>
                    </a>
                    <a href="#!" data-toggle="modal"  data-target="#ModalInfo">
                        <i title="Ayuda" class="fas icon-help-with-circle"></i>
                    </a>
                    <a href="#" class="btn-exit-system">
                        <i class="fas fa-power-off"> &nbsp;Salir</i>
                    </a>

                </nav>
                <!-- Page header -->
                <div class="full-box page-header">

                </div>

                <!-- Content here-->
                <div class="container-fluid">
                    <form  name="formulario" action="Controlador?menu=Cultivo"  class="form-neon" autocomplete="off" method="POST" >
                        <fieldset>
                            <legend><i class="fas fa-store-alt"></i> &nbsp; Verifica los datos antes de guardar</legend>
                            <!--<div class="nav-lateral-barra"></div> --> 
                            <div class="row">
                                <input type="hidden"  name="pk" class="form-control"  value="${cult.pk_cultivo}">
                                <input type="hidden"  class="" name="fkVisitas"   value="<%=Variables.idVisitas%>" id="item_codigo" readonly="readonly" >
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label  class="bmd-label-floating">Nombre</label>
                                        <input type="text"  class="form-control" name="txtNombre" required="" value="${cult.nomCultivo}">
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <label  class="bmd-label-floating">Area</label>
                                        <input type="text"  class="form-control" name="txtArea"   value="${cult.area}">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label  class="bmd-label-floating">Densidad</label>
                                        <input type="text"  class="form-control" name="txtDensidad"   value="${cult.densidadSiembra}">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label  class="bmd-label-floating">Numero de plantas</label>
                                        <input type="number"  class="form-control" name="txtNumero"  value="${cult.numPlantas}">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label  class="">Aplicación del último producto prohibido,fecha</label>
                                        <input type="date"  class="form-control" name="txtFecha" required=""  value="${cult.fechaPro}">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label  class="bmd-label-floating">Estimado de cosecha</label>
                                        <input type="number"  class="form-control" name="txtEstimacion"   value="${cult.es_cosecha}">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="item" class="bmd-label-floating">Estatus</label>
                                        <select class="form-control" name="opEstatus" id="item">
                                            <option value="Organico" <c:if test="${cult.estatus == 'Organico'}"> selected </c:if>>Organico</option>
                                            <option value="Convencional" <c:if test="${cult.estatus == 'Convencional'}"> selected</c:if>>Convencional</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label  class="bmd-label-floating">Manejo Organicamente desde(Año)</label>
                                            <input type="number"  class="form-control" name="txtAnio_or"   value="${cult.anio_organica}">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label  class="bmd-label-floating">Año de la primera preinspección</label>
                                        <input type="number"  class="form-control" name="txtAnio_ins"  value="${cult.anio_inspeccion}">
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend><i class="fas icon-cw fa-fw"></i> &nbsp; Rotación de cultivo</legend>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label  class="bmd-label-floating">1°Año anterior</label>
                                            <input type="text"  class="form-control" name="txt1anio" value="${cult.rotacion1}" title="nombre de cultivo existente anterior">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label  class="bmd-label-floating">2° Año anterior</label>
                                            <input type="text"  class="form-control" name="txt2anio"  value="${cult.rotacion2}" title="nombre de cultivo existente anterior">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label  class="bmd-label-floating">3° Año anterior</label>
                                            <input type="text"  class="form-control" name="txt3anio"  value="${cult.rotacion3}" title="nombre de cultivo existente anterior">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label  class="bmd-label-floating">Observaciones</label>
                                            <input type="text"  class="form-control" name="txtobCultivos" value="${cult.obCultivo}" title="Alguna observación del cultivo">
                                        </div>
                                    </div>

                                </div> 
                        </fieldset>      
                        <p class="text-center" >
                            <button   type="submit" name="accion" value="Actualizar" class="btn btn-raised btn-success btn-sm"> ACTUALIZAR</button>
                            <button   type="submit" name="accion" value="Listar" class="btn btn-raised btn-danger btn-sm"> CANCELAR</button>
                        </p>
                    </form>
                </div>	

            </section>
        </main>


        <!--=============================================
            =            Include JavaScript files           =
            ==============================================-->
        <!-- jQuery V3.4.1 -->
        <script src="./js/jquery-3.4.1.min.js"></script>

        <!-- popper -->
        <script src="./js/popper.min.js"></script>

        <!-- Bootstrap V4.3 -->
        <script src="./js/bootstrap.min.js"></script>

        <!-- jQuery Custom Content Scroller V3.1.5 -->
        <script src="./js/jquery.mCustomScrollbar.concat.min.js"></script>

        <!-- Bootstrap Material Design V4.0 -->
        <script src="./js/bootstrap-material-design.min.js"></script>
        <script>
            $(document).ready(function () {
                $('body').bootstrapMaterialDesign();
            });
        </script>

        <script src="./js/main.js"></script>
    </body></html>