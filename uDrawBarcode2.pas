unit uDrawBarcode2;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  imgBarcode;

type
  TfrmMain2 = class(TForm)
    btnDraw: TButton;
    btnOutput: TButton;
    edtBarcode: TEdit;
    edtFile: TEdit;
    pnlBarcode: TPanel;
    imgDraw: TImage;
    procedure btnDrawClick(Sender: TObject);
    procedure btnOutputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain2: TfrmMain2;

implementation

{$R *.dfm}

procedure TfrmMain2.btnDrawClick(Sender: TObject);
var
  ib: TImgBarcode;
begin
  ib := TImgBarcode.Create(Self);
  ib.BarTyp := bcCode128C;
  ib.BarText := edtBarcode.Text;
  ib.BarShowText := false;
  ib.BarHeight := imgDraw.Height;
  ib.BarTop := 0;
  ib.BarLeft := 0;
  ib.BarModul := 3;  //Width of smallest line in barcode
  ib.BarChecksum := False;
  ib.DrawBarcode(imgDraw.Canvas);
end;

procedure TfrmMain2.btnOutputClick(Sender: TObject);
begin
  imgDraw.Picture.Bitmap.PixelFormat := pf1bit; // black & white
  imgDraw.Picture.Bitmap.SaveToFile(edtFile.Text);
end;

end.
