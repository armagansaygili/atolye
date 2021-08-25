object musAra: TmusAra
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'M'#252#351'teri Ara'
  ClientHeight = 356
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 24
    Top = 28
    Width = 57
    Height = 13
    Caption = 'M'#252#351'teri Ad'#305':'
  end
  object Label1: TLabel
    Left = 23
    Top = 55
    Width = 74
    Height = 13
    Caption = 'M'#252#351'teri Soyad'#305':'
  end
  object Label2: TLabel
    Left = 23
    Top = 141
    Width = 53
    Height = 13
    Caption = 'T.C. Kimlik:'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 24
    Top = 168
    Width = 57
    Height = 13
    Caption = 'M'#252#351'teri Ad'#305':'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 23
    Top = 203
    Width = 74
    Height = 13
    Caption = 'M'#252#351'teri Soyad'#305':'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 24
    Top = 234
    Width = 40
    Height = 13
    Caption = 'Telefon:'
    FocusControl = DBEdit4
  end
  object Label7: TLabel
    Left = 26
    Top = 263
    Width = 55
    Height = 13
    Caption = 'Mail Adresi:'
    FocusControl = DBEdit5
  end
  object Edit4: TEdit
    Left = 103
    Top = 25
    Width = 147
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 193
    Top = 83
    Width = 57
    Height = 25
    Caption = 'Ara'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 103
    Top = 52
    Width = 147
    Height = 21
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 103
    Top = 138
    Width = 147
    Height = 21
    DataField = 'tc_kimlik'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 103
    Top = 165
    Width = 147
    Height = 21
    DataField = 'm_ad'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 103
    Top = 200
    Width = 147
    Height = 21
    DataField = 'm_sad'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 103
    Top = 231
    Width = 147
    Height = 21
    DataField = 'telefon'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 103
    Top = 260
    Width = 147
    Height = 21
    DataField = 'mail_adresi'
    DataSource = DataSource1
    TabOrder = 7
  end
  object Button2: TButton
    Left = 103
    Top = 296
    Width = 64
    Height = 25
    Caption = 'G'#252'ncelle'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 296
    Width = 66
    Height = 25
    Caption = 'Sil'
    TabOrder = 9
    OnClick = Button3Click
  end
  object ADOQuery1: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from musteri')
    Left = 384
    Top = 187
    object ADOQuery1mus_id: TAutoIncField
      FieldName = 'mus_id'
      ReadOnly = True
    end
    object ADOQuery1tc_kimlik: TWideStringField
      FieldName = 'tc_kimlik'
      Size = 11
    end
    object ADOQuery1m_ad: TWideStringField
      FieldName = 'm_ad'
      Size = 25
    end
    object ADOQuery1m_sad: TWideStringField
      FieldName = 'm_sad'
      Size = 25
    end
    object ADOQuery1telefon: TWideStringField
      FieldName = 'telefon'
      Size = 11
    end
    object ADOQuery1mail_adresi: TWideStringField
      FieldName = 'mail_adresi'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 312
    Top = 187
  end
  object ADOQuery2: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    Parameters = <>
    Left = 384
    Top = 136
  end
end
