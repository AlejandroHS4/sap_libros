@AbapCatalog.sqlViewName: 'ZV_CLIENTE_A02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
@UI.headerInfo : { typeName: 'Cliente',
                   title   : {type: #STANDARD,
                              value: 'NombreCompleto'},
                   description : {type: #STANDARD,
                                  value: 'IdCliente'},
                   imageUrl: 'Imagen'}
define view ZC_CLIENTES_A02 
    as select from ztb_clientes_a02 as clientes
        inner join ztb_clnts_lib_a2 as clnts on clnts.id_cliente = clientes.id_cliente
{
    key clnts.id_libro as IdLibro,
    key clientes.id_cliente as IdCliente,
    key clientes.tipo_acceso as Acceso,
    clientes.nombre as Nombre,
    clientes.apellidos as Apellidos,
    clientes.email as Email,
    clientes.url as Imagen,
    concat_with_space(clientes.nombre, clientes.apellidos, 1) as NombreCompleto
    
}
