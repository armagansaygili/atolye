object FormSmtpF: TFormSmtpF
  Left = 0
  Top = 0
  Caption = 'SMTP Test'
  ClientHeight = 549
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  DesignSize = (
    810
    549)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 16
    Top = 16
    Width = 361
    Height = 209
    Caption = 'Ayarlar'
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 76
      Width = 80
      Height = 13
      AutoSize = False
      Caption = 'SMTP Host'
      Transparent = True
    end
    object Label8: TLabel
      Left = 8
      Top = 124
      Width = 80
      Height = 13
      Hint = 'Port no (25, 587, 465)'
      AutoSize = False
      Caption = 'Port'
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 148
      Width = 80
      Height = 13
      AutoSize = False
      Caption = 'User (E-Posta)'
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 172
      Width = 80
      Height = 13
      AutoSize = False
      Caption = #350'ifre'
      Transparent = True
    end
    object Label10: TLabel
      Left = 8
      Top = 100
      Width = 80
      Height = 13
      AutoSize = False
      Caption = #350'ifreleme'
      Transparent = True
    end
    object EditYandex: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Yandex'
      TabOrder = 0
      OnClick = EditYandexClick
    end
    object EditGoogle: TButton
      Left = 96
      Top = 24
      Width = 75
      Height = 25
      Caption = 'GMail'
      TabOrder = 1
      OnClick = EditGoogleClick
    end
    object ButtonYahoo: TButton
      Left = 176
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Yahoo'
      TabOrder = 2
      OnClick = ButtonYahooClick
    end
    object Button4: TButton
      Left = 256
      Top = 24
      Width = 75
      Height = 25
      TabOrder = 3
    end
    object EditHOST: TEdit
      Left = 96
      Top = 72
      Width = 233
      Height = 21
      TabOrder = 4
    end
    object EditUSER: TEdit
      Left = 96
      Top = 144
      Width = 233
      Height = 21
      TabOrder = 7
    end
    object EditPASSWORD: TEdit
      Left = 96
      Top = 168
      Width = 169
      Height = 21
      PasswordChar = '*'
      TabOrder = 8
    end
    object EditCRYPTION: TComboBox
      Left = 96
      Top = 96
      Width = 97
      Height = 21
      Hint = 'Port no (25, 587, 465)'
      Style = csDropDownList
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '<YOK>'
      OnChange = EditCRYPTIONChange
      Items.Strings = (
        '<YOK>'
        'SSL'
        'SSL/TLS')
    end
    object EditPORT_NO: TComboBox
      Left = 96
      Top = 120
      Width = 97
      Height = 21
      Hint = 'Port no (25, 587, 465)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '587'
      Items.Strings = (
        '25'
        '465'
        '587'
        '2525')
    end
    object CheckBoxSifreGoster: TCheckBox
      Left = 272
      Top = 172
      Width = 57
      Height = 17
      Caption = 'G'#246'ster'
      TabOrder = 9
      OnClick = CheckBoxSifreGosterClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 240
    Width = 361
    Height = 177
    Caption = ' Test '
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 108
      Width = 80
      Height = 13
      AutoSize = False
      Caption = 'Al'#305'c'#305' E-Posta'
      Transparent = True
    end
    object MemoTestIcerik: TMemo
      Left = 16
      Top = 24
      Width = 305
      Height = 73
      Lines.Strings = (
        'Deneme e-postas'#305)
      TabOrder = 0
    end
    object EditAlici: TEdit
      Left = 96
      Top = 104
      Width = 225
      Height = 21
      TabOrder = 1
    end
    object ButtonMetinGonder: TButton
      Left = 16
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Metin Msj.'
      TabOrder = 2
      OnClick = ActionTestExecute
    end
    object ButtonHtmlGonder: TButton
      Left = 96
      Top = 144
      Width = 75
      Height = 25
      Caption = 'HTML'
      TabOrder = 3
      OnClick = ActionTestExecute
    end
    object ButtonGomuluGonder: TButton
      Left = 176
      Top = 144
      Width = 75
      Height = 25
      Caption = 'G'#246'm'#252'l'#252' Resim'
      TabOrder = 4
      OnClick = ActionTestExecute
    end
  end
  object GroupBox4: TGroupBox
    Left = 400
    Top = 16
    Width = 393
    Height = 401
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Log'
    TabOrder = 2
    object MemoLog: TMemo
      Left = 2
      Top = 15
      Width = 389
      Height = 384
      Align = alClient
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 432
    Width = 777
    Height = 105
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'A'#231#305'klamalar'
    TabOrder = 3
    object MemoAciklama: TMemo
      Left = 2
      Top = 15
      Width = 773
      Height = 88
      Align = alClient
      Lines.Strings = (

          '1. Al'#305'c'#305' E-Postas'#305'n'#305' bo'#351' b'#305'rakt'#305#287#305'n'#305'z takdirde deneme e-postas'#305'n' +
          #305' kendi kendinize g'#246'nderir.'
        ''

          '2. Yandex ayarlar'#305'nda sadece sonu @yandex.com veya @yandex.com.t' +
          'r olan e-postalar'#305' de'#287'il yandex '#252'zerinden kulland'#305#287#305'n'#305'z @bizimsi' +
          'rket.com uzant'#305'l'#305' e-'
        'postalar'#305'n'#305'z'#305' da kullanabilirsiniz.'
        ''

          '3. SSL veya TLS ile '#351'ifreli mesaj g'#246'nderecekseniz System klas'#246'r'#252 +
          'n'#252'zde Open SSL k'#252't'#252'phanesinin DLL dosyalar'#305' (libeay32.dll, sslea' +
          'y32.dll) bulunmal'#305'd'#305'r. Bu '

          'dosyalar'#305' http://indy.fulgan.com/SSL/ ba'#287'nalt'#305's'#305'ndan indirebilir' +
          'siniz.'
        ''

          '4. ContentType larla ilgili ayr'#305'nt'#305'l'#305' bilgi ve '#246'rnekleri http://' +
          'www.indyproject.org/Sockets/Blogs/RLebeau/2005%5F08%5F17%5FA.en.' +
          'aspx ba'#287'lant'#305's'#305'ndan '
        'edinebilirsiniz.')
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object SMTP: TIdSMTP
    OnStatus = SMTPStatus
    Host = 'mail.netbilisim.com'
    SASLMechanisms = <>
    Username = 'destek@netbilisim.com'
    Left = 264
    Top = 232
  end
  object EPosta: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    ContentType = 'text/plain'
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    OnInitializeISO = EPostaInitializeISO
    Left = 296
    Top = 232
  end
  object LHandler: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    OnStatusInfo = LHandlerStatusInfo
    Left = 328
    Top = 232
  end
end
