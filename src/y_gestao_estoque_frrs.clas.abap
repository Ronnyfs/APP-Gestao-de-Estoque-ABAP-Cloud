CLASS y_gestao_estoque_frrs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

   PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS y_gestao_estoque_frrs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "Crio tipo customizável.

    TYPES: BEGIN OF  ty_str_produtos,
             id        TYPE i,
             descricao TYPE c LENGTH 50,
             estoque   TYPE i,
             vendas    TYPE i,
             nome      TYPE c LENGTH 50,
             valor     TYPE /dmo/price,
           END OF ty_str_produtos.


    TYPES ty_tb_produtos TYPE TABLE OF ty_str_produtos WITH DEFAULT KEY.

    "DATA: ls_produtos TYPE ty_str_produtos,

    " lt_produtos TYPE ty_tb_produtos.

    "Crio a tabela e insiro valores usando tipo customizado.

    DATA(lt_produtos) = VALUE ty_tb_produtos( (
                                              id = 1
                                              descricao = 'Eletrolux'
                                              estoque = 100
                                              vendas = 9
                                              nome = 'Geladeira'
                                              valor = 500
                                                  )
                                                  (
                                              id = 2
                                              descricao = 'Britania'
                                              estoque = 9
                                              vendas = 20
                                              nome = 'Fogão'
                                              valor = 250
                                                  )
                                                  (
                                              id = 3
                                              descricao = 'Storm'
                                              estoque = 2
                                              vendas = 1
                                              nome = 'Ventilador'
                                              valor = 1000
                                                  ) ).

    APPEND VALUE #( id = 4 descricao = 'Philips' estoque = 50 vendas = 15 nome = 'Fritadeira Elétrica' valor = 350 ) TO lt_produtos.
    APPEND VALUE #( id = 5 descricao = 'LG' estoque = 200 vendas = 50 nome = 'Ar-condicionado' valor = 2000 ) TO lt_produtos.
    APPEND VALUE #( id = 6 descricao = 'Midea' estoque = 120 vendas = 20 nome = 'Ventilador' valor = 150 ) TO lt_produtos.
    APPEND VALUE #( id = 7 descricao = 'Panasonic' estoque = 30 vendas = 5 nome = 'Aspirador de pó' valor = 450 ) TO lt_produtos.
    APPEND VALUE #( id = 8 descricao = 'Consul' estoque = 80 vendas = 12 nome = 'Lavadora de roupas' valor = 1200 ) TO lt_produtos.
    APPEND VALUE #( id = 9 descricao = 'Samsung' estoque = 60 vendas = 10 nome = 'Notebook' valor = 3500 ) TO lt_produtos.
    APPEND VALUE #( id = 10 descricao = 'Apple' estoque = 90 vendas = 35 nome = 'iPhone' valor = 5000 ) TO lt_produtos.
    APPEND VALUE #( id = 11 descricao = 'Sony' estoque = 40 vendas = 20 nome = 'PlayStation 5' valor = 4500 ) TO lt_produtos.
    APPEND VALUE #( id = 12 descricao = 'Xiaomi' estoque = 200 vendas = 80 nome = 'Smartphone' valor = 1500 ) TO lt_produtos.
    APPEND VALUE #( id = 13 descricao = 'Lenovo' estoque = 100 vendas = 30 nome = 'Tablet' valor = 1200 ) TO lt_produtos.
    APPEND VALUE #( id = 14 descricao = 'Philips' estoque = 70 vendas = 22 nome = 'Cafeteira' valor = 250 ) TO lt_produtos.
    APPEND VALUE #( id = 15 descricao = 'Samsung' estoque = 50 vendas = 18 nome = 'Fone de ouvido' valor = 350 ) TO lt_produtos.
    APPEND VALUE #( id = 16 descricao = 'JBL' estoque = 80 vendas = 25 nome = 'Caixa de som' valor = 500 ) TO lt_produtos.
    APPEND VALUE #( id = 17 descricao = 'Dell' estoque = 90 vendas = 40 nome = 'Monitor' valor = 1000 ) TO lt_produtos.
    APPEND VALUE #( id = 18 descricao = 'Bosch' estoque = 60 vendas = 28 nome = 'Furadeira' valor = 350 ) TO lt_produtos.
    APPEND VALUE #( id = 19 descricao = 'Samsung' estoque = 110 vendas = 45 nome = 'Máquina de lavar' valor = 1800 ) TO lt_produtos.
    APPEND VALUE #( id = 20 descricao = 'Electrolux' estoque = 80 vendas = 37 nome = 'Secadora de roupas' valor = 1500 ) TO lt_produtos.
    APPEND VALUE #( id = 21 descricao = 'Acer' estoque = 50 vendas = 15 nome = 'Desktop' valor = 2500 ) TO lt_produtos.
    APPEND VALUE #( id = 22 descricao = 'Microsoft' estoque = 40 vendas = 8 nome = 'Teclado' valor = 150 ) TO lt_produtos.
    APPEND VALUE #( id = 23 descricao = 'Oster' estoque = 120 vendas = 50 nome = 'Batedeira' valor = 600 ) TO lt_produtos.
    APPEND VALUE #( id = 24 descricao = 'Smeg' estoque = 70 vendas = 18 nome = 'Geladeira Retro' valor = 4500 ) TO lt_produtos.
    APPEND VALUE #( id = 25 descricao = 'Braun' estoque = 55 vendas = 10 nome = 'Barbeador' valor = 300 ) TO lt_produtos.
    APPEND VALUE #( id = 26 descricao = 'Nokia' estoque = 150 vendas = 60 nome = 'Celular Básico' valor = 300 ) TO lt_produtos.
    APPEND VALUE #( id = 27 descricao = 'Bosch' estoque = 90 vendas = 38 nome = 'Máquina de café' valor = 800 ) TO lt_produtos.
    APPEND VALUE #( id = 28 descricao = 'Sharp' estoque = 110 vendas = 42 nome = 'Forno de micro-ondas' valor = 500 ) TO lt_produtos.
    APPEND VALUE #( id = 29 descricao = 'Canon' estoque = 70 vendas = 25 nome = 'Câmera fotográfica' valor = 1500 ) TO lt_produtos.
    APPEND VALUE #( id = 30 descricao = 'GoPro' estoque = 40 vendas = 18 nome = 'Câmera de ação' valor = 2000 ) TO lt_produtos.
    APPEND VALUE #( id = 31 descricao = 'Harman Kardon' estoque = 60 vendas = 20 nome = 'Soundbar' valor = 1200 ) TO lt_produtos.



    out->write( |--------------GESTÃO DE VENDAS E ESTOQUE------------------------| ).
    out->write( |-                                                               -| ).

    DATA(lv_index) = sy-tabix.

    DATA(lv_marcas) = VALUE string(  ).

    DATA(lv_linhas) = lines( lt_produtos ).

    DATA(lv_campeoes) = VALUE string(  ).

    DATA(lv_estoque_atual) = VALUE string(  ).

    out->write( 'Esses são nossos produtos e preços  ' ).
    LOOP AT lt_produtos ASSIGNING FIELD-SYMBOL(<fs_produtos>).

      IF <fs_produtos>-vendas < 10.

        DATA(lv_novo_valor) = <fs_produtos>-valor * ( 90 / 100 ).

        out->write( '                                                               -' ).
        out->write( '----------------------------------------------------------------' ).
        out->write( |{ <fs_produtos>-nome },De { <fs_produtos>-valor },Para: { lv_novo_valor }| ).

      ELSE.

        out->write( '                                                               -' ).
        out->write( '----------------------------------------------------------------' ).
        out->write( |{ <fs_produtos>-nome }, { <fs_produtos>-valor }| ).

      ENDIF.

    ENDLOOP.

    out->write( '                                                               -' ).
    out->write( |é necessário renovar estoque de:| ).
    out->write( '                                                               -' ).

    DATA(lv_qnt_total1) = REDUCE i( INIT lv_qnt1 = 0
                                    FOR <fs_prd> IN lt_produtos WHERE ( estoque <= 10 ) NEXT lv_qnt1 += 1 ).

    lv_index = 0.

    LOOP AT lt_produtos ASSIGNING <fs_produtos> WHERE estoque <= 10.
      lv_index += 1.

      IF lv_index < lv_qnt_total1.

        lv_estoque_atual = lv_estoque_atual &&  |Estoque de { <fs_produtos>-nome } = { <fs_produtos>-estoque } , | .

      ELSEIF lv_qnt_total1 = lv_index.

        lv_estoque_atual = lv_estoque_atual &&  |Estoque de { <fs_produtos>-nome } = { <fs_produtos>-estoque } . | .


      ENDIF.

    ENDLOOP.

    out->write( lv_estoque_atual ).
    out->write( '                                                               -' ).


    out->write( 'Os campeões de vendas são!!!' ).

    out->write( '                                                               -' ).

    "Estou utilizando a variável lv_qnt_total com Reduce para contar a de registros(linhas) na tabela que tem venda maior que 5 .

    DATA(lv_qnt_total) = REDUCE i( INIT lv_qnt TYPE i
                                    FOR <fs_prd> IN lt_produtos WHERE ( vendas > 5 ) NEXT lv_qnt += 1 ).

    " zerando o contador.

    lv_index = 0.

    "Através desse loop busco na tabela produtos onde há venda maior do que 5.

    LOOP AT lt_produtos ASSIGNING <fs_produtos> WHERE vendas > 5.

      "A cada consulta bem sucedida incrementa + 1 ao índice da tabela.

      lv_index += 1.

      "Consulta se o item filtrado é o menor que a quantidade  total usando N° de index e N° de linhas.

      IF lv_index < lv_qnt_total.

        lv_campeoes = lv_campeoes && |{ <fs_produtos>-nome }, |.

        "Consulta se o item filtrado é o último usando N° de index e N° de linhas.

      ELSEIF lv_index = lv_qnt_total.

        lv_campeoes = lv_campeoes && |{ <fs_produtos>-nome }. |.

      ENDIF.

    ENDLOOP.
    "Exibe os itens da tabela que tem venda maior que 5.

    out->write( lv_campeoes ).

    out->write( '                                                               -' ).
    out->write( '                                                               -' ).
    out->write( |Essas são as marcas que trabalhamos!     | ).
    out->write( '                                                               -' ).


    LOOP AT lt_produtos ASSIGNING <fs_produtos>.

      lv_index = sy-tabix.

      IF lv_index < lv_linhas.

        lv_marcas = lv_marcas && |{ <fs_produtos>-descricao }, |.

      ELSE.

        lv_marcas = lv_marcas && |{ <fs_produtos>-descricao }. |.

      ENDIF.

    ENDLOOP.

    out->write(  |{ lv_marcas } | ).
    out->write( '                                                               -' ).
    out->write( '                                                               -' ).
    out->write( | o Número de  produtos ofertados!!, { lines( lt_produtos ) }.| ).

    SORT lt_produtos BY nome.
    LOOP AT lt_produtos ASSIGNING <fs_produtos>.
      out->write( |{ <fs_produtos>-nome }| ).
      out->write( '                                                               -' ).
    ENDLOOP.




  ENDMETHOD.
ENDCLASS.
