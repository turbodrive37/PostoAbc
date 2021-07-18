object FrmConsulta: TFrmConsulta
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Abastecimentos'
  ClientHeight = 430
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 731
    Height = 430
    ActivePage = TSConsulta
    Align = alClient
    TabOrder = 0
    object TSConsulta: TTabSheet
      Caption = '&Consultar Registros'
      OnShow = TSConsultaShow
      object PnCima: TPanel
        Left = 0
        Top = 0
        Width = 723
        Height = 110
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 0
          Width = 61
          Height = 16
          Caption = 'N'#186' Tanque'
        end
        object Label2: TLabel
          Left = 121
          Top = 0
          Width = 57
          Height = 16
          Caption = 'N'#186' Bomba'
        end
        object Label3: TLabel
          Left = 236
          Top = 0
          Width = 123
          Height = 16
          Caption = 'Forma de Pagamento'
        end
        object Label4: TLabel
          Left = 8
          Top = 52
          Width = 43
          Height = 16
          Caption = 'Per'#237'odo'
        end
        object cbtanque: TComboBox
          Left = 7
          Top = 22
          Width = 96
          Height = 24
          Style = csDropDownList
          TabOrder = 0
        end
        object cbbomba: TComboBox
          Left = 120
          Top = 22
          Width = 96
          Height = 24
          Style = csDropDownList
          TabOrder = 1
        end
        object cbformapgto: TComboBox
          Left = 235
          Top = 22
          Width = 221
          Height = 24
          Style = csDropDownList
          TabOrder = 2
        end
        object mkinicio: TMaskEdit
          Left = 8
          Top = 74
          Width = 68
          Height = 24
          EditMask = '99/99/99;1;_'
          MaxLength = 8
          TabOrder = 3
          Text = '  /  /  '
        end
        object mkfinal: TMaskEdit
          Left = 120
          Top = 74
          Width = 71
          Height = 24
          EditMask = '99/99/99;1;_'
          MaxLength = 8
          TabOrder = 4
          Text = '  /  /  '
        end
        object BitBtn2: TBitBtn
          Left = 251
          Top = 74
          Width = 104
          Height = 25
          Caption = '&Pesquisar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4
            A4646464020202F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9898985C5C5C000000FFFFFF1C1C1CFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9898985C5C5C0000
            00FFFFFF1C1C1C282828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7BFBFBFBF
            BFBFC3C3C3A0A0A0626262161616FFFFFF1C1C1C101010FFFFFFFFFFFFFFFFFF
            FFFFFFC7C7C77878787C7C7C7474747878787272726666660000000000003636
            36101010FFFFFFFFFFFFFFFFFFEFEFEFA8A8A82C2C2C000000545454ABABAB69
            6969FFFFFF181818000000B8B8B8080808FFFFFFFFFFFFFFFFFFF3F3F3545454
            0000002C2C2C848484D0D0D0C0C0C0D0D0D03A3A3A464646828282000000FFFF
            FFFFFFFFFFFFFFFFFFFFB8B8B8000000242424D8D8D8F0F0F0E4E4E4E4E4E4E6
            E6E6E0E0E0AEAEAE0000009C9C9CFFFFFFFFFFFFFFFFFFFFFFFF444444000000
            FFFFFFE0E0E0E4E4E4E4E4E4E4E4E4E2E2E2E4E4E4E0E0E0585858000000FFFF
            FFFFFFFFFFFFFFFFFFFF000000949494E8E8E8E8E8E8B8B8B8BCBCBCB2B2B2C8
            C8C8E4E4E8E4E4E4F6F6F6000000707070FFFFFFFFFFFFFFFFFF000000848484
            F2F2F2B8B8B8C0C0C0B0B0B0FFFFFFFFFFFFC4C498E4E4E8E8E8E80000008080
            80FFFFFFFFFFFFFFFFFF000000969696D8D8D8BABABAB0B0B0FFFFFFFFFFFFFF
            FFFFDDDDB5E2E2E6F6F6F6000000707070FFFFFFFFFFFFFFFFFF909090000000
            FFFFFFDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFD7D7ABF8F8FC5A5A5A000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF141414444444FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFB0B0B0000000DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0404046A6A6AFFFFFFFFFFFFFFFFFFB9B959F3F3FB000000DBDBDBFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7979790404047575759F9F9F50
            50581A1A1ADBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 5
          OnClick = BitBtn2Click
        end
        object BitBtn4: TBitBtn
          Left = 356
          Top = 74
          Width = 133
          Height = 25
          Caption = '&Limpar Pesquisa'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFCFFFCFAFFFCFAFFFDFBFFFEFCFCFCFCFEFEFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F6F3E8E7DED7D683C5D06BC7D742
            AEC528B6CE7DC1CFF3EAE8EDEDEDF4F4F4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
            FFF2EF7BC9D54CD7E931BAD118D4EA2BCBE02AC2D931C0D6F8E6E4E9E9E9F0F0
            F0F6F6F6FEFEFEFFFFFFFFFFFFFFFFFF4ED2E153D7EA51E1F361DDEC40D0E40E
            CCE24FD0E31DCAE0D3E1E6FDF9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFD5F3F7
            69E4F24CD6E661DAED5AE9F970DCEC23D4E911C4DD20D2E6B4DAE5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF5F769E7F490EEFA59DEF160E7F635
            D1E719CCE219D0E6ADDAE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFB7EBF169EAF97EEDFB5EE8F73CD4EA2EDBEF1DD9EDCAE9F0FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90E2EB70EEFC6EF6FF4E
            EFFE30CADB4A5D7FF9E2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF98ECF46498B2857898943C6A6870979CD6E1FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97859F6C
            A0BA5EE9F646EAF66AD1DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFCDFAFD8BF2F9289EC40074BE5180A5FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF77A3C2238ACD0F7DC1A2BAC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5D6E1459DD541A0DD207BB5FFFF
            FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5096C3609FC6529AC887B1CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE8EE3181B361A7D36EA6
            C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFDA9C5D6FFFEFEFFFFFFFFFFFFFFFFFF}
          TabOrder = 6
          TabStop = False
          OnClick = BitBtn4Click
        end
      end
      object PnBaixo: TPanel
        Left = 0
        Top = 110
        Width = 723
        Height = 289
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 721
          Height = 268
          Align = alClient
          DataSource = DmDados.DsConsulta
          DrawingStyle = gdsClassic
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          OnKeyDown = DBGrid1KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_ABASTECE'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NR_TANQUE'
              Title.Caption = 'N'#186' Tanque'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NR_BOMBA'
              Title.Caption = 'N'#186' Bomba'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_LITRO'
              Title.Caption = 'R$ Pre'#231'o Litro'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ABASTECIDO'
              Title.Caption = 'R$ Valor Abastecido'
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALIQUOTA'
              Title.Caption = '% Al'#237'quota'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPOSTO'
              Title.Caption = 'R$ Imposto Pago'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORMA_PGTO'
              Title.Caption = 'Forma de Pgto'
              Width = 152
              Visible = True
            end>
        end
        object SbRodape: TStatusBar
          Left = 1
          Top = 269
          Width = 721
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Panels = <
            item
              Text = 'F1 - Novo'
              Width = 100
            end
            item
              Text = 'F2 - Alterar'
              Width = 100
            end
            item
              Text = 'F3 - Excluir'
              Width = 100
            end
            item
              Width = 50
            end>
          UseSystemFont = False
        end
      end
    end
    object TSCadastro: TTabSheet
      Caption = 'Gravar &Registro'
      ImageIndex = 1
      OnShow = TSCadastroShow
      ExplicitLeft = 8
      ExplicitTop = 31
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label5: TLabel
        Left = 16
        Top = 8
        Width = 61
        Height = 16
        Caption = 'N'#186' Tanque'
      end
      object Label6: TLabel
        Left = 303
        Top = 9
        Width = 57
        Height = 16
        Caption = 'N'#186' Bomba'
      end
      object Label7: TLabel
        Left = 17
        Top = 120
        Width = 123
        Height = 16
        Caption = 'Forma de Pagamento'
      end
      object Label8: TLabel
        Left = 15
        Top = 61
        Width = 114
        Height = 16
        Caption = 'Data Abastecimento'
      end
      object Label9: TLabel
        Left = 176
        Top = 61
        Width = 65
        Height = 16
        Caption = 'Quantidade'
      end
      object Label10: TLabel
        Left = 471
        Top = 9
        Width = 89
        Height = 16
        Caption = 'R$ Pre'#231'o / Litro'
      end
      object lbpreco: TLabel
        Left = 471
        Top = 34
        Width = 28
        Height = 16
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = []
      end
      object Label11: TLabel
        Left = 429
        Top = 61
        Width = 46
        Height = 16
        Caption = 'Al'#237'quota'
      end
      object Label12: TLabel
        Left = 297
        Top = 61
        Width = 115
        Height = 16
        Caption = 'R$ Valor Abastecido'
      end
      object lbvalor: TLabel
        Left = 297
        Top = 86
        Width = 28
        Height = 16
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = []
      end
      object Label15: TLabel
        Left = 551
        Top = 61
        Width = 94
        Height = 16
        Caption = 'Imposto a Pagar'
      end
      object lbimposto: TLabel
        Left = 551
        Top = 86
        Width = 28
        Height = 16
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = []
      end
      object lbcombustivel: TLabel
        Left = 130
        Top = 34
        Width = 155
        Height = 21
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = []
      end
      object CbCadTanque: TComboBox
        Left = 15
        Top = 30
        Width = 98
        Height = 24
        Style = csDropDownList
        TabOrder = 0
        OnChange = CbCadTanqueChange
      end
      object CbCadBomba: TComboBox
        Left = 303
        Top = 31
        Width = 98
        Height = 24
        Style = csDropDownList
        TabOrder = 1
      end
      object CbCadPgto: TComboBox
        Left = 16
        Top = 142
        Width = 222
        Height = 24
        Style = csDropDownList
        TabOrder = 5
      end
      object MkDtCad: TMaskEdit
        Left = 15
        Top = 83
        Width = 69
        Height = 24
        EditMask = '99/99/99;1;_'
        MaxLength = 8
        TabOrder = 2
        Text = '  /  /  '
      end
      object edqtde: TEdit
        Left = 176
        Top = 83
        Width = 89
        Height = 24
        TabOrder = 3
        Text = '0,00'
        OnExit = edqtdeExit
        OnKeyPress = edqtdeKeyPress
      end
      object edaliquota: TEdit
        Left = 429
        Top = 83
        Width = 89
        Height = 24
        TabOrder = 4
        Text = '0,00'
        OnExit = edaliquotaExit
        OnKeyPress = edqtdeKeyPress
      end
      object BitBtn1: TBitBtn
        Left = 273
        Top = 193
        Width = 114
        Height = 25
        Caption = '&Gravar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 6
        OnClick = BitBtn1Click
      end
    end
  end
end
