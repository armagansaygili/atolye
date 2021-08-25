object perEkle: TperEkle
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Personel Ekle'
  ClientHeight = 243
  ClientWidth = 312
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
  object Label1: TLabel
    Left = 40
    Top = 27
    Width = 59
    Height = 13
    Caption = 'Kullan'#305'c'#305' Ad'#305':'
  end
  object Label2: TLabel
    Left = 40
    Top = 54
    Width = 66
    Height = 13
    Caption = 'Kullan'#305'c'#305' '#350'ifre:'
  end
  object Label3: TLabel
    Left = 40
    Top = 81
    Width = 63
    Height = 13
    Caption = 'Personel Ad'#305':'
  end
  object Label4: TLabel
    Left = 40
    Top = 108
    Width = 80
    Height = 13
    Caption = 'Personel Soyad'#305':'
  end
  object Label5: TLabel
    Left = 40
    Top = 135
    Width = 40
    Height = 13
    Caption = 'Telefon:'
  end
  object Label7: TLabel
    Left = 40
    Top = 162
    Width = 55
    Height = 13
    Caption = 'Mail Adresi:'
  end
  object Edit1: TEdit
    Left = 136
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 51
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 136
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 136
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 136
    Top = 159
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 136
    Top = 192
    Width = 57
    Height = 25
    Caption = 'Ekle'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 192
    Width = 57
    Height = 25
    Caption = #199#305'k'#305#351
    TabOrder = 7
    OnClick = Button2Click
  end
  object ADOTable1: TADOTable
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    TableName = 'personel'
    Left = 70
    Top = 231
    object ADOTable1kullanici_adi: TWideStringField
      FieldName = 'kullanici_adi'
      Size = 10
    end
    object ADOTable1kullanici_sifre: TWideStringField
      FieldName = 'kullanici_sifre'
      Size = 16
    end
  end
  object ADOQuery1: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from personel')
    Left = 102
    Top = 231
    object ADOQuery1per_id: TAutoIncField
      FieldName = 'per_id'
      ReadOnly = True
    end
    object ADOQuery1kullanici_adi: TWideStringField
      FieldName = 'kullanici_adi'
      Size = 25
    end
    object ADOQuery1kullanici_sifre: TWideStringField
      FieldName = 'kullanici_sifre'
      Size = 16
    end
    object ADOQuery1p_ad: TWideStringField
      FieldName = 'p_ad'
      Size = 25
    end
    object ADOQuery1p_sad: TWideStringField
      FieldName = 'p_sad'
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
end
