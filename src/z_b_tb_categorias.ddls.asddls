@AbapCatalog.sqlViewName: 'ZV_CATEGORIAS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consulta Categorías'
@Metadata.allowExtensions: true
define view Z_B_TB_CATEGORIAS
  as select from ztb_catego_92
{
  key bi_categ    as Categoria,
      descripcion as Descripcion
}
