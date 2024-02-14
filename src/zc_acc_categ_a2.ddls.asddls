@AbapCatalog.sqlViewName: 'ZV_ACC_CAT_A02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Accesi categorias'
define view ZC_ACC_CATEG_A2 
    as select from ztb_acc_categ_a2
{
 key bi_categ as Categoria,
 key tipo_acceso as Tipo_Acceso
    
}
