object randevu: Trandevu
  Left = 0
  Top = 0
  Caption = 'Randevu'
  ClientHeight = 340
  ClientWidth = 1082
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
  object Label1: TLabel
    Left = 847
    Top = 210
    Width = 101
    Height = 16
    Caption = 'Randevu Tarihi:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 48
    Width = 985
    Height = 145
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'kullanici_adi'
        Title.Caption = 'T. Alan Personel'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urun.urun_id'
        Title.Caption = #220'r'#252'n ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urun_marka'
        Title.Caption = 'Marka'
        Width = 100
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
        FieldName = 'bakim_islem'
        Title.Caption = 'Bak'#305'm '#304#351'lemi'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ucret'
        Title.Caption = #220'cret'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 't_alma_tarihi'
        Title.Caption = 'Teslim Alma Tarihi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'm_ad'
        Title.Caption = 'M'#252#351'teri Ad'#305
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'm_sad'
        Title.Caption = 'M'#252#351'teri Soyad'#305
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'musteri.mail_adresi'
        Title.Caption = 'M'#252#351'teri E-Posta'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bakim_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'musteri.mus_id'
        Visible = False
      end>
  end
  object DateTimePicker1: TDateTimePicker
    Left = 847
    Top = 232
    Width = 186
    Height = 24
    Date = 44329.000000000000000000
    Time = 0.068739062502572770
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 847
    Top = 280
    Width = 186
    Height = 25
    Caption = 'RANDEVU VER VE MA'#304'L G'#214'NDER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM musteri INNER JOIN (urun INNER JOIN (personel INNE' +
        'R JOIN bakim ON personel.per_id = bakim.per_id) ON urun.urun_id ' +
        '= bakim.urun_id) ON musteri.mus_id = urun.mus_id where durum="0"')
    Left = 16
    Top = 296
    object ADOQuery1bakim_islem: TWideStringField
      FieldName = 'bakim_islem'
      Size = 255
    end
    object ADOQuery1ucret: TWideStringField
      FieldName = 'ucret'
      Size = 4
    end
    object ADOQuery1t_alma_tarihi: TDateTimeField
      FieldName = 't_alma_tarihi'
    end
    object ADOQuery1m_ad: TWideStringField
      FieldName = 'm_ad'
      Size = 25
    end
    object ADOQuery1m_sad: TWideStringField
      FieldName = 'm_sad'
      Size = 25
    end
    object ADOQuery1musteritelefon: TWideStringField
      FieldName = 'musteri.telefon'
      Size = 11
    end
    object ADOQuery1urun_marka: TWideStringField
      FieldName = 'urun_marka'
      Size = 255
    end
    object ADOQuery1urun_model: TWideStringField
      FieldName = 'urun_model'
      Size = 255
    end
    object ADOQuery1urunurun_id: TAutoIncField
      FieldName = 'urun.urun_id'
      ReadOnly = True
    end
    object ADOQuery1kullanici_adi: TWideStringField
      FieldName = 'kullanici_adi'
      Size = 25
    end
    object ADOQuery1bakim_id: TAutoIncField
      FieldName = 'bakim_id'
      ReadOnly = True
    end
    object ADOQuery1musterimus_id: TAutoIncField
      FieldName = 'musteri.mus_id'
      ReadOnly = True
    end
    object ADOQuery1musterimail_adresi: TWideStringField
      FieldName = 'musteri.mail_adresi'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 80
    Top = 296
  end
  object ADOQuery2: TADOQuery
    Connection = kullaniciGiris.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 192
    Top = 296
    object WideStringField1: TWideStringField
      FieldName = 'bakim_islem'
      Size = 255
    end
    object WideStringField2: TWideStringField
      FieldName = 'ucret'
      Size = 4
    end
    object DateTimeField1: TDateTimeField
      FieldName = 't_alma_tarihi'
    end
    object WideStringField3: TWideStringField
      FieldName = 'm_ad'
      Size = 25
    end
    object WideStringField4: TWideStringField
      FieldName = 'm_sad'
      Size = 25
    end
    object WideStringField5: TWideStringField
      FieldName = 'musteri.telefon'
      Size = 11
    end
    object WideStringField6: TWideStringField
      FieldName = 'urun_marka'
      Size = 255
    end
    object WideStringField7: TWideStringField
      FieldName = 'urun_model'
      Size = 255
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'urun.urun_id'
      ReadOnly = True
    end
    object WideStringField8: TWideStringField
      FieldName = 'kullanici_adi'
      Size = 25
    end
    object AutoIncField2: TAutoIncField
      FieldName = 'bakim_id'
      ReadOnly = True
    end
    object AutoIncField3: TAutoIncField
      FieldName = 'musteri.mus_id'
      ReadOnly = True
    end
    object WideStringField9: TWideStringField
      FieldName = 'musteri.mail_adresi'
      Size = 50
    end
  end
end
