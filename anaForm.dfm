object atolyeForm: TatolyeForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'At'#246'lye'
  ClientHeight = 604
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  PopupMode = pmExplicit
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 56
    Top = 24
    Width = 489
    Height = 553
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 160
      Height = 25
      Caption = 'M'#252#351'teri Listesi:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 185
      Width = 147
      Height = 25
      Caption = 'Bak'#305'm Listesi:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 359
      Width = 172
      Height = 25
      Caption = 'Bak'#305'm '#304#351'lemleri:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 48
      Width = 441
      Height = 113
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'm_ad'
          Title.Caption = 'Ad'#305
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'm_sad'
          Title.Caption = 'Soyad'#305
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefon'
          Title.Caption = 'Telefon'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mail_adresi'
          Title.Caption = 'Email'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mus_id'
          Visible = False
        end>
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 216
      Width = 441
      Height = 120
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid2CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'urun.urun_id'
          Title.Caption = #220'r'#252'n ID'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'urun_marka'
          Title.Caption = 'Marka'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'urun_model'
          Title.Caption = 'Model'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 't_alma_tarihi'
          Title.Caption = 'T. Alma Tarihi'
          Width = 97
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 16
      Top = 390
      Width = 441
      Height = 120
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'bakim_islem'
          Title.Caption = 'Bak'#305'm '#304#351'lemleri'
          Width = 368
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ucret'
          Title.Caption = #220'cret'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'urun.urun_id'
          Visible = False
        end>
    end
  end
  object Panel1: TPanel
    Left = 568
    Top = 24
    Width = 281
    Height = 249
    TabOrder = 1
    object Label7: TLabel
      Left = 172
      Top = 73
      Width = 55
      Height = 25
      Caption = '*****'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 24
      Top = 14
      Width = 102
      Height = 29
      Caption = 'Raporlar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 73
      Width = 142
      Height = 25
      Caption = 'G'#252'nl'#252'k kazan'#231':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 129
      Width = 147
      Height = 25
      Caption = 'Haftal'#305'k kazan'#231':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 24
      Top = 185
      Width = 120
      Height = 25
      Caption = 'Ayl'#305'k kazan'#231':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 172
      Top = 185
      Width = 55
      Height = 25
      Caption = '*****'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 172
      Top = 129
      Width = 55
      Height = 25
      Caption = '*****'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object menu: TMainMenu
    Top = 65528
    object as1: TMenuItem
      Caption = #304#351'lemler'
      RadioItem = True
      object eslimAl1: TMenuItem
        Caption = 'Teslim Al'
        OnClick = eslimAl1Click
      end
      object RandevuVer1: TMenuItem
        Caption = 'Randevu Ver'
        OnClick = RandevuVer1Click
      end
    end
    object Mteri1: TMenuItem
      Caption = 'M'#252#351'teri'
      object MteriAra1: TMenuItem
        Caption = 'Arama'
        OnClick = MteriAra1Click
      end
      object Ekle1: TMenuItem
        Caption = 'Ekle'
        OnClick = Ekle1Click
      end
    end
    object Personel1: TMenuItem
      Caption = 'Personel'
      object PersonelListesi1: TMenuItem
        Caption = 'Personel Listesi'
        OnClick = PersonelListesi1Click
      end
      object Ekle2: TMenuItem
        Caption = 'Personel Ekle'
        OnClick = Ekle2Click
      end
      object ifreDeitir1: TMenuItem
        Caption = #350'ifre De'#287'i'#351'tir'
        OnClick = ifreDeitir1Click
      end
    end
    object k1: TMenuItem
      Caption = #199#305'k'#305#351
      OnClick = k1Click
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from musteri')
    Left = 152
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 216
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 200
    Top = 304
  end
  object ADOQuery2: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM musteri INNER JOIN (urun INNER JOIN (personel INNE' +
        'R JOIN bakim ON personel.per_id = bakim.per_id) ON urun.urun_id ' +
        '= bakim.urun_id) ON musteri.mus_id = urun.mus_id')
    Left = 136
    Top = 304
  end
  object ADOQuery3: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM musteri INNER JOIN (urun INNER JOIN (personel INNE' +
        'R JOIN bakim ON personel.per_id = bakim.per_id) ON urun.urun_id ' +
        '= bakim.urun_id) ON musteri.mus_id = urun.mus_id')
    Left = 136
    Top = 496
    object WideStringField1: TWideStringField
      FieldName = 'kullanici_adi'
      Size = 25
    end
    object WideStringField2: TWideStringField
      FieldName = 'urun_marka'
      Size = 255
    end
    object WideStringField3: TWideStringField
      FieldName = 'urun_model'
      Size = 255
    end
    object WideStringField4: TWideStringField
      FieldName = 'bakim_islem'
      Size = 255
    end
    object WideStringField5: TWideStringField
      FieldName = 'ucret'
      Size = 4
    end
    object DateTimeField1: TDateTimeField
      FieldName = 't_alma_tarihi'
    end
    object ADOQuery3urunurun_id: TAutoIncField
      FieldName = 'urun.urun_id'
      ReadOnly = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 200
    Top = 496
  end
  object ADOQuery4: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM musteri INNER JOIN (urun INNER JOIN (personel INNE' +
        'R JOIN bakim ON personel.per_id = bakim.per_id) ON urun.urun_id ' +
        '= bakim.urun_id) ON musteri.mus_id = urun.mus_id')
    Left = 80
    Top = 488
    object WideStringField6: TWideStringField
      FieldName = 'kullanici_adi'
      Size = 25
    end
    object WideStringField7: TWideStringField
      FieldName = 'urun_marka'
      Size = 255
    end
    object WideStringField8: TWideStringField
      FieldName = 'urun_model'
      Size = 255
    end
    object WideStringField9: TWideStringField
      FieldName = 'bakim_islem'
      Size = 255
    end
    object WideStringField10: TWideStringField
      FieldName = 'ucret'
      Size = 4
    end
    object DateTimeField2: TDateTimeField
      FieldName = 't_alma_tarihi'
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'urun.urun_id'
      ReadOnly = True
    end
  end
  object ADOQuery7: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'teslim_tarihi'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
      end>
    SQL.Strings = (
      
        'select sum(ucret) as ucret from bakim where teslim_tarihi betwee' +
        'n date() and date()-30')
    Left = 809
    Top = 200
    object ADOQuery7ucret: TFloatField
      FieldName = 'ucret'
    end
  end
  object ADOQuery5: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'teslim_tarihi'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
      end>
    SQL.Strings = (
      
        'select sum(ucret) as ucret from bakim where teslim_tarihi betwee' +
        'n date() and date()-1')
    Left = 809
    Top = 144
    object ADOQuery5ucret: TFloatField
      FieldName = 'ucret'
    end
  end
  object ADOQuery6: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(ucret) as ucret from bakim where t_alma_tarihi betwee' +
        'n date() and date()-1')
    Left = 809
    Top = 88
    object ADOQuery6ucret: TFloatField
      FieldName = 'ucret'
    end
  end
end
