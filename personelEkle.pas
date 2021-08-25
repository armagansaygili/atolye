unit personelEkle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TperEkle = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOTable1: TADOTable;
    ADOTable1kullanici_adi: TWideStringField;
    ADOTable1kullanici_sifre: TWideStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1per_id: TAutoIncField;
    ADOQuery1kullanici_adi: TWideStringField;
    ADOQuery1kullanici_sifre: TWideStringField;
    ADOQuery1p_ad: TWideStringField;
    ADOQuery1p_sad: TWideStringField;
    ADOQuery1telefon: TWideStringField;
    ADOQuery1mail_adresi: TWideStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  perEkle: TperEkle;

implementation

{$R *.dfm}

uses giris;

procedure TperEkle.Button1Click(Sender: TObject);
begin
if (Edit1.Text <> '') and (Edit2.Text <> '') and (Edit3.Text <> '') and (Edit4.Text <> '') and (Edit5.Text <> '') and (Edit6.Text <> '')  then
  begin
     ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('INSERT INTO personel (kullanici_adi, kullanici_sifre, p_ad,p_sad,telefon,mail_adresi) VALUES(' + '"' + Edit1.Text + '"' + ',' + '"'  + Edit2.Text + '"'  + ',' + '"' + Edit3.Text + '"'  + ',' + '"' + Edit4.Text + '"' + ',' + '"' + Edit5.Text + '"' + ',' + '"' + Edit6.Text + '"' + ')');
  ADOQuery1.ExecSQL;

  ShowMessage('Kullanýcý Eklendi.');
  end
  else
  ShowMessage('Personel bilgilerini eksiksiz doldurunuz.');

end;

procedure TperEkle.Button2Click(Sender: TObject);
begin
perEkle.Close;
end;



end.
