object sifDegis: TsifDegis
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #350'ifre De'#287'i'#351'tir'
  ClientHeight = 300
  ClientWidth = 229
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
  object Label2: TLabel
    Left = 95
    Top = 114
    Width = 49
    Height = 13
    Caption = 'Yeni '#350'ifre:'
  end
  object Label3: TLabel
    Left = 85
    Top = 160
    Width = 62
    Height = 13
    Caption = #350'ifre Tekrar'#305':'
  end
  object Label1: TLabel
    Left = 95
    Top = 68
    Width = 47
    Height = 13
    Caption = 'Eski '#350'ifre:'
  end
  object Label4: TLabel
    Left = 85
    Top = 22
    Width = 59
    Height = 13
    Caption = 'Kullan'#305'c'#305' Ad'#305':'
  end
  object sifDegisTbx: TEdit
    Left = 56
    Top = 133
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object sifTekrar: TEdit
    Left = 56
    Top = 179
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object cikisBtn: TButton
    Left = 72
    Top = 246
    Width = 89
    Height = 25
    Caption = #199#305'k'#305#351
    TabOrder = 2
    OnClick = cikisBtnClick
  end
  object degistirBtn: TButton
    Left = 72
    Top = 215
    Width = 89
    Height = 25
    Caption = 'De'#287'i'#351'tir'
    TabOrder = 3
    OnClick = degistirBtnClick
  end
  object eskiSifre: TEdit
    Left = 56
    Top = 87
    Width = 121
    Height = 21
    Enabled = False
    PasswordChar = '*'
    TabOrder = 4
  end
  object kAdiTbx: TEdit
    Left = 56
    Top = 41
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object ADOQuery1: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from personel')
    Left = 102
    Top = 307
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
