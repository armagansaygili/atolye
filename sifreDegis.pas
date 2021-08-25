unit sifreDegis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Win.ADODB, Data.DB;

type
  TsifDegis = class(TForm)
    sifDegisTbx: TEdit;
    sifTekrar: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cikisBtn: TButton;
    degistirBtn: TButton;
    ADOQuery1: TADOQuery;
    eskiSifre: TEdit;
    Label1: TLabel;
    kAdiTbx: TEdit;
    Label4: TLabel;
    ADOQuery1per_id: TAutoIncField;
    ADOQuery1kullanici_adi: TWideStringField;
    ADOQuery1kullanici_sifre: TWideStringField;
    ADOQuery1p_ad: TWideStringField;
    ADOQuery1p_sad: TWideStringField;
    ADOQuery1telefon: TWideStringField;
    ADOQuery1mail_adresi: TWideStringField;
    procedure cikisBtnClick(Sender: TObject);
    procedure degistirBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sifDegis: TsifDegis;

implementation

{$R *.dfm}


uses giris;

procedure TsifDegis.cikisBtnClick(Sender: TObject);
begin
sifDegis.Close;
end;

procedure TsifDegis.degistirBtnClick(Sender: TObject);

begin

if sifTekrar.Text = sifDegisTbx.Text then
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('UPDATE personel Set kullanici_sifre = ' + '"' + sifDegisTbx.Text + '"' +' where kullanici_adi=' + '"' + kAdiTbx.Text + '"' + '');
  ADOQuery1.ExecSQL;

  ShowMessage('Þifre deðiþtirildi.');

end
else
begin
  ShowMessage('Þifreleri kontrol ediniz.');
end;

end;


end.
