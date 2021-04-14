@AbapCatalog.sqlViewName: 'ZV_CLNTS_LIB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ventas'
define view Z_B_TB_CLNTS_LIB_92 
as select from ztb_clnts_lib_92
{
    key id_libro,
    count(distinct id_cliente) as Ventas
}
group by id_libro
