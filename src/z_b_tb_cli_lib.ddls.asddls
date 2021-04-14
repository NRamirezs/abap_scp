@AbapCatalog.sqlViewName: 'ZV_CLI_LIB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Relación Cliente Libros'
@Metadata.allowExtensions: true
define view Z_B_TB_CLI_LIB
  as select from ztb_clnts_lib_92
{
  key id_libro   as Libro,
  count(distinct id_cliente) as Ventas
}
group by
id_libro
