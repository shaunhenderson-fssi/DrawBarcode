program DrawBarcode2;

uses
  Vcl.Forms,
  uDrawBarcode2 in 'uDrawBarcode2.pas' {frmMain2},
  ImgBarcode in '..\..\POS\common\ImgBarcode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain2, frmMain2);
  Application.Run;
end.
