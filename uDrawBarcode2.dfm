object frmMain2: TfrmMain2
  Left = 0
  Top = 0
  Caption = 'Draw a barcode'
  ClientHeight = 444
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnDraw: TButton
    Left = 488
    Top = 8
    Width = 201
    Height = 65
    Caption = 'Draw barcode'
    TabOrder = 0
    OnClick = btnDrawClick
  end
  object btnOutput: TButton
    Left = 488
    Top = 96
    Width = 201
    Height = 65
    Caption = 'Output to file'
    TabOrder = 1
    OnClick = btnOutputClick
  end
  object edtBarcode: TEdit
    Left = 48
    Top = 32
    Width = 289
    Height = 28
    TabOrder = 2
    Text = '94210095601100006060234040286014'
  end
  object edtFile: TEdit
    Left = 48
    Top = 114
    Width = 409
    Height = 28
    TabOrder = 3
    Text = 'c:\temp\94210095601100006060234040286014.bmp'
  end
  object pnlBarcode: TPanel
    Left = 40
    Top = 216
    Width = 777
    Height = 193
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    StyleElements = []
    object imgDraw: TImage
      Left = 32
      Top = 33
      Width = 705
      Height = 120
    end
  end
end
