object musEkle: TmusEkle
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'M'#252#351'teri Ekle'
  ClientHeight = 255
  ClientWidth = 279
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
  object Label3: TLabel
    Left = 32
    Top = 49
    Width = 53
    Height = 13
    Caption = 'T.C. Kimlik:'
  end
  object Label4: TLabel
    Left = 32
    Top = 103
    Width = 74
    Height = 13
    Caption = 'M'#252#351'teri Soyad'#305':'
  end
  object Label5: TLabel
    Left = 32
    Top = 130
    Width = 40
    Height = 13
    Caption = 'Telefon:'
  end
  object Label7: TLabel
    Left = 32
    Top = 157
    Width = 55
    Height = 13
    Caption = 'Mail Adresi:'
  end
  object Label6: TLabel
    Left = 32
    Top = 76
    Width = 57
    Height = 13
    Caption = 'M'#252#351'teri Ad'#305':'
  end
  object Edit3: TEdit
    Left = 128
    Top = 46
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 128
    Top = 73
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit5: TEdit
    Left = 128
    Top = 100
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit6: TEdit
    Left = 128
    Top = 127
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 128
    Top = 187
    Width = 57
    Height = 25
    Caption = 'Ekle'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 187
    Width = 57
    Height = 25
    Caption = #199#305'k'#305#351
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit7: TEdit
    Left = 128
    Top = 154
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object ADOQuery1: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from personel')
    Left = 102
    Top = 255
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
