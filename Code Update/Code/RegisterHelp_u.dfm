object frmRegisterHelp: TfrmRegisterHelp
  Left = 837
  Top = 145
  Caption = 'frmRegisterHelp'
  ClientHeight = 439
  ClientWidth = 280
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
    Left = 8
    Top = 0
    Width = 96
    Height = 15
    Caption = 'Help with Register'
  end
  object redHelp: TRichEdit
    Left = 47
    Top = 53
    Width = 185
    Height = 292
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    Transparent = True
  end
  object BitBtnClose: TBitBtn
    Left = 0
    Top = 368
    Width = 281
    Height = 65
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
end
