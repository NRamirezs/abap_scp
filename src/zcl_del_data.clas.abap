CLASS zcl_del_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_del_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.



            DELETE FROM ztb_acc_categ_92.


            DELETE FROM ztb_catego_92.

            DELETE FROM ztb_clientes_92.


            DELETE FROM ztb_libros_92.


            DELETE FROM ztb_clnts_lib_92.

             out->write( 'deleted successfully!').

  ENDMETHOD.
ENDCLASS.
