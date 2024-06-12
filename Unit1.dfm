object Form1: TForm1
  Left = 388
  Top = 160
  Width = 766
  Height = 540
  Caption = 'DASHBOARD'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 64
    Top = 24
    object fi1: TMenuItem
      Caption = 'FILE'
      object Login1: TMenuItem
        Caption = 'LOGIN'
        OnClick = Login1Click
      end
      object Logout1: TMenuItem
        Caption = 'LOGOUT'
      end
    end
    object DataMaster1: TMenuItem
      Caption = 'DATAMASTER'
      object Kategori1: TMenuItem
        Caption = 'KATEGORI'
        OnClick = Kategori1Click
      end
      object Satuan1: TMenuItem
        Caption = 'SATUAN'
        OnClick = Satuan1Click
      end
      object Suplier1: TMenuItem
        Caption = 'SUPPLIER'
        OnClick = Suplier1Click
      end
      object Kustomer1: TMenuItem
        Caption = 'KUSTOMER'
        OnClick = Kustomer1Click
      end
    end
    object ransaksi1: TMenuItem
      Caption = 'TRANSAKSI'
      object pENJUALAN1: TMenuItem
        Caption = 'PENJUALAN'
      end
      object Pembelian1: TMenuItem
        Caption = 'PEMBELIAN'
      end
    end
    object Laporan1: TMenuItem
      Caption = 'LAPORAN'
      object LaporanPenjualan1: TMenuItem
        Caption = 'LAPORAN PENJUALAN'
      end
      object LaporanStokBarang1: TMenuItem
        Caption = 'LAPORAN  STOK BARANG'
      end
      object LaporanBarang1: TMenuItem
        Caption = 'LAPORAN BARANG'
      end
    end
  end
end
