object FRelatorios: TFRelatorios
  Left = 0
  Top = 0
  Caption = 'Emiss'#227'o de Relat'#243'rios'
  ClientHeight = 270
  ClientWidth = 622
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
  object PnCima: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 270
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 61
      Height = 16
      Caption = 'N'#186' Tanque'
    end
    object Label2: TLabel
      Left = 121
      Top = 3
      Width = 57
      Height = 16
      Caption = 'N'#186' Bomba'
    end
    object Label3: TLabel
      Left = 236
      Top = 3
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
      Top = 25
      Width = 96
      Height = 24
      Style = csDropDownList
      TabOrder = 0
    end
    object cbbomba: TComboBox
      Left = 120
      Top = 25
      Width = 96
      Height = 24
      Style = csDropDownList
      TabOrder = 1
    end
    object cbformapgto: TComboBox
      Left = 235
      Top = 25
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
      Left = 171
      Top = 201
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
      Left = 276
      Top = 201
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
    object RgOrdem: TRadioGroup
      Left = 7
      Top = 113
      Width = 602
      Height = 46
      Caption = 'Organizar dados por'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Data'
        'Tanque'
        'Bomba'
        'Forma de Pagamento')
      TabOrder = 7
    end
  end
end
