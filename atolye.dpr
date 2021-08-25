program atolye;

uses
  Vcl.Forms,
  giris in 'giris.pas' {kullaniciGiris},
  anaForm in 'anaForm.pas' {atolyeForm},
  personel in 'personel.pas' {personelForm},
  personelEkle in 'personelEkle.pas' {perEkle},
  sifreDegis in 'sifreDegis.pas' {sifDegis},
  musteriEkle in 'musteriEkle.pas' {musEkle},
  musteriAra in 'musteriAra.pas' {musAra},
  teslimAlmaForm in 'teslimAlmaForm.pas' {teslimAlma},
  Vcl.Themes,
  Vcl.Styles,
  randevuForm in 'randevuForm.pas' {randevu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TkullaniciGiris, kullaniciGiris);
  Application.CreateForm(TatolyeForm, atolyeForm);
  Application.CreateForm(TpersonelForm, personelForm);
  Application.CreateForm(TperEkle, perEkle);
  Application.CreateForm(TsifDegis, sifDegis);
  Application.CreateForm(TmusEkle, musEkle);
  Application.CreateForm(TmusAra, musAra);
  Application.CreateForm(TteslimAlma, teslimAlma);
  Application.CreateForm(Trandevu, randevu);
  Application.Run;
end.
