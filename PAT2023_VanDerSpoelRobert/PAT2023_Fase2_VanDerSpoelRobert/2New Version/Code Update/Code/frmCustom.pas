

unit frmCustom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLoginPage = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    bTabVisible : Bool;
  end;

var
  frmLoginPage: TfrmLoginPage;

implementation

{$R *.dfm}

procedure TfrmLoginPage.Button1Click(Sender: TObject);
begin
  bTabVisible := False;
frmLoginPage.Hide ;
end;

procedure TfrmLoginPage.FormCreate(Sender: TObject);
begin
  bTabVisible := True;
end;

end.
