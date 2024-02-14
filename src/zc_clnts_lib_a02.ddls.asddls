@AbapCatalog.sqlViewName: 'ZV_CLNT_LIB_A2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes librerias'
define view zc_clnts_lib_a02 
    as select from ztb_clnts_lib_a2
{
    //ztb_clnts_lib
    key id_libro,
    // key id_libro
    count(distinct id_cliente) as Ventas  
}
group by
id_libro
