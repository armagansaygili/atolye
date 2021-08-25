object personelForm: TpersonelForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Personel'
  ClientHeight = 285
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 222
    Width = 40
    Height = 13
    Caption = 'Telefon:'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 251
    Top = 222
    Width = 55
    Height = 13
    Caption = 'Mail Adresi:'
    FocusControl = DBEdit2
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 35
    Width = 817
    Height = 165
    BiDiMode = bdLeftToRight
    Ctl3D = True
    DataSource = DataSource1
    DragCursor = crDefault
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    ParentBiDiMode = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'per_id'
        Title.Alignment = taCenter
        Title.Caption = 'Personel No'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kullanici_adi'
        Title.Alignment = taCenter
        Title.Caption = 'Kullan'#305'c'#305' Ad'#305
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_ad'
        Title.Alignment = taCenter
        Title.Caption = 'Personel Ad'#305
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_sad'
        Title.Alignment = taCenter
        Title.Caption = 'Personel Soyad'#305
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefon'
        Title.Caption = 'Telefon'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mail_adresi'
        Title.Caption = 'Mail Adresi'
        Width = 313
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 656
    Top = 217
    Width = 97
    Height = 25
    Caption = 'G'#252'ncelle'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 760
    Top = 217
    Width = 97
    Height = 25
    Caption = 'Sil'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 219
    Width = 147
    Height = 21
    DataField = 'telefon'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 312
    Top = 219
    Width = 161
    Height = 21
    DataField = 'mail_adresi'
    DataSource = DataSource1
    TabOrder = 4
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from personel')
    Left = 224
    Top = 344
    object ADOQuery1per_id: TAutoIncField
      FieldName = 'per_id'
      ReadOnly = True
    end
    object ADOQuery1kullanici_adi: TWideStringField
      FieldName = 'kullanici_adi'
      Size = 10
    end
    object ADOQuery1p_ad: TWideStringField
      FieldName = 'p_ad'
      Size = 25
    end
    object ADOQuery1p_sad: TWideStringField
      FieldName = 'p_sad'
      Size = 25
    end
    object ADOQuery1mail_adresi: TWideStringField
      FieldName = 'mail_adresi'
      Size = 50
    end
    object ADOQuery1telefon: TWideStringField
      FieldName = 'telefon'
      Size = 11
    end
    object ADOQuery1kullanici_sifre: TWideStringField
      FieldName = 'kullanici_sifre'
      Size = 16
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 328
  end
  object ADOQuery2: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    Parameters = <>
    Left = 184
    Top = 288
  end
end
