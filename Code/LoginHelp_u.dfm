object frmLoginHelp: TfrmLoginHelp
  Left = 266
  Top = 145
  Caption = 'frmLoginHelp'
  ClientHeight = 435
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnActivate = FormActivate
  TextHeight = 15
  object lblHelp: TLabel
    Left = 24
    Top = 16
    Width = 84
    Height = 15
    Caption = 'Help with Login'
  end
  object BitBtnClose: TBitBtn
    Left = 0
    Top = 384
    Width = 293
    Height = 49
    Caption = '&Close Login Help'
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 0
  end
  object redHelp: TRichEdit
    Left = 48
    Top = 64
    Width = 185
    Height = 289
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
