@AbapCatalog.sqlViewName: 'ZV_LIBROS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.dataMaintenance: #RESTRICTED
@EndUserText.label: 'Consulta de libros'
@Search.searchable: true
@Metadata.allowExtensions: true
@UI.headerInfo: {
    typeName: 'Libro',
    typeNamePlural: 'Libros',
    title: {
        type: #STANDARD,
        label: 'Titulo'
    },
    description: {
        type: #STANDARD,
        value: 'Autor'
    }
}
define view Z_B_TB_LIBROS
  as select from    ztb_libros_92       as libros
    inner join      ztb_catego_92       as catego on libros.bi_categ = catego.bi_categ
    left outer join Z_B_TB_CLNTS_LIB_92 as ventas on libros.id_libro = ventas.id_libro
  association [0..*] to Z_B_TB_CLIENTES as _Clientes on $projection.IDLibro = _Clientes.IdLibro
{
  key libros.id_libro as IDLibro,
      titulo          as Titulo,
      libros.bi_categ as Categoria,
      autor           as Autor,
      editorial       as Editorial,
      idioma          as Idioma,
      paginas         as CantPaginas,
      @Semantics.amount.currencyCode: 'moneda'
      precio          as Precio,
      case
      when ventas.Ventas < 1 then 0
      when ventas.Ventas = 1 then 1
      when ventas.Ventas = 2 then 2
      when ventas.Ventas > 2 then 3
      else 0
      end             as Ventas,
      case ventas.Ventas
      when 0 then ''
      else ''
      end             as Text,
      @Semantics.currencyCode: true
      moneda          as Moneda,
      formato         as Formato,
      url             as URL,
      _Clientes


}
