unit randevuForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  Trandevu = class(TForm)
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1bakim_islem: TWideStringField;
    ADOQuery1ucret: TWideStringField;
    ADOQuery1t_alma_tarihi: TDateTimeField;
    ADOQuery1m_ad: TWideStringField;
    ADOQuery1m_sad: TWideStringField;
    ADOQuery1musteritelefon: TWideStringField;
    ADOQuery1urun_marka: TWideStringField;
    ADOQuery1urun_model: TWideStringField;
    ADOQuery1urunurun_id: TAutoIncField;
    ADOQuery1kullanici_adi: TWideStringField;
    ADOQuery1bakim_id: TAutoIncField;
    ADOQuery1musterimus_id: TAutoIncField;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    ADOQuery1musterimail_adresi: TWideStringField;
    ADOQuery2: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateTimeField1: TDateTimeField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    AutoIncField1: TAutoIncField;
    WideStringField8: TWideStringField;
    AutoIncField2: TAutoIncField;
    AutoIncField3: TAutoIncField;
    WideStringField9: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var

  end;

var
  randevu: Trandevu;

implementation

{$R *.dfm}

uses
IdSSLOpenSSL, IdMessage, IdExplicitTLSClientServerBase, IdSMTP,giris;


procedure Trandevu.Button1Click(Sender: TObject);
    var
    SMTP:TIdSMTP;
    EPosta: TIdMessage;
    LHandler: TIdSSLIOHandlerSocketOpenSSL;
    mailhtml,mail,marka,urun_id:string;
    t_etme_tarihi:TDate;
    bakim_id,mus_id:integer;



begin
marka := ADOQuery1urun_marka.AsString + ' ' + ADOQuery1urun_model.AsString;
t_etme_tarihi := Now();
mus_id := StrToInt(ADOQuery1musterimus_id.AsString);
bakim_id := StrToInt(ADOQuery1bakim_id.AsString);
mail := ADOQuery1musterimail_adresi.AsString;
urun_id := ADOQuery1urunurun_id.AsString;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('INSERT INTO teslim_randevusu (bakim_id, mus_id, urun_adi,t_etme_tarihi) VALUES(' + '"' + bakim_id.ToString + '"' + ',' + '"'  + mus_id.ToString + '"'  + ',' + '"' + marka + '"'  + ',' + '"' + DateToStr(t_etme_tarihi) + '"' + ')');
  ADOQuery2.ExecSQL;

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE bakim SET durum ="1" WHERE bakim_id =' + bakim_id.ToString + '');
  ADOQuery2.ExecSQL;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM musteri INNER JOIN (urun INNER JOIN (personel INNER JOIN bakim ON personel.per_id = bakim.per_id) ON urun.urun_id = bakim.urun_id) ON musteri.mus_id = urun.mus_id where durum="0"');
  ADOQuery1.ExecSQL;
  AdoQuery1.Active := true;

SMTP:=TIdSMTP.Create(nil);
    EPosta:=TIdMessage.Create(nil);
    LHandler:= TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    try
    SMTP.Host:='smtp.gmail.com'  ;
    SMTP.Username:='armaganozan@gmail.com'; //gönderen Email
    SMTP.Password:='32731219222Ar'; //Gönderen Email þifresi
    SMTP.Port:= 587;
    SMTP.AuthType := satDefault;
    LHandler.Destination := SMTP.Host+'587';
    LHandler.Host := SMTP.Host;
    LHandler.Port := SMTP.Port;
    LHandler.DefaultPort := 0;
    LHandler.SSLOptions.Method := sslvTLSv1 ;
    LHandler.SSLOptions.Mode := sslmUnassigned;
    LHandler.SSLOptions.VerifyMode := [];
    LHandler.SSLOptions.VerifyDepth := 2;

    SMTP.IOHandler := LHandler;
    SMTP.UseTLS := utUseExplicitTLS;
    SMTP.ConnectTimeout := 10000;
    SMTP.Connect;
    EPosta.From.address := '222003024@ogr.uludag.edu.tr'; // gönderilecek e mail adresi aralarýna ; koyarak bir çok kiþiye gönderebiliriz.
    EPosta.Subject:= 'Ürün Bakýmýnýz Bitti'; // mail konusu
    EPosta.Body.Add('Ürün bakýmýnýz tamamlanmýþtýr. '+ marka + ' isimli ürününüz için ' + DateToStr(t_etme_tarihi) + 'tarihinde teslim alabilirsiniz.'); // Mail yazýsý
    EPosta.From.Name := 'Atölye'; // mail göneren ismi
    EPosta.Recipients.EMailAddresses := mail; // gelen mailde görünecek mail adresi
    EPosta.CharSet:='UTF-8';
    SMTP.Authenticate;
    try
      SMTP.Send(EPosta);
    finally
      SMTP.Disconnect;
    end;
 finally
    SMTP.Free;
    EPosta.Free;
    LHandler.Free;
 end;
 ShowMessage('Randevu bildirildi.');
end;
procedure Trandevu.FormCreate(Sender: TObject);
begin
DateTimePicker1.DateTime := Now();
end;

end.
