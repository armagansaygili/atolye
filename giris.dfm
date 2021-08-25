object kullaniciGiris: TkullaniciGiris
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'Kullan'#305'c'#305' Giri'#351'i'
  ClientHeight = 157
  ClientWidth = 295
  Color = cl3DLight
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMode = pmExplicit
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object kAdiLbl: TLabel
    AlignWithMargins = True
    Left = 24
    Top = 27
    Width = 93
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Kullan'#305'c'#305' Ad'#305':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Font.Quality = fqProof
    ParentBiDiMode = False
    ParentFont = False
  end
  object sifreLbl: TLabel
    AlignWithMargins = True
    Left = 79
    Top = 68
    Width = 38
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = #350'ifre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Font.Quality = fqProof
    ParentBiDiMode = False
    ParentFont = False
  end
  object giris: TButton
    AlignWithMargins = True
    Left = 123
    Top = 106
    Width = 62
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'Giri'#351
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = girisClick
  end
  object cikis: TButton
    AlignWithMargins = True
    Left = 200
    Top = 106
    Width = 60
    Height = 25
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = #199#305'k'#305#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnClick = cikisClick
  end
  object kAdiTbx: TEdit
    AlignWithMargins = True
    Left = 123
    Top = 24
    Width = 137
    Height = 22
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
  end
  object sifreTbx: TEdit
    AlignWithMargins = True
    Left = 123
    Top = 69
    Width = 137
    Height = 22
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\Okul\Bitti\atoly' +
      'e\veritabani.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 392
    Top = 280
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'personel'
    Left = 328
    Top = 280
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
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from personel')
    Left = 264
    Top = 280
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
