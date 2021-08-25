unit musteriEkle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TmusEkle = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery1per_id: TAutoIncField;
    ADOQuery1kullanici_adi: TWideStringField;
    ADOQuery1kullanici_sifre: TWideStringField;
    ADOQuery1p_ad: TWideStringField;
    ADOQuery1p_sad: TWideStringField;
    ADOQuery1telefon: TWideStringField;
    ADOQuery1mail_adresi: TWideStringField;
    Edit7: TEdit;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  musEkle: TmusEkle;

implementation

{$R *.dfm}

uses giris;

procedure TmusEkle.Button1Click(Sender: TObject);
begin
if (Edit3.Text <> '') and (Edit4.Text <> '') and (Edit5.Text <> '') and (Edit6.Text <> '') and (Edit7.Text <> '')  then
  begin
     ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('INSERT INTO musteri (tc_kimlik, m_ad, m_sad, telefon, mail_adresi) VALUES(' + '"' + Edit3.Text + '"'  + ',' + '"' + Edit4.Text + '"' + ',' + '"' + Edit5.Text + '"' + ',' + '"' + Edit6.Text + '"' +  ',' + '"' + Edit7.Text + '"' +')');
  ADOQuery1.ExecSQL;

  ShowMessage('Kullanýcý Eklendi.');
  end
  else
  ShowMessage('Personel bilgilerini eksiksiz doldurunuz.');

end;

procedure TmusEkle.Button2Click(Sender: TObject);
begin
musEkle.Close;
end;

end.
