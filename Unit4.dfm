object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 605
  Top = 236
  Height = 203
  Width = 437
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2210010454_m.yusrilmaulana_db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\libmysql.dll'
    Left = 40
    Top = 24
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 120
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 120
    Top = 80
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 168
    Top = 24
  end
  object Zuser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from user')
    Params = <>
    Left = 216
    Top = 24
  end
  object Zsupplier: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from supplier')
    Params = <>
    Left = 264
    Top = 24
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 168
    Top = 80
  end
  object dsuser: TDataSource
    DataSet = Zuser
    Left = 216
    Top = 80
  end
  object dssupplier: TDataSource
    DataSet = Zsupplier
    Left = 264
    Top = 80
  end
  object dskustomer: TDataSource
    DataSet = Zkustomer
    Left = 320
    Top = 80
  end
  object Zkustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select*from kustomer')
    Params = <>
    Left = 320
    Top = 24
  end
end
