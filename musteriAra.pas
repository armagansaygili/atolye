unit musteriAra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TmusAra = class(TForm)
    Label6: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery1mus_id: TAutoIncField;
    ADOQuery1tc_kimlik: TWideStringField;
    ADOQuery1m_ad: TWideStringField;
    ADOQuery1m_sad: TWideStringField;
    ADOQuery1telefon: TWideStringField;
    ADOQuery1mail_adresi: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  musAra: TmusAra;

implementation

{$R *.dfm}

uses giris;

procedure TmusAra.Button1Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(' Select * from musteri where m_ad=' + '"' + Edit4.Text + '"' + ' AND m_sad=' + '"' + Edit1.Text + '"' + '');
  ADOQuery1.Open;

end;

procedure TmusAra.Button2Click(Sender: TObject);
begin
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('UPDATE musteri SET tc_kimlik =' + '"' + ADOQuery1tc_kimlik.AsString +
      '"' +', m_ad =' + '"' + ADOQuery1m_ad.AsString + '"' + ', m_sad =' + '"' + ADOQuery1m_sad.AsString + '"' + ', telefon =' +
      '"' + ADOQuery1telefon.AsString + '"' + ', mail_adresi =' + '"' + ADOQuery1mail_adresi.AsString + '"' + ' WHERE mus_id =' +
      ADOQuery1mus_id.AsString + '');
  ADOQuery2.ExecSQL;

  ShowMessage('Kayýt Güncellendi.');
end;

procedure TmusAra.Button3Click(Sender: TObject);
begin
  ADOQuery1.Delete;

  ShowMessage('Kayýt Silindi.');
end;

procedure TmusAra.FormCreate(Sender: TObject);
begin
DBEdit1.Text := '';
DBEdit2.Text := '';
DBEdit3.Text := '';
DBEdit4.Text := '';
DBEdit5.Text := '';
end;

end.
