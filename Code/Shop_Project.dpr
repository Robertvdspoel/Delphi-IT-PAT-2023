program Shop_Project;

uses
  Vcl.Forms,
  Shop in 'Shop.pas' {frmShop},
  LoginHelp_u in 'LoginHelp_u.pas' {frmLoginHelp},
  RegisterHelp_u in 'RegisterHelp_u.pas' {frmRegisterHelp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmShop, frmShop);
  Application.CreateForm(TfrmLoginHelp, frmLoginHelp);
  Application.CreateForm(TfrmRegisterHelp, frmRegisterHelp);
  Application.Run;
end.
