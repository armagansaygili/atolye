object teslimAlma: TteslimAlma
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Teslim Alma'
  ClientHeight = 462
  ClientWidth = 1207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 40
    Top = 40
    Width = 545
    Height = 377
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 256
      Width = 79
      Height = 16
      Caption = #220'r'#252'n Marka:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 298
      Top = 256
      Width = 77
      Height = 16
      Caption = #220'r'#252'n Model:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 50
      Top = 32
      Width = 101
      Height = 25
      Caption = #220'r'#252'n Ekle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 142
      Top = 253
      Width = 115
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 390
      Top = 253
      Width = 115
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 48
      Top = 80
      Width = 457
      Height = 120
      DataSource = DataSource1
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
          Width = 188
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mus_id'
          Visible = False
        end>
    end
    object Button1: TButton
      Left = 430
      Top = 293
      Width = 75
      Height = 25
      Caption = #220'r'#252'n Ekle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 632
    Top = 40
    Width = 537
    Height = 377
    TabOrder = 1
    object Label3: TLabel
      Left = 255
      Top = 232
      Width = 83
      Height = 16
      Caption = #220'r'#252'n Ar'#305'zas'#305':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 30
      Top = 32
      Width = 201
      Height = 25
      Caption = 'Ar'#305'za Kayd'#305' Olu'#351'tur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 34
      Top = 232
      Width = 77
      Height = 16
      Caption = 'Departman:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid2: TDBGrid
      Left = 32
      Top = 80
      Width = 473
      Height = 120
      DataSource = DataSource2
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
      Columns = <
        item
          Expanded = False
          FieldName = 'urun_id'
          Title.Caption = #220'r'#252'n ID'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'urun_marka'
          Title.Caption = 'Ad'#305
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'urun_model'
          Title.Caption = 'Model'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'm_ad'
          Title.Caption = 'M'#252#351'teri Ad'#305
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'm_sad'
          Title.Caption = 'M'#252#351'teri Soyad'#305
          Width = 149
          Visible = True
        end>
    end
    object Button2: TButton
      Left = 408
      Top = 335
      Width = 99
      Height = 25
      Caption = 'EKLE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object ComboBox1: TComboBox
      Left = 118
      Top = 229
      Width = 115
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'B'#39'twin'
        'Quechua'
        'Oxelo'
        'Wedze')
    end
    object CheckListBox1: TCheckListBox
      Left = 344
      Top = 229
      Width = 161
      Height = 100
      ItemHeight = 13
      TabOrder = 3
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from musteri')
    Left = 96
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 136
    Top = 192
  end
  object ADOQuery2: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 736
    Top = 200
    object ADOQuery2musterimus_id: TAutoIncField
      FieldName = 'musteri.mus_id'
      ReadOnly = True
    end
    object ADOQuery2tc_kimlik: TWideStringField
      FieldName = 'tc_kimlik'
      Size = 11
    end
    object ADOQuery2m_ad: TWideStringField
      FieldName = 'm_ad'
      Size = 25
    end
    object ADOQuery2m_sad: TWideStringField
      FieldName = 'm_sad'
      Size = 25
    end
    object ADOQuery2telefon: TWideStringField
      FieldName = 'telefon'
      Size = 11
    end
    object ADOQuery2mail_adresi: TWideStringField
      FieldName = 'mail_adresi'
      Size = 50
    end
    object ADOQuery2urun_id: TIntegerField
      FieldName = 'urun_id'
    end
    object ADOQuery2urunmus_id: TIntegerField
      FieldName = 'urun.mus_id'
    end
    object ADOQuery2urun_marka: TWideStringField
      FieldName = 'urun_marka'
      Size = 255
    end
    object ADOQuery2urun_model: TWideStringField
      FieldName = 'urun_model'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 696
    Top = 200
  end
  object ADOQuery3: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 992
    Top = 288
  end
  object ADOQuery4: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 64
    Top = 472
  end
  object ADOQuery5: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ariza')
    Left = 112
    Top = 472
    object ADOQuery5ucret: TWideStringField
      FieldName = 'ucret'
      Size = 4
    end
  end
end
