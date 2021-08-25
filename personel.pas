unit personel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.DBCGrids,
  Vcl.ExtCtrls;

type
  TpersonelForm = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1per_id: TAutoIncField;
    ADOQuery1kullanici_adi: TWideStringField;
    ADOQuery1kullanici_sifre: TWideStringField;
    ADOQuery1p_ad: TWideStringField;
    ADOQuery1p_sad: TWideStringField;
    ADOQuery1telefon: TWideStringField;
    ADOQuery1mail_adresi: TWideStringField;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  personelForm: TpersonelForm;

implementation

{$R *.dfm}


uses giris;
procedure TpersonelForm.Button1Click(Sender: TObject);
begin
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE personel SET telefon =' + '"' + ADOQuery1telefon.AsString +
      '"' +', mail_adresi =' + '"' + ADOQuery1mail_adresi.AsString + '"' + ' WHERE per_id =' + ADOQuery1per_id.AsString + '');
  ADOQuery2.ExecSQL;

  ShowMessage('Kayýt Güncellendi.');

end;

procedure TpersonelForm.Button2Click(Sender: TObject);
begin
    ADOQuery1.Delete;

    ShowMessage('Kayýt Silindi.');
end;


end.
