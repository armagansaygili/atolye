unit teslimAlmaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.CheckLst;

type
  TteslimAlma = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery3: TADOQuery;
    ADOQuery2musterimus_id: TAutoIncField;
    ADOQuery2tc_kimlik: TWideStringField;
    ADOQuery2m_ad: TWideStringField;
    ADOQuery2m_sad: TWideStringField;
    ADOQuery2telefon: TWideStringField;
    ADOQuery2mail_adresi: TWideStringField;
    ADOQuery2urun_id: TIntegerField;
    ADOQuery2urunmus_id: TIntegerField;
    ADOQuery2urun_marka: TWideStringField;
    ADOQuery2urun_model: TWideStringField;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ADOQuery4: TADOQuery;
    CheckListBox1: TCheckListBox;
    ADOQuery5: TADOQuery;
    ADOQuery5ucret: TWideStringField;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var mus_id:integer;
    var bugun:Tdate;
    var departman:string;
  end;

var
  teslimAlma: TteslimAlma;

implementation

{$R *.dfm}


uses giris,randevuForm;
procedure TteslimAlma.Button1Click(Sender: TObject);
begin
  mus_id := StrToInt(DBGrid1.Fields[4].AsString);
  ADOQuery4.Close;
  ADOQuery4.SQL.clear;
  ADOQuery4.SQL.add('insert into urun (mus_id,urun_marka,urun_model) VALUES("' + mus_id.ToString + '","' + Edit1.Text + '","' + Edit2.Text + '")');
  ADOQuery4.ExecSQL;
  ShowMessage('Ürün Eklendi.');
end;

procedure TteslimAlma.Button2Click(Sender: TObject);
var i,ucret,borc:integer;
var bakim,toplam:string;
begin
bugun := Now();
borc := 0;
    For i := 0 To CheckListBox1.Items.Count - 1 Do
     Begin
      If CheckListBox1.Checked[i] Then
      begin
        bakim := CheckListBox1.Items[i];
        ADOQuery5.Close;
        ADOQuery5.SQL.clear;
        ADOQuery5.SQL.add(' SELECT ucret FROM ariza where ariza="' + bakim +'"');
        ADOQuery5.Open;
        ucret := StrToInt(ADOQuery5ucret.AsString);
        borc := borc + ucret;
        if toplam = '' then
        begin
        toplam:= bakim;
        end
        else
        toplam:= toplam + ',' +bakim;
        end;
      end;
  ADOQuery4.Close;
  ADOQuery4.SQL.clear;
  ADOQuery4.SQL.add('insert into bakim (urun_id,per_id,bakim_islem,ucret,t_alma_tarihi,durum) VALUES("' + DBGrid2.Fields[0].AsString + '","' + kullaniciGiris.per_id.ToString + '","' + toplam + '","' + borc.ToString + '","' + DateToStr(bugun) + '","0")');
  ADOQuery4.ExecSQL;
  ShowMessage('Bakým iþlemi eklendi.');

  randevu.ADOQuery1.Close;
  randevu.ADOQuery1.SQL.Clear;
  randevu.ADOQuery1.SQL.Add('SELECT * FROM musteri INNER JOIN (urun INNER JOIN (personel INNER JOIN bakim ON personel.per_id = bakim.per_id) ON urun.urun_id = bakim.urun_id) ON musteri.mus_id = urun.mus_id');
  randevu.ADOQuery1.Open;
  randevu.ADOQuery1.Active := true;

end;

procedure TteslimAlma.ComboBox1Change(Sender: TObject);
begin
departman := ComboBox1.Text;

CheckListBox1.Clear;
  with ADOQuery3 do
  begin
  ADOQuery3.Close;
  ADOQuery3.SQL.clear;
  ADOQuery3.SQL.add('select * from ariza where `departman`="' + ComboBox1.Text +'"');
  ADOQuery3.active:=true;
  ADOQuery3.first;
  while not eof do
  begin
  CheckListBox1.Items.Add(FieldByName('ariza').AsString);
  next;
  end;
  end;
end;



procedure TteslimAlma.DBGrid1CellClick(Column: TColumn);
begin
  mus_id := StrToInt(DBGrid1.Fields[4].AsString);
  ADOQuery2.Close;
  ADOQuery2.SQL.clear;
  ADOQuery2.SQL.add(' SELECT * FROM urun INNER JOIN musteri ON urun.mus_id = musteri.mus_id where musteri.mus_id=' +mus_id.ToString+'');
  ADOQuery2.Open;
  ADOQuery2.Active := true;
end;

end.
