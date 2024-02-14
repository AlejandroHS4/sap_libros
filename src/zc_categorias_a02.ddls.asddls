@AbapCatalog.sqlViewName: 'ZV_CATEGORIA_A02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
define view ZC_CATEGORIAS_A02 
    as select from ztb_catego_a02
{
 
 key bi_categ as Categoria,
 descripcion as Descripcion   
}
