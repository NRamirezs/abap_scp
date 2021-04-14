@AbapCatalog.sqlViewName: 'ZV_CLIENTE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:#NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
@UI.headerInfo: {
    typeName: 'Cliente',
    typeNamePlural: 'Clientes',
    title: {
        type: #STANDARD,
        value: 'NombreCompleto'
    },
    description: {
        type: #STANDARD,
        value: 'IdCliente'
    }
}
define view Z_B_TB_CLIENTES
  as select from ztb_clientes_92  as clientes
    inner join   ztb_clnts_lib_92 as clnts on clnts.id_cliente = clientes.id_cliente

{

  key id_libro                              as IdLibro,
  key clientes.id_cliente                   as IdCliente,
  key tipo_acceso                           as TipoAcceso,
      nombre                                as Nombre,
      apellidos                             as Apellidos,
      email                                 as Correo,
      url                                   as URL,
      concat_with_space(nombre,apellidos,1) as NombreCompleto
}
