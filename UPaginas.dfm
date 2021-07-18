object FPaginas: TFPaginas
  Left = 0
  Top = 0
  Caption = 'FPaginas'
  ClientHeight = 354
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLRelatorio: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    DataSource = DmDados.DsConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    object Grupo: TRLGroup
      Left = 19
      Top = 115
      Width = 737
      Height = 64
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object bndGrupo: TRLBand
        Left = 0
        Top = 1
        Width = 737
        Height = 17
        BandType = btColumnHeader
        object RLDBgrupo: TRLDBText
          Left = 4
          Top = 2
          Width = 67
          Height = 13
          DataSource = DmDados.DsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 18
        Width = 737
        Height = 18
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 4
          Top = 2
          Width = 119
          Height = 14
          AutoSize = False
          DataSource = DmDados.DsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 129
          Top = 2
          Width = 76
          Height = 14
          AutoSize = False
          DataSource = DmDados.DsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 211
          Top = 2
          Width = 72
          Height = 13
          AutoSize = False
          DataSource = DmDados.DsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 289
          Top = 2
          Width = 66
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'qtde'
          DataSource = DmDados.DsConsulta
          DisplayMask = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 368
          Top = 2
          Width = 66
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'preco_litro'
          DataSource = DmDados.DsConsulta
          DisplayMask = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 469
          Top = 2
          Width = 76
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'valor_abastecido'
          DataSource = DmDados.DsConsulta
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 571
          Top = 2
          Width = 61
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'aliquota'
          DataSource = DmDados.DsConsulta
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 645
          Top = 2
          Width = 71
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataFormula = 'imposto'
          DataSource = DmDados.DsConsulta
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 36
        Width = 737
        Height = 18
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 251
          Top = 2
          Width = 104
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'qtde'
          DataSource = DmDados.DsConsulta
          DisplayMask = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'Qtde: '
        end
        object RLDBResult2: TRLDBResult
          Left = 389
          Top = 2
          Width = 156
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'valor_abastecido'
          DataSource = DmDados.DsConsulta
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'R$ '
        end
        object RLDBResult3: TRLDBResult
          Left = 610
          Top = 2
          Width = 109
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'imposto'
          DataSource = DmDados.DsConsulta
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'R$ '
        end
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 38
      Width = 737
      Height = 77
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 304
        Top = 3
        Width = 105
        Height = 22
        Caption = 'Posto ABC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RlOrdem1: TRLLabel
        Left = 3
        Top = 59
        Width = 123
        Height = 15
        Caption = 'Forma de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RlOrdem2: TRLLabel
        Left = 129
        Top = 59
        Width = 78
        Height = 15
        Caption = 'N'#186' do Tanque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Rlordem3: TRLLabel
        Left = 211
        Top = 59
        Width = 76
        Height = 15
        Caption = 'N'#186' da Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 305
        Top = 59
        Width = 36
        Height = 15
        Caption = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 357
        Top = 59
        Width = 87
        Height = 15
        Caption = 'R$ Pre'#231'o / Litro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 451
        Top = 59
        Width = 114
        Height = 15
        Caption = 'R$ Valor Abastecido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 571
        Top = 59
        Width = 61
        Height = 15
        Caption = '% Al'#237'quota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 652
        Top = 59
        Width = 67
        Height = 15
        Caption = 'R$ Imposto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 179
      Width = 737
      Height = 18
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult4: TRLDBResult
        Left = 37
        Top = 2
        Width = 134
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'qtde'
        DataSource = DmDados.DsConsulta
        DisplayMask = '0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Qtde Total: '
      end
      object RLDBResult5: TRLDBResult
        Left = 206
        Top = 2
        Width = 254
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'valor_abastecido'
        DataSource = DmDados.DsConsulta
        DisplayMask = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Total Abastecido: R$ '
      end
      object RLDBResult6: TRLDBResult
        Left = 528
        Top = 2
        Width = 191
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'imposto'
        DataSource = DmDados.DsConsulta
        DisplayMask = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Total Imposto: R$ '
      end
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 197
      Width = 737
      Height = 16
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 672
        Top = 3
        Width = 53
        Height = 10
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 3
        Top = 3
        Width = 220
        Height = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Info = itFullDate
        ParentFont = False
        Text = 'Desenvolvido por Hacson Alexandre              Impresso '
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 136
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 240
    Top = 24
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 504
    Top = 24
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Documento do Word'
    Left = 608
    Top = 24
  end
end
