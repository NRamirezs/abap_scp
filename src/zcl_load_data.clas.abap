CLASS zcl_load_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_load_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   DATA: lt_ztb_acc_categ_92 type table of ztb_acc_categ_92,
         lt_ztb_catego_92 type table of ztb_catego_92,
         lt_ztb_clientes_92 type table of ztb_clientes_92,
         lt_ztb_clnts_lib_92 type table of ztb_clnts_lib_92,
         lt_ztb_libros_92 type table of ztb_libros_92.

         lt_ztb_acc_categ_92 = VALUE #(
            ( bi_categ = '1' tipo_acceso = '1' )
            ( bi_categ = '1' tipo_acceso = '2' )
            ( bi_categ = '1' tipo_acceso = '3' )
            ( bi_categ = '2' tipo_acceso = '1' )
            ( bi_categ = '2' tipo_acceso = '2' )
            ( bi_categ = '2' tipo_acceso = '3' ) ).

            DELETE FROM ztb_acc_categ_92.
            INSERT ztb_acc_categ_92 FROM TABLE @lt_ztb_acc_categ_92.

            SELECT * FROM ztb_acc_categ_92 INTO TABLE  @lt_ztb_acc_categ_92.

            out->write( sy-dbcnt ).
            out->write( 'ztb_acc_categ_92 data inserted successfully!').

            lt_ztb_catego_92 = VALUE #(
                ( bi_categ = '1' descripcion = 'Administrador' )
                ( bi_categ = '2' descripcion = 'Usuario' ) ).

            DELETE FROM ztb_catego_92.
            INSERT ztb_catego_92 FROM TABLE @lt_ztb_catego_92.

            SELECT * FROM ztb_catego_92 INTO TABLE  @lt_ztb_catego_92.

            out->write( sy-dbcnt ).
            out->write( 'ztb_catego_92  data inserted successfully!').

            lt_ztb_clientes_92 = VALUE #(
            ( id_cliente = '10' tipo_acceso = '1' nombre = 'Néstor' apellidos = 'Ramírez Segura' email = 'nest_ramirez@hotmail.com')
            ( id_cliente = '20' tipo_acceso = '1' nombre = 'Daniela' apellidos = 'Rojas Valverde' email = 'drojas@hotmail.com ')
            ( id_cliente = '30' tipo_acceso = '2' nombre = 'Alexander' apellidos = 'Artavia Artavia' email = 'aartavia@hotmail.com ') ).

            DELETE FROM ztb_clientes_92.
            INSERT ztb_clientes_92 FROM TABLE @lt_ztb_clientes_92.

            SELECT * FROM ztb_clientes_92 INTO TABLE  @lt_ztb_clientes_92.

            out->write( sy-dbcnt ).
            out->write( 'ztb_clientes_92  data inserted successfully!').

            lt_ztb_libros_92 = VALUE #(
            ( id_libro = 'LIB-001'  bi_categ = '1' titulo = 'El alma al cuerpo' autor = 'Nestor Ramírez Segura' editorial = 'ED01' idioma = 'ES' paginas = '350' precio = '15700' moneda = 'CRC' formato = 'PDF' )
            ( id_libro = 'LIB-002'  bi_categ = '2' titulo = 'El coronel' autor = 'JC Segura' editorial = 'ED02' idioma = 'EN' paginas = '176' precio = '275' moneda = 'USD' formato = 'PDF' )
            ( id_libro = 'LIB-003'  bi_categ = '1' titulo = 'ABAP 01' autor = 'SAP' editorial = 'ED054' idioma = 'EN' paginas = '800' precio = '1989' moneda = 'USD' formato = 'PDF' )
            ( id_libro = 'LIB-004'  bi_categ = '2' titulo = 'CDS Core Data Server' autor = 'SAP' editorial = 'ED0054' idioma = 'EN' paginas = '987' precio = '2500' moneda = 'USD' formato = 'PDF' ) ).

            DELETE FROM ztb_libros_92.
            INSERT ztb_libros_92 FROM TABLE @lt_ztb_libros_92.

            SELECT * FROM ztb_libros_92 INTO TABLE  @lt_ztb_libros_92.

            out->write( sy-dbcnt ).
            out->write( 'ztb_libros_92  data inserted successfully!').

            lt_ztb_clnts_lib_92 = VALUE #(
            ( id_cliente = '10' id_libro = 'LIB-001' )
            ( id_cliente = '20' id_libro = 'LIB-001' )
            ( id_cliente = '30' id_libro = 'LIB-001' )
            ( id_cliente = '10' id_libro = 'LIB-004' )
            ( id_cliente = '20' id_libro = 'LIB-004' )
            ( id_cliente = '10' id_libro = 'LIB-003' ) ).

            DELETE FROM ztb_clnts_lib_92.
            INSERT ztb_clnts_lib_92 FROM TABLE @lt_ztb_clnts_lib_92.

            SELECT * FROM ztb_clnts_lib_92 INTO TABLE  @lt_ztb_clnts_lib_92.

            out->write( sy-dbcnt ).
            out->write( 'ztb_clnts_lib_92  data inserted successfully!').
  ENDMETHOD.
ENDCLASS.
