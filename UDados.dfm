object DmDados: TDmDados
  OldCreateOrder = False
  Height = 291
  Width = 423
  object QExecutor: TFDQuery
    Connection = Fire_Conexao
    Left = 208
    Top = 144
  end
  object DsConsulta: TDataSource
    DataSet = QListar
    Left = 56
    Top = 144
  end
  object Fire_Conexao: TFDConnection
    Params.Strings = (
      'Protocol=Local'
      'DriverID=FB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\Teste_pratico\BDfortes.FDB'
      'Server=127.0.0.1')
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Teste_pratico\fbclient.dll'
    Left = 184
    Top = 32
  end
  object QListar: TFDQuery
    AfterOpen = QListarAfterOpen
    Connection = Fire_Conexao
    SQL.Strings = (
      'select * from abastecimentos')
    Left = 128
    Top = 144
  end
end
