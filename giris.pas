unit giris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TkullaniciGiris = class(TForm)
    giris: TButton;
    cikis: TButton;
    kAdiLbl: TLabel;
    sifreLbl: TLabel;
    kAdiTbx: TEdit;
    sifreTbx: TEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    ADOTable1kullanici_adi: TWideStringField;
    ADOTable1kullanici_sifre: TWideStringField;
    ADOQuery1per_id: TAutoIncField;
    ADOQuery1kullanici_adi: TWideStringField;
    ADOQuery1kullanici_sifre: TWideStringField;
    ADOQuery1p_ad: TWideStringField;
    ADOQuery1p_sad: TWideStringField;
    ADOQuery1telefon: TWideStringField;
    ADOQuery1mail_adresi: TWideStringField;
    procedure girisClick(Sender: TObject);
    procedure cikisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var per_id:integer;
  end;

var
  kullaniciGiris: TkullaniciGiris;

implementation

{$R *.dfm}

uses anaForm,sifreDegis;

procedure TkullaniciGiris.cikisClick(Sender: TObject);
begin
Application.Terminate;
end;


procedure TkullaniciGiris.girisClick(Sender: TObject);
begin

with ADOQuery1 do
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.BeginUpdate;
  ADOQuery1.SQL.Add('SELECT * from personel where kullanici_adi =' + '"' + kAdiTbx.Text + '"' + ' and kullanici_sifre =' + '"' + sifreTbx.Text + '"' );
  ADOQuery1.SQL.EndUpdate;
  ADOQuery1.Open;
end;

  if ADOQuery1.RecordCount > 0 then
    begin
      per_id := StrToInt(ADOQuery1per_id.AsString);
      atolyeForm.Show;
      sifDegis.kAdiTbx.Text := ADOQuery1kullanici_adi.AsString ;
      sifDegis.eskiSifre.Text := sifreTbx.Text;
      kullaniciGiris.Hide;

    end
    else
    begin
       ShowMessage('Kullanýcý adý veya þifre yanlýþ!');
    end;

end;
end.
