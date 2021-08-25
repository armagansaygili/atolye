unit anaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.StdCtrls,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TatolyeForm = class(TForm)
    menu: TMainMenu;
    as1: TMenuItem;
    Mteri1: TMenuItem;
    Personel1: TMenuItem;
    RandevuVer1: TMenuItem;
    eslimAl1: TMenuItem;
    MteriAra1: TMenuItem;
    Ekle1: TMenuItem;
    Ekle2: TMenuItem;
    PersonelListesi1: TMenuItem;
    k1: TMenuItem;
    ifreDeitir1: TMenuItem;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DBGrid3: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ADOQuery3: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    DateTimeField1: TDateTimeField;
    DataSource3: TDataSource;
    ADOQuery3urunurun_id: TAutoIncField;
    ADOQuery4: TADOQuery;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    DateTimeField2: TDateTimeField;
    AutoIncField1: TAutoIncField;
    Panel1: TPanel;
    Label7: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    ADOQuery7: TADOQuery;
    ADOQuery7ucret: TFloatField;
    ADOQuery5: TADOQuery;
    ADOQuery5ucret: TFloatField;
    ADOQuery6: TADOQuery;
    ADOQuery6ucret: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PersonelListesi1Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure ifreDeitir1Click(Sender: TObject);
    procedure Ekle2Click(Sender: TObject);
    procedure Ekle1Click(Sender: TObject);
    procedure MteriAra1Click(Sender: TObject);
    procedure cretListesi1Click(Sender: TObject);
    procedure eslimAl1Click(Sender: TObject);
    procedure RandevuVer1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var mus_id,urun_id:integer;
  end;

var
  atolyeForm: TatolyeForm;

implementation

{$R *.dfm}

uses giris,personel, sifreDegis, personelEkle, musteriEkle,musteriAra, ucretListesi,teslimAlmaForm,randevuForm;




procedure TatolyeForm.cretListesi1Click(Sender: TObject);
begin
ucListesi.Show;
end;

procedure TatolyeForm.DBGrid1CellClick(Column: TColumn);
begin
  mus_id := StrToInt(DBGrid1.Fields[4].AsString);
  ADOQuery2.Close;
  ADOQuery2.SQL.clear;
  ADOQuery2.SQL.add(' SELECT DISTINCT urun.urun_id,bakim.urun_id, urun.urun_marka,urun.urun_model,bakim.t_alma_tarihi,musteri.mus_id from (urun INNER JOIN musteri ON urun.mus_id = musteri.mus_id) INNER JOIN bakim ON urun.urun_id = bakim.urun_id where musteri.mus_id=' +mus_id.ToString+' and durum="0"');
  ADOQuery2.Open;
  ADOQuery2.Active := true;
end;

procedure TatolyeForm.DBGrid2CellClick(Column: TColumn);
begin
  urun_id := StrToInt(DBGrid2.Fields[0].AsString);
  ADOQuery3.Close;
  ADOQuery3.SQL.clear;
  ADOQuery3.SQL.add(' SELECT * FROM musteri INNER JOIN (urun INNER JOIN (personel INNER JOIN bakim ON personel.per_id = bakim.per_id) ON urun.urun_id = bakim.urun_id) ON musteri.mus_id = urun.mus_id where urun.urun_id=' +urun_id.ToString+' and durum="0"');
  ADOQuery3.Open;
  ADOQuery3.Active := true;
end;

procedure TatolyeForm.Ekle1Click(Sender: TObject);
begin
musEkle.Show;
end;

procedure TatolyeForm.Ekle2Click(Sender: TObject);
begin
perEkle.Show;
end;


procedure TatolyeForm.eslimAl1Click(Sender: TObject);
begin

  teslimAlma.Show;
end;

procedure TatolyeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TatolyeForm.FormCreate(Sender: TObject);
begin
ADOQuery6.Close;
ADOQuery6.SQL.Clear;
ADOQuery6.SQL.Add('select sum(ucret) as ucret from bakim where t_alma_tarihi between date() and date()-1');
ADOQuery6.Open;
ADOQuery6.Active := true;
Label7.Caption := ADOQuery6ucret.AsString +' ₺';

ADOQuery5.Close;
ADOQuery5.SQL.Clear;
ADOQuery5.SQL.Add('select sum(ucret) as ucret from bakim where t_alma_tarihi between date() and date()-1');
ADOQuery5.Open;
ADOQuery5.Active := true;
Label11.Caption := ADOQuery5ucret.AsString +' ₺';

ADOQuery7.Close;
ADOQuery7.SQL.Clear;
ADOQuery7.SQL.Add('select sum(ucret) as ucret from bakim where t_alma_tarihi between date() and date()-30');
ADOQuery7.Open;
ADOQuery7.Active := true;
Label8.Caption := ADOQuery7ucret.AsString +' ₺';

end;

procedure TatolyeForm.ifreDeitir1Click(Sender: TObject);
begin
sifDegis.Show;
end;

procedure TatolyeForm.k1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TatolyeForm.MteriAra1Click(Sender: TObject);
begin
musAra.Show;
end;


procedure TatolyeForm.PersonelListesi1Click(Sender: TObject);
begin
personelForm.Show
end;

procedure TatolyeForm.RandevuVer1Click(Sender: TObject);
begin
 randevu.Show;
end;

end.
