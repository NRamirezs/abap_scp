@AbapCatalog.sqlViewName: 'ZV_VTALIB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Cantidad de libros vendidos'
define view Z_B_TB_CANTLIB
    as select from ztb_libros_92 as Libros 
    left outer join ztb_clnts_lib_92 as CliLib
    on Libros.id_libro = CliLib.id_libro
    {
   Libros.id_libro as IdLibro,
   count(distinct CliLib.id_cliente ) as Cliente
}
group by  Libros.id_libro
