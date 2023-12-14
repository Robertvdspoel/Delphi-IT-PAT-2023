unit Shop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Samples.Spin,Vcl.MPlayer, frmHelp,
  Vcl.CheckLst, Vcl.ControlList, FireDAC.UI.Intf, FireDAC.VCLUI.Error,
  FireDAC.Stan.Error, FireDAC.Stan.Intf, FireDAC.Comp.UI, Math, LoginHelp_u, Registerhelp_u ;

type
  TfrmShop = class(TForm)
    PgcMain: TPageControl;
    TsStartUp: TTabSheet;
    imgHomeRandom: TImage;
    imgIntel: TImage;
    imgNvidia: TImage;
    imgAMD: TImage;
    lblName: TLabel;
    btnRegister: TButton;
    btnLogin: TButton;
    tsLogin: TTabSheet;
    tsRegister: TTabSheet;
    edtRegisterName: TEdit;
    edtUsername: TEdit;
    edtPassword: TEdit;
    lblLoginCredentials: TLabel;
    BitBtnGo: TBitBtn;
    imgLogin: TImage;
    lblSloganRight: TLabel;
    lblWelcome: TLabel;
    pnlUsername: TPanel;
    lblCredentialsAre: TLabel;
    cmbCountry: TComboBox;
    sedAgeRegister: TSpinEdit;
    lblAgeEnter: TLabel;
    tsAdmin: TTabSheet;
    lblSlogan: TLabel;
    edtUsernameCreate: TEdit;
    edtPasswordCreate: TEdit;
    BitBtnClose: TBitBtn;
    BitBtnLogout: TBitBtn;
    lblSelectCountry: TLabel;
    lblFirstPassword: TLabel;
    lblReebterPassword: TLabel;
    Label6: TLabel;
    lbluserName: TLabel;
    edtPasswordConfirm: TEdit;
    btnCreateAccount: TButton;
    lblUsernameE: TLabel;
    lblPasswordE: TLabel;
    tsHome: TTabSheet;
    tsGPU: TTabSheet;
    tsCPU: TTabSheet;
    tsPeripheral: TTabSheet;
    lblWelcomeHomePage: TLabel;
    tsFPSCalc: TTabSheet;
    lblGPUtitel: TLabel;
    lblNvidia: TLabel;
    pnlRTX4060: TPanel;
    pnlRTX4090: TPanel;
    pnlGTX1650: TPanel;
    pnlRTX3050: TPanel;
    rgpGPUuserLevel: TRadioGroup;
    tsCheckoout: TTabSheet;
    btnClearGPUrgp: TButton;
    imgGTX1650: TImage;
    imgRTX3050: TImage;
    imgRTX4060: TImage;
    imgRTX4090: TImage;
    lblGTX1650Price: TLabel;
    lblGTX1650: TLabel;
    BitBtnGTX1650: TBitBtn;
    sed1650Amount: TSpinEdit;
    lblGTX1650Amount: TLabel;
    lblGTX1650Vram: TLabel;
    lblGTX1650Cores: TLabel;
    lblRTX3050: TLabel;
    lblRTX3050Price: TLabel;
    lblRTX3050Vram: TLabel;
    lblRTX3050Cores: TLabel;
    lblRTX3050Amount: TLabel;
    sed3050Amount: TSpinEdit;
    BitBtnRTX3050: TBitBtn;
    chkConfermDetails: TCheckBox;
    lbl4060Price: TLabel;
    lbl4060Vram: TLabel;
    lbl4060Cores: TLabel;
    lbl4060Amount: TLabel;
    sed4060Amount: TSpinEdit;
    BitBtn4060: TBitBtn;
    lbl4060Name: TLabel;
    lbl4090Name: TLabel;
    lbl4090Price: TLabel;
    lbl4090Vram: TLabel;
    lbl4090Cores: TLabel;
    lbl4090Amount: TLabel;
    sedRTX4090: TSpinEdit;
    BitBtn4090: TBitBtn;
    lblCPU: TLabel;
    pnlintelCPU: TPanel;
    pnlAMDcpu: TPanel;
    lblIntel: TLabel;
    lblAMD: TLabel;
    imgIntelCPU: TImage;
    imgAMDcpu: TImage;
    bitbtn12400AddtoCart: TBitBtn;
    BitBtn13600K: TBitBtn;
    BitBtn13700K: TBitBtn;
    lbli512400Price: TLabel;
    lbl13600Price: TLabel;
    lbl13700Price: TLabel;
    lbl13600K: TLabel;
    lbli12400f: TLabel;
    lbl13700K: TLabel;
    BitBtnAMDlow: TBitBtn;
    BitBtnAMDmedium: TBitBtn;
    BitBtnAMDhigh: TBitBtn;
    lblAMDlow: TLabel;
    lblAMDmedium: TLabel;
    lblAMDhigh: TLabel;
    lblAMDhighPrice: TLabel;
    lblAMDmediumPrice: TLabel;
    lblAMDlowPrice: TLabel;
    lblFPScalc: TLabel;
    cmbFPScpu: TComboBox;
    cmbFPSgpu: TComboBox;
    cmbFPSram: TComboBox;
    cmbFPSgame: TComboBox;
    lblFPScpu: TLabel;
    lblFPSgpu: TLabel;
    lblFPSram: TLabel;
    lblFPSgame: TLabel;
    redFPSout: TRichEdit;
    btnCalculateFPS: TButton;
    lblFPSselectSpec: TLabel;
    BitBtnResetFPS: TBitBtn;
    lblPeripherals: TLabel;
    lblBuyHeadsets: TLabel;
    lblbuyKeyboards: TLabel;
    lblbuyMouse: TLabel;
    pnlbuyHeadsets: TPanel;
    pnlbuyKeyboard: TPanel;
    pnlbuyMouse: TPanel;
    imgheadset: TImage;
    lblHeadsetPrice: TLabel;
    BitBtnHeadset: TBitBtn;
    sedHeadsetAmount: TSpinEdit;
    lblHeadsetAmount: TLabel;
    imgKeyboard: TImage;
    lblKeyboardPrice: TLabel;
    lblKeyboardAmount: TLabel;
    lblCorsairHSpro: TLabel;
    lblCorsairK60: TLabel;
    sedKeyboardAmount: TSpinEdit;
    BitBtnKeyboard: TBitBtn;
    lblMousePrice: TLabel;
    BitBtnMouse: TBitBtn;
    sedMouseAmout: TSpinEdit;
    imgRazerMouse: TImage;
    lblMouseAmount: TLabel;
    lblRazerMouse: TLabel;
    lblAdminPage: TLabel;
    btnTheme: TButton;
    cmbTheme: TComboBox;
    lblTheme: TLabel;
    edtCalcOne: TEdit;
    edtCalcTwo: TEdit;
    btnPlus: TButton;
    btnMinus: TButton;
    btnMultiply: TButton;
    btndivide: TButton;
    lblCalc: TLabel;
    imgPCiconOne: TImage;
    imgPCiconTwo: TImage;
    imgCCicon: TImage;
    imgProccessingPowerIcon: TImage;
    lblChangeIcon: TLabel;
    lblOrderCodeMean: TLabel;
    btnResetIcon: TButton;
    lblCheckout: TLabel;
    chkDelivery: TCheckBox;
    lblItemsIncart: TLabel;
    redCart: TRichEdit;
    edtAddress: TEdit;
    redCheck: TRichEdit;
    btnCheckout: TButton;
    btnRemoveItem: TButton;
    lblTotalPriceLabel: TLabel;
    lblTotalPrice: TLabel;
    pnlOrderCode: TPanel;
    lblAddress: TLabel;
    lblOrderCode: TLabel;
    imgThanks: TImage;
    lblCheck: TLabel;
    btnBuyGPU: TButton;
    btnBuyCpu: TButton;
    btnBuyPeripherals: TButton;
    btnFPScalc: TButton;
    bitBtnAdminHelp: TBitBtn;
    btnResetCalculator: TButton;
    btnHomeBackAdmin: TButton;
    bitBtnHomeHelp: TBitBtn;
    BitBtnGPUhelp: TBitBtn;
    BitBtnCPUhelp: TBitBtn;
    BitBtnPeriHelp: TBitBtn;
    BitBtnFPShelp: TBitBtn;
    BitBtnCheckHelp: TBitBtn;
    BitBtnLoginReset: TBitBtn;
    BitBtnRegisterReset: TBitBtn;
    pnlPassword: TPanel;
    btnNoUser: TButton;
    BitBtnRegisterGo: TBitBtn;
    BitBtnCheckHome: TBitBtn;
    BitBtnCheckBack: TBitBtn;
    BitBtnAdminHome: TBitBtn;
    BitBtnAdminNext: TBitBtn;
    BitBtnHomeNext: TBitBtn;
    BitBtnGPUnext: TBitBtn;
    bitbtnGPUback: TBitBtn;
    BitBtnGPUhome: TBitBtn;
    BitBtnCPUnext: TBitBtn;
    BitBtnCPUback: TBitBtn;
    BitBtnCPUhome: TBitBtn;
    BitbtnPeriNext: TBitBtn;
    BitBtnPeriBack: TBitBtn;
    BitBtnPeriHome: TBitBtn;
    BitBtnFPSnext: TBitBtn;
    BitBtnFPSback: TBitBtn;
    BitBtnFPShome: TBitBtn;
    BitBtnLoginBack: TBitBtn;
    BitBtnLoginHelp: TBitBtn;
    BitBtnRegisterBack: TBitBtn;
    BitBtnRegisterHelp: TBitBtn;
    cmbAccounts: TComboBox;
    btnLoadAccounts: TButton;
    lblAccounts: TLabel;
    imgHome: TImage;
    bitbtnCheckClear: TBitBtn;
    lblYUsername: TLabel;
    lblYPassword: TLabel;
    BitBtnCheckout: TBitBtn;
    pnlAdminHelp: TPanel;
    btnHideAdminHelp: TButton;
    pnlRemovefromCart: TPanel;
    rgpCartItems: TRadioGroup;
    sedAmountRemove: TSpinEdit;
    lblRemovefromCart: TLabel;
    btnRemoveCartEXE: TButton;
    pnlCartItemAmount: TPanel;
    btnCloseRemove: TButton;
    lblAmountRemove: TLabel;
    BitBtnResetItems: TBitBtn;
    edtOrderCode: TEdit;
    btnOrderCode: TButton;
    redOrderCodeInfo: TRichEdit;
    pnlGPUhelp: TPanel;
    btnCloseGPUhelp: TButton;
    lblGPUHelp: TLabel;
    redGPUhelp: TRichEdit;
    pnlCPUhelp: TPanel;
    lblCPUhelp: TLabel;
    btnGPUhelpClose: TButton;
    redCPUhelp: TRichEdit;
    pnlHomeHelp: TPanel;
    btnHomeHelpClose: TButton;
    lblHomeHelp: TLabel;
    pnlPerHelp: TPanel;
    lblPerHelp: TLabel;
    btnCPUhelpClose: TButton;
    redPerHelp: TRichEdit;
    pnlCheckoutHelp: TPanel;
    lblCheckoutHelp: TLabel;
    redCheckoutHelp: TRichEdit;
    btnCheckClose: TButton;
    Timer1: TTimer;
    pnlStartUp: TPanel;
    lblStartUpwait: TLabel;
    ProgressBarStartUp: TProgressBar;
    procedure btnClearGPUrgpClick(Sender: TObject);
    procedure chkConfermDetailsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtUsernameCreateEnter(Sender: TObject);
    procedure imgPCiconOneClick(Sender: TObject);
    procedure imgPCiconTwoClick(Sender: TObject);
    procedure imgProccessingPowerIconClick(Sender: TObject);
    procedure imgCCiconClick(Sender: TObject);
    procedure btnResetIconClick(Sender: TObject);
    procedure BitBtnGoClick(Sender: TObject);
    procedure btnCreateAccountClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure BitBtnLoginResetClick(Sender: TObject);
    procedure BitBtnLoginBackClick(Sender: TObject);
    procedure BitBtnRegisterBackClick(Sender: TObject);
    procedure BitBtnRegisterResetClick(Sender: TObject);
    procedure btnNoUserClick(Sender: TObject);
    procedure BitBtnAdminHomeClick(Sender: TObject);
    procedure btnTempNextClick(Sender: TObject);
    procedure BitBtnAdminNextClick(Sender: TObject);
    procedure btnHomeBackAdminClick(Sender: TObject);
    procedure BitBtnHomeNextClick(Sender: TObject);
    procedure btnBuyGPUClick(Sender: TObject);
    procedure btnBuyCpuClick(Sender: TObject);
    procedure btnBuyPeripheralsClick(Sender: TObject);
    procedure btnFPScalcClick(Sender: TObject);
    procedure BitBtnGPUhomeClick(Sender: TObject);
    procedure bitbtnGPUbackClick(Sender: TObject);
    procedure BitBtnGPUnextClick(Sender: TObject);
    procedure BitBtnCPUhomeClick(Sender: TObject);
    procedure BitBtnCPUbackClick(Sender: TObject);
    procedure BitBtnCPUnextClick(Sender: TObject);
    procedure BitBtnFPSnextClick(Sender: TObject);
    procedure BitBtnPeriHomeClick(Sender: TObject);
    procedure BitBtnPeriBackClick(Sender: TObject);
    procedure BitbtnPeriNextClick(Sender: TObject);
    procedure BitBtnFPShomeClick(Sender: TObject);
    procedure BitBtnFPSbackClick(Sender: TObject);
    procedure BitBtnCheckHomeClick(Sender: TObject);
    procedure BitBtnCheckBackClick(Sender: TObject);
    procedure btnThemeClick(Sender: TObject);
    procedure btnResetCalculatorClick(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
    procedure btnMultiplyClick(Sender: TObject);
    procedure btndivideClick(Sender: TObject);
    procedure bitBtnAdminHelpClick(Sender: TObject);
    procedure btnCalculateFPSClick(Sender: TObject);
    procedure edtRegisterNameClick(Sender: TObject);
    procedure cmbCountryClick(Sender: TObject);
    procedure sedAgeRegisterClick(Sender: TObject);
    procedure edtUsernameCreateClick(Sender: TObject);
    procedure edtPasswordCreateClick(Sender: TObject);
    procedure edtPasswordConfirmClick(Sender: TObject);
    procedure BitBtnRegisterGoClick(Sender: TObject);
    procedure btnLoadAccountsClick(Sender: TObject);
    procedure BitBtnLogoutClick(Sender: TObject);
    procedure rgpGPUuserLevelClick(Sender: TObject);
    procedure edtUsernameClick(Sender: TObject);
    procedure edtPasswordClick(Sender: TObject);
    procedure BitBtnGTX1650Click(Sender: TObject);
    procedure BitBtnRTX3050Click(Sender: TObject);
    procedure BitBtn4060Click(Sender: TObject);
    procedure BitBtn4090Click(Sender: TObject);
    procedure bitbtn12400AddtoCartClick(Sender: TObject);
    procedure BitBtn13600KClick(Sender: TObject);
    procedure BitBtn13700KClick(Sender: TObject);
    procedure BitBtnAMDlowClick(Sender: TObject);
    procedure BitBtnAMDmediumClick(Sender: TObject);
    procedure BitBtnAMDhighClick(Sender: TObject);
    procedure BitBtnHeadsetClick(Sender: TObject);
    procedure BitBtnKeyboardClick(Sender: TObject);
    procedure BitBtnMouseClick(Sender: TObject);
    procedure chkDeliveryClick(Sender: TObject);
    procedure btnCheckoutClick(Sender: TObject);
    procedure sedAgeRegisterChange(Sender: TObject);
    procedure BitBtnLoginHelpClick(Sender: TObject);
    procedure BitBtnRegisterHelpClick(Sender: TObject);
    procedure btnHideAdminHelpClick(Sender: TObject);
    procedure redCartChange(Sender: TObject);
    procedure btnCloseRemoveClick(Sender: TObject);
    procedure btnRemoveItemClick(Sender: TObject);
    procedure BitBtnResetItemsClick(Sender: TObject);
    procedure rgpCartItemsClick(Sender: TObject);
    procedure btnRemoveCartEXEClick(Sender: TObject);
    procedure btnOrderCodeClick(Sender: TObject);
    procedure BitBtnCheckoutClick(Sender: TObject);
    procedure bitbtnCheckClearClick(Sender: TObject);
    procedure BitBtnResetFPSClick(Sender: TObject);
    procedure BitBtnGPUhelpClick(Sender: TObject);
    procedure btnCloseGPUhelpClick(Sender: TObject);
    procedure btnGPUhelpCloseClick(Sender: TObject);
    procedure BitBtnCPUhelpClick(Sender: TObject);
    procedure bitBtnHomeHelpClick(Sender: TObject);
    procedure btnHomeHelpCloseClick(Sender: TObject);
    procedure BitBtnPeriHelpClick(Sender: TObject);
    procedure btnCPUhelpCloseClick(Sender: TObject);
    procedure BitBtnFPShelpClick(Sender: TObject);
    procedure BitBtnCheckHelpClick(Sender: TObject);
    procedure btnCheckCloseClick(Sender: TObject);
    procedure edtRegisterNameChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);



  private
    { Private declarations }
      Countdown,ProgressValue : Integer;
  public
    { Public declarations }
    var
      sAdmin, sUserOne, sRegisterUser, sPasswordCheckout, sOrderCode,   sUsernameCheckout : string ;
      iLoginTries : integer ;
      rTotalCost : real ;
      bAdmin : boolean ;
      // For Item Removal
      iCPU1Amount, iCPU2Amount, iCPU3Amount, iCPU4Amount, iCPU5Amount, iCPU6Amount : integer ;
      iGPU1Amount, iGPU2Amount, iGPU3Amount, iGPU4Amount, iRemoveSpin : integer ;
      iPer1Amount, iPer2Amount, iPer3Amount  : integer ;
      bCPU1Amount, bCPU2Amount, bCPU3Amount, bCPU4Amount, bCPU5Amount, bCPU6Amount : boolean ;
      bGPU1Amount, bGPU2Amount, bGPU3Amount, bGPU4Amount : boolean ;
      bPer1Amount, bPer2Amount, bPer3Amount  : boolean ;
  end;

var
  frmShop: TfrmShop;

implementation

{$R *.dfm}

procedure TfrmShop.bitbtn12400AddtoCartClick(Sender: TObject);
var
    rPrice : real ;
begin
// This will add the cost to the total price
rPrice :=  3500.50 ;
rTotalCost :=  rTotalCost + rPrice ;
redCart.Lines.Add('i5 12400f' +#9+ '1'+#9+ floattostrf(rPrice,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bCPU1Amount = true then
  begin
  rgpCartItems.Items.Add('i5 12400f') ;
  bCPU1Amount := false ;
  end;
  inc(iCPU1Amount)  ;

end;

procedure TfrmShop.BitBtn13600KClick(Sender: TObject);
var
    rPrice : real ;
begin
// This will add the cost to the total price
rPrice :=  7200.99 ;
rTotalCost :=  rTotalCost + rPrice ;
redCart.Lines.Add('i5 13600K' +#9+ '1'+#9+ floattostrf(rPrice,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bCPU2Amount = true then
  begin
  rgpCartItems.Items.Add('i5 13600K') ;
  bCPU2Amount := false ;
  end;
  inc(iCPU2Amount)  ;
end;

procedure TfrmShop.BitBtn13700KClick(Sender: TObject);
var
    rPrice : real ;
begin
// This will add the cost to the total price
rPrice :=  9600.50 ;
rTotalCost :=  rTotalCost + rPrice ;
redCart.Lines.Add(' i7 13700K' +#9+ '1'+#9+ floattostrf(rPrice,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bCPU3Amount = true then
  begin
  rgpCartItems.Items.Add('i7 13700K') ;
  bCPU3Amount := false ;
  end;
  inc(iCPU3Amount)  ;
end;

procedure TfrmShop.BitBtn4060Click(Sender: TObject);
var
    iItemAmount : integer ;
    rPrice, rSubCost : real ;
begin
// This will add the cost to the total price
iItemAmount := sed4060Amount.Value ;
rPrice :=  7500.99 ;
rSubCost := iItemAmount * rPrice  ;
rTotalCost :=  rTotalCost + rSubCost ;
redCart.Lines.Add('RTX 4060' +#9+ inttostr(iItemAmount)+#9+ floattostrf(rSubCost,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bGPU3Amount = true then
  begin
  rgpCartItems.Items.Add('RTX 4060') ;
  bGPU3Amount := false ;
  end;
  inc(iGPU3Amount, iItemAmount)  ;
end;

procedure TfrmShop.BitBtn4090Click(Sender: TObject);
var
    iItemAmount : integer ;
    rPrice, rSubcost : real ;
begin
// This will add the cost to the total price
iItemAmount := sedRTX4090.Value ; ;
rPrice :=  42000.99 ;
rSubcost :=  iItemAmount * rPrice ;
rTotalCost :=  rTotalCost + rSubcost ;
redCart.Lines.Add('RTX 4090' +#9+ inttostr(iItemAmount)+#9+ floattostrf(rSubcost,ffCurrency,10,2) ) ;  // Ads to the remove option
  if bGPU4Amount = true then
  begin
  rgpCartItems.Items.Add('RTX 4090') ;
  bGPU4Amount := false ;
  end;
  inc(iGPU4Amount, iItemAmount)  ;

end;

procedure TfrmShop.bitBtnAdminHelpClick(Sender: TObject);
begin
// Show help to admin by asking him to contact the developer using email ;
pnlAdminHelp.Show ;
end;

procedure TfrmShop.BitBtnAdminHomeClick(Sender: TObject);
begin
//Goes to the Hoem page from the admin page
tsAdmin.TabVisible := false ;
tsHome.TabVisible := true ;
btnHomeBackAdmin.Show ;
end;

procedure TfrmShop.BitBtnAdminNextClick(Sender: TObject);
begin
//Goes to the Hoem page from the admin page
tsAdmin.TabVisible := false ;
tsHome.TabVisible := true ;
btnHomeBackAdmin.Show ;
end;

procedure TfrmShop.BitBtnAMDhighClick(Sender: TObject);
var
    rPrice : real ;
begin
// This will add the cost to the total price
rPrice := 7800.50 ;
rTotalCost :=  rTotalCost + rPrice ;
redCart.Lines.Add('Ryzen 9 5900X' +#9+ '1'+#9+ floattostrf(rPrice,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bCPU6Amount = true then
  begin
  rgpCartItems.Items.Add('Ryzen 9 5900X') ;
  bCPU6Amount := false ;
  end;
  inc(iCPU6Amount)  ;
end;

procedure TfrmShop.BitBtnAMDlowClick(Sender: TObject);
var
    rPrice : real ;
begin
// This will add the cost to the total price
rPrice :=  3000.99 ;
rTotalCost :=  rTotalCost + rPrice ;
redCart.Lines.Add('Ryzen 5 5600G' +#9+ '1'+#9+ floattostrf(rPrice,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bCPU4Amount = true then
  begin
  rgpCartItems.Items.Add('Ryzen 5 5600G') ;
  bCPU4Amount := false ;
  end;
  inc(iCPU4Amount)  ;
end;

procedure TfrmShop.BitBtnAMDmediumClick(Sender: TObject);
var
    rPrice : real ;
begin
// This will add the cost to the total price
rPrice := 5300.50 ;
rTotalCost :=  rTotalCost + rPrice ;
redCart.Lines.Add('Ryzen 5 7600' +#9+ '1'+#9+ floattostrf(rPrice,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bCPU5Amount = true then
  begin
  rgpCartItems.Items.Add('Ryzen 5 7600') ;
  bCPU5Amount := false ;
  end;
  inc(iCPU5Amount)  ;
end;

procedure TfrmShop.BitBtnCheckBackClick(Sender: TObject);
begin
// Goes to the FPS page from the checkout page
tsCheckoout.TabVisible := false ;
tsFPSCalc.TabVisible := true ;
btnCheckout.Enabled := true ;
end;

procedure TfrmShop.bitbtnCheckClearClick(Sender: TObject);
var
  iNumConfirm, iNumberconfirmed : integer ;
  sNumConfirm, sAskConfirm : string ;
begin
// Clears the Cart completely(Removes everyting)
iNumConfirm := RandomRange(1000,10000) ;

sAskConfirm := 'Enter this number below to confirm: ' + inttostr(iNumConfirm)   ;
sNumConfirm := InputBox(sAskConfirm,'Enter here:','')  ;

  if (sNumConfirm = '') or (sNumConfirm = ' ' ) then
  begin
    ShowMessage('No number entered.')   ;
    exit ;
  end;

  if not TryStrToInt(sNumConfirm, iNumberConfirmed) then
  begin
  ShowMessage('Please enter the number without letters.');
  Exit;
  end;
  // Sets the values for the Cart removal tool
  if iNumberconfirmed = iNumConfirm  then
  begin
  // Sets the Start Values for the Removal Amounts
  // Integers
  iCPU1Amount := 0 ;
  iCPU2Amount := 0 ;
  iCPU3Amount  := 0 ;
  iCPU4Amount  := 0 ;
  iCPU5Amount  := 0 ;
  iCPU6Amount  := 0 ;

  iGPU1Amount  := 0 ;
  iGPU2Amount   := 0 ;
  iGPU3Amount   := 0 ;
  iGPU4Amount := 0 ;

  iPer1Amount   := 0 ;
  iPer2Amount   := 0 ;
  iPer3Amount    := 0 ;
  // Booleans
  bCPU1Amount:= true ;
  bCPU2Amount := true ;
  bCPU3Amount  := true ;
  bCPU4Amount  := true ;
  bCPU5Amount  := true ;
  bCPU6Amount := true ;

  bGPU1Amount  := true ;
  bGPU2Amount   := true ;
  bGPU3Amount  := true ;
  bGPU4Amount := true ;

  bPer1Amount   := true ;
  bPer2Amount   := true ;
  bPer3Amount    := true ;

  rTotalCost := 0 ;
  redCart.Clear ;
  rgpCartItems.Items.Clear ;

  ShowMessage('Your cart has been cleared.') ;
  end
  else
  ShowMessage('The numbers do not match, Please try again')  ;

end;

procedure TfrmShop.BitBtnCheckHelpClick(Sender: TObject);
begin
// Shows the Help panel for the checkout page
pnlCheckoutHelp.Show;
redCheckoutHelp.Clear ;
// Display help
redCheckoutHelp.ReadOnly := true ;
redCheckoutHelp.Lines.Add('1.To remove an item from your cart click on the REMOVE ITEM FROM CART button.')   ;
redCheckoutHelp.Lines.Add('1.1.Next you should click on the item to remove and then select the amount of the item you would like to remove in the box with the up and down arrows. Press the Remove button to remove the item from your cart.') ;
redCheckoutHelp.Lines.add('')  ;
redCheckoutHelp.Lines.Add('2.To get a Delivery click on the "Would you like a Delivery" checkbox and enter your address below it. To cancel for a delivery uncheck the checkbox.')    ;
redCheckoutHelp.Lines.Add('')  ;
redCheckoutHelp.Lines.Add('To Checkout, click on the checkout button and Enter your password when prompted to do so.')  ;
end;

procedure TfrmShop.BitBtnCheckHomeClick(Sender: TObject);
begin
// Goes to the home page from the checkout page
tsCheckoout.TabVisible := false ;
tsHome.TabVisible := true ;
btnCheckout.Enabled := true ;
end;

procedure TfrmShop.BitBtnCheckoutClick(Sender: TObject);
begin
// Goes to the checkout page from the current active page
PgcMain.ActivePage.TabVisible := false ;
tsCheckoout.TabVisible := true ;
end;

procedure TfrmShop.BitBtnCPUbackClick(Sender: TObject);
begin
//Goes to the GPU page from the CPU page
tsCPU.TabVisible := false ;
tsGPU.TabVisible := true ;
end;

procedure TfrmShop.BitBtnCPUhelpClick(Sender: TObject);
begin
// Shows the panel for CPU help
pnlCPUhelp.Show ;
// Displays the help
redCPUhelp.Clear ;
redCPUhelp.ReadOnly := true ;
redCPUhelp.Lines.Add('1.You can Add a CPU to your cart by clickin on the add to cart button below it.')  ;
redCPUhelp.Lines.Add('2.To add more that one CPU to the cart the Add to Cart button will have to be clicked the desired amount of time.')   ;
redCPUhelp.Lines.Add('3.To remove a CPU from the cart, go to the Checkout page and click on remove from cart.') ;
end;

procedure TfrmShop.BitBtnCPUhomeClick(Sender: TObject);
begin
//Goes to the Home page from the CPU page
tsCPU.TabVisible := false ;
tsHome.TabVisible := true ;
end;

procedure TfrmShop.BitBtnCPUnextClick(Sender: TObject);
begin
//Goes to the Periferal page from the CPU page
tsCpU.TabVisible := false ;
tsPeripheral.TabVisible := true ;
end;

procedure TfrmShop.BitBtnFPSbackClick(Sender: TObject);
begin
// Goes from the FPS page to the Periferal page
tsFPSCalc.TabVisible := false ;
tsPeripheral.TabVisible := true ;
end;

procedure TfrmShop.BitBtnFPShelpClick(Sender: TObject);
begin
// Displays a help message for the FPS page
ShowMessage('1.Select the Parts from the dropdowm Lists at the 4 Places available.'+#13+'2.After this you should press the Calculate FPS button and then your configuratuion along with your estimated FPS will be displayed.') ;
end;

procedure TfrmShop.BitBtnFPShomeClick(Sender: TObject);
begin
//Goes to the home page from the FPS page ;
tsFPScalc.TabVisible := false ;
tsHome.TabVisible := true ;
end;

procedure TfrmShop.BitBtnFPSnextClick(Sender: TObject);
begin
// This will go from the FPS page to the Checkout Page
tsFPSCalc.TabVisible := false ;
tsCheckoout.TabVisible := true ;
end;

procedure TfrmShop.BitBtnGoClick(Sender: TObject);
var
    sUsername, sPassword, sCredentailsCombined, sAdminCode : string ;
    bPassword : boolean ;
begin
// This button will log the user into their profile
//Input
sUsername := edtUsername.Text ;
sPassword := edtPassword.Text ;
bPassword := false ;
bAdmin := false ;
//Validation
  if sUsername = '' then
  begin
  edtUsername.Color := clRed ;
  ShowMessage('Please enter an username.') ;
  exit;
  end
  else
  if sPassword = '' then
  begin
  edtPassword.Color := clRed ;
  ShowMessage('Please enter a password.')   ;
  exit;
  end;
  // Create the string that the program will use to compare the input with the accounts
sCredentailsCombined := sUsername + #9 + sPassword ;

  if sCredentailsCombined = sAdmin then
  begin
  // This will make shure that this is truly the admin by asking for an admin code
  sAdminCode := InputBox('Enter the admin code.','→','')   ;
    if sAdminCode ='A123DF' then
    begin
    tsLogin.TabVisible := false ; ;
    tsAdmin.TabVisible := true ;
    bPassword := true ;
    BitBtnLogout.Show ;
    bAdmin := true ;
    end
    else
    ShowMessage('Invalid Admin code')  ;
  end
  else
  if sCredentailsCombined = sUserOne  then
  begin
  tsLogin.TabVisible := false ;
  tsHome.TabVisible := true ;
  BitBtnLogout.show ;
  bPassword := true ;
  end
  else
  if sCredentailsCombined = sRegisterUser  then
  begin
  tsLogin.TabVisible := false  ;
  tsHome.TabVisible := true ;
  BitBtnLogout.show ;
  bPassword := true ;
  end
  else
  begin
    inc(iLoginTries)  ;
    if iLoginTries > 1 then
    begin
    btnNoUser.Visible := true ;
    ShowMessage('No account? Register Today!') ;
    end
    else
    ShowMessage('Please Check Credentials')  ;
  end;

  if bPassword = true then
  begin
    sPasswordCheckout := sPassword ;
    sUsernameCheckout := sUsername ;
    BitBtnCheckout.Show ;
  end;


end;

procedure TfrmShop.bitbtnGPUbackClick(Sender: TObject);
begin
//Goes to the Hoem page from the GPU page
tsGPU.TabVisible := false ;
tsHome.TabVisible := true ;
end;

procedure TfrmShop.BitBtnGPUhelpClick(Sender: TObject);
begin
// Shows the Panel for GPU help
pnlGPUhelp.Show ;
// Displays the contents of the panel
redGPUhelp.Clear ;
redGPUhelp.ReadOnly := true ;
redGPUhelp.Lines.Add('1.You can select the range of GPU that you would like to display at the above clickspaces.') ;
redGPUhelp.Lines.Add('2.You are able to add a certain amount of a GPU to your cart by clicking up or down with the arrows and then clicking on the add to cart button which will then add the item with its amount to the cart.')   ;
redGPUhelp.Lines.Add('3.You will be able to remove a product from your cart by clicking on the REMOVE ITEM FROM CART button on the checkout page.') ;
end;

procedure TfrmShop.BitBtnGPUhomeClick(Sender: TObject);
begin
//Goes to the Hoem page from the GPU page
tsGPU.TabVisible := false ;
tsHome.TabVisible := true ;
end;

procedure TfrmShop.BitBtnGPUnextClick(Sender: TObject);
begin
//Goes to the CPU page from the GPU page
tsGPU.TabVisible := false ;
tsCPU.TabVisible := true ;
end;

procedure TfrmShop.BitBtnGTX1650Click(Sender: TObject);
var
    iItemAmount : integer ;
    rPrice, rSubcost : real ;
begin
// This will add the cost to the total price
iItemAmount := sed1650Amount.Value ;
rPrice :=  4000.60 ;
rSubcost :=  iItemAmount * rPrice ;
rTotalCost :=  rTotalCost + rSubcost ;
redCart.Lines.Add('GTX 1650' +#9+ inttostr(iItemAmount)+#9+ floattostrf(rSubcost,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bGPU1Amount = true then
  begin
  rgpCartItems.Items.Add('GTX 1650') ;
  bGPU1Amount := false ;
  end;
  inc(iGPU1Amount, iItemAmount)  ;
end;

procedure TfrmShop.BitBtnHeadsetClick(Sender: TObject);
var
    iItemAmount : integer ;
    rPrice, rSubcost : real ;
begin
// Ads the headset and amount to the users cart
iItemAmount := sedHeadsetAmount.Value ;
rPrice := 1800.99 ;
rSubcost :=  iItemAmount * rPrice ;
rTotalCost :=  rTotalCost + rSubcost ;
redCart.Lines.Add('HS70 Pro Carbon' +#9+ inttostr(iItemAmount)+#9+ floattostrf(rSubcost,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bPer1Amount = true then
  begin
  rgpCartItems.Items.Add('HS70 Pro Carbon') ;
  bPer1Amount := false ;
  end;
  inc(iPer1Amount, iItemAmount)  ;
end;


procedure TfrmShop.bitBtnHomeHelpClick(Sender: TObject);
begin
// Shows the Panel for Help on the home page
pnlHomeHelp.Show ;
// Display the help
pnlHomeHelp.Caption := 'Click on the large buttons to quicly go to the page that you need.' ;
end;

procedure TfrmShop.BitBtnHomeNextClick(Sender: TObject);
begin
//Goes to the GPU page from the home page
tsHome.TabVisible := false ;
tsGPU.TabVisible := true ;
end;

procedure TfrmShop.BitBtnKeyboardClick(Sender: TObject);
var
    iItemAmount : integer ;
    rPrice, rSubcost : real ;
begin
// Ads the Keyboard to the cart
iItemAmount := sedKeyboardAmount.Value ;
rPrice := 1600.99 ;
rSubcost :=  iItemAmount * rPrice ;
rTotalCost :=  rTotalCost + rSubcost ;
redCart.Lines.Add('Corsair K60' +#9+ inttostr(iItemAmount)+#9+ floattostrf(rSubcost,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bPer2Amount = true then
  begin
  rgpCartItems.Items.Add('Corsair K60') ;
  bPer2Amount := false ;
  end;
  inc(iPer2Amount, iItemAmount)  ;
end;

procedure TfrmShop.BitBtnLoginBackClick(Sender: TObject);
begin
//Goes Back to the StartUp page from the login page
tsLogin.TabVisible := false ;
TsStartUp.TabVisible := true ;
edtUsername.Clear ;
edtPassword.Clear ;
end;

procedure TfrmShop.BitBtnLoginHelpClick(Sender: TObject);
begin
// Shows the help page for the login screen
frmLoginHelp.ShowModal ;
end;

procedure TfrmShop.BitBtnLoginResetClick(Sender: TObject);
begin
//Reset's the edits where the user can insert their Username and Password
edtUsername.Clear ;
edtPassword.Clear ;
end;

procedure TfrmShop.BitBtnLogoutClick(Sender: TObject);
begin
// Logs out and goes to the Start screen
edtRegisterName.Enabled := true ;
cmbCountry.Enabled := true  ;
sedAgeRegister.Enabled := true ;
edtUsernameCreate.Enabled := true ;
edtPasswordCreate.Enabled := true ;
edtPasswordConfirm.Enabled := true ;
chkConfermDetails.Enabled := true ;
btnCreateAccount.Enabled := true ;
btnCheckout.Enabled := true ;

edtRegisterName.Clear ;
cmbCountry.ItemIndex  := -1 ;
sedAgeRegister.Value := 18 ;
edtUsernameCreate.Clear ;
edtPasswordCreate.clear ;
edtPasswordConfirm.Clear ;
chkConfermDetails.Checked := false ;

edtUsername.Clear ;
edtPassword.clear ;
btnHomeBackAdmin.Hide ;
BitBtnLogout.Hide ;
BitBtnCheckout.Hide ;
// Set spinEdits
sed1650Amount.Value := 1 ;
sed3050Amount.Value := 1 ;
sed4060Amount.Value := 1 ;
sedRTX4090.Value := 1 ;
sedHeadsetAmount.Value := 1 ;
sedKeyboardAmount.Value := 1 ;
sedMouseAmout.Value := 1 ;
// Resets the Radiogroup used to show to level of GPU to show to the user
rgpGPUuserLevel.ItemIndex := -1 ;

pnlGTX1650.Show ;
pnlGTX1650.Top := 96 ;
pnlGTX1650.Left := 335 ;
pnlRTX3050.Show ;
pnlRTX3050.top :=  96 ;
pnlRTX3050.Left := 677 ;
pnlRTX4060.Show ;
pnlRTX4060.Top := 306 ;
pnlRTX4060.Left := 335 ;
pnlRTX4090.show ;
pnlRTX4090.Top := 306 ;
pnlRTX4090.Left := 677 ;

// Resets the FPS Page as it was when the user first opened it
redFPSout.Clear ;
cmbFPScpu.ItemIndex := -1 ;
cmbFPSgpu.ItemIndex := -1 ;
cmbFPSram.ItemIndex := -1 ;
cmbFPSgame.ItemIndex := -1 ;
// Runs the Form Activate
FormActivate(frmShop)   ;
end;

procedure TfrmShop.BitBtnMouseClick(Sender: TObject);
var
    iItemAmount : integer ;
    rPrice, rSubcost : real ;
begin
// Ads the mouse to the cart
iItemAmount := sedMouseAmout.Value ; ;
rPrice := 1100.30 ;
rSubcost :=  iItemAmount * rPrice ;
rTotalCost :=  rTotalCost + rSubcost ;
redCart.Lines.Add('Razer Cobra Wired' +#9+ inttostr(iItemAmount)+#9+ floattostrf(rSubcost,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bPer3Amount = true then
  begin
  rgpCartItems.Items.Add('Razer Cobra Wired') ;
  bPer3Amount := false ;
  end;
  inc(iPer3Amount, iItemAmount)  ;
end;

procedure TfrmShop.BitBtnPeriBackClick(Sender: TObject);
begin
// Goes to the CPU page from the Periferal Page
tsPeripheral.TabVisible := false ;
tsCpu.TabVisible := true ;
end;

procedure TfrmShop.BitBtnPeriHelpClick(Sender: TObject);
begin
// Shows the panel for the Peripheral help
pnlPerHelp.Show ;
// Display Help
redPerHelp.Clear ;
redperhelp.ReadOnly := true ;
redPerhelp.Lines.Add('1.You are able to add a certain amount of a Peripherals to your cart by clicking the up or down arrows and then clicking on the Add to Cart button which will then add the item with its amount to the cart.')   ;
redPerhelp.Lines.Add('2.You will be able to remove a product from your cart by clicking on the REMOVE ITEM FROM CART button on the checkout page.') ;
end;


procedure TfrmShop.BitBtnPeriHomeClick(Sender: TObject);
begin
// Goes to the Home page from the periferal page
tsPeripheral.TabVisible := false ;
tsHome.TabVisible := true ;
end;

procedure TfrmShop.BitbtnPeriNextClick(Sender: TObject);
begin
// Goes from pereferal page to the FPS page
tsPeripheral.TabVisible := false ;
tsFPSCalc.TabVisible := true ;
end;

procedure TfrmShop.BitBtnRegisterBackClick(Sender: TObject);
begin
//Goes back to the startup page from the register page
tsRegister.TabVisible := false ;
TsStartUp.TabVisible := true ;

edtRegisterName.Clear ;
cmbCountry.ItemIndex  := -1 ;
sedAgeRegister.Value := 18 ;
edtUsernameCreate.Clear ;
edtPasswordCreate.clear ;
edtPasswordConfirm.Clear ;
chkConfermDetails.Checked := false ;
end;

procedure TfrmShop.BitBtnRegisterGoClick(Sender: TObject);
begin
// This will go from the Register page to the home page
tsRegister.TabVisible := false ;    ;
tsHome.TabVisible := true ;
sPasswordCheckout := pnlPassword.Caption ;
  BitBtnCheckout.Show ;
end;

procedure TfrmShop.BitBtnRegisterHelpClick(Sender: TObject);
begin
// Shows the Help page
frmRegisterHelp.ShowModal  ;
end;

procedure TfrmShop.BitBtnRegisterResetClick(Sender: TObject);
begin
//This will clear the input devices where the user inserted their information
edtRegisterName.Clear ;
cmbCountry.ItemIndex  := -1 ;
sedAgeRegister.Value := 18 ;
edtUsernameCreate.Clear ;
edtPasswordCreate.clear ;
edtPasswordConfirm.Clear ;
chkConfermDetails.Checked := false ;
end;

procedure TfrmShop.BitBtnResetFPSClick(Sender: TObject);
begin
// Resets the FPS Page as it was when the user first opened it
redFPSout.Clear ;
cmbFPScpu.ItemIndex := -1 ;
cmbFPSgpu.ItemIndex := -1 ;
cmbFPSram.ItemIndex := -1 ;
cmbFPSgame.ItemIndex := -1 ;
end;

procedure TfrmShop.BitBtnResetItemsClick(Sender: TObject);
begin
// Will reset the Radio Group so that it has to option selected, it will also clear the output
rgpCartItems.ItemIndex := -1 ;
sedAmountRemove.Value := 1 ;
pnlCartItemAmount.Caption := '' ;
end;

procedure TfrmShop.BitBtnRTX3050Click(Sender: TObject);
var
    iItemAmount : integer ;
    rPrice, rSubcost : real ;
begin
// This will add the cost to the total price
iItemAmount := sed3050Amount.Value ;
rPrice :=  6000.50 ;
rSubcost :=  iItemAmount * rPrice ;
rTotalCost :=  rTotalCost + rSubcost ;
redCart.Lines.Add('RTX 3050' +#9+ inttostr(iItemAmount)+#9+ floattostrf(rSubcost,ffCurrency,10,2) ) ;
// Ads to the remove option
  if bGPU2Amount = true then
  begin
  rgpCartItems.Items.Add('RTX 3050') ;
  bGPU2Amount := false ;
  end;
  inc(iGPU2Amount, iItemAmount)  ;
end;

procedure TfrmShop.btnBuyCpuClick(Sender: TObject);
begin
//Goes to the CPU page from the home page
tsHome.TabVisible := false ;
tsCPU.TabVisible := true ;
end;

procedure TfrmShop.btnBuyGPUClick(Sender: TObject);
begin
//Goes to the GPU page from the Home page
tsHome.TabVisible := false ;
tsGPU.TabVisible := true ;
end;

procedure TfrmShop.btnBuyPeripheralsClick(Sender: TObject);
begin
// Goes to the peripheral page from the Home page
tsHome.TabVisible := false ;
tsPeripheral.TabVisible := true ;
end;

procedure TfrmShop.btnCalculateFPSClick(Sender: TObject);
var
    sCPU, sGPU, sRAM, sGame, sDispaly : string ;
    iFPS : integer ;
begin
// This button will determine the estimated FPS for the options provided
// Set the Scene
redFPSout.ReadOnly := true ;
redFPSout.Clear ;
redFPSout.Font.Size := 14 ;
redFPSout.Font.Color := clRed ;

// Data Validation
  if cmbFPScpu.ItemIndex = -1 then
  begin
  ShowMessage('Please Select CPU') ;
  exit ;
  end
  else
   if cmbFPSgpu.ItemIndex = -1 then
  begin
  ShowMessage('Please Select GPU') ;
  exit;
  end
  else
   if cmbFPSram.ItemIndex = -1 then
  begin
  ShowMessage('Please Select RAM') ;
  exit;
  end
  else
   if cmbFPSgame.ItemIndex = -1 then
  begin
  ShowMessage('Please Select Game') ;
  exit;
  end
  else    //This is where the FPS configuration will be procced  and the codes will be created
  begin
      if cmbFPScpu.ItemIndex = 0 then
// begin
      sCPU := 'Q'
      else
      if cmbFPScpu.ItemIndex = 1 then
      sCPU := 'W' ;

      if cmbFPSgpu.ItemIndex = 0 then
      begin
      sGPU := 'A' ;
      end
      else
      if cmbFPSgpu.ItemIndex = 1 then
      begin
        sGPU := 'S' ;
      end;

      if cmbFPSRam.ItemIndex = 0 then
      begin
      sRAM := 'Z' ;
      end
      else
      if cmbFPSRam.ItemIndex = 1 then
      begin
      sRam := 'X' ;
      end;

      if cmbFPSgame .ItemIndex = 0 then
      begin
      sGame := 'P' ;
      end
      else
      if cmbFPSGame.ItemIndex = 1 then
      begin
        sGame := 'O' ;
      end;

// end                          // Alternative longer method
   
  sDispaly := sCPU + sGPU + sRAM + sGame ;

  // redFPSout.Lines.Add(sDispaly) ; { Displayed for developer reasons  }
  // The FPS number calculator with the codes(Combinations)
  if sDispaly = 'QAZP' then
  iFPS := 400 ;
  if sDispaly = 'QAZO' then
  iFPS := 250 ;
  if sDispaly = 'QAXP' then
  iFPS := 425 ;
  if sDispaly = 'QAXO' then
  iFPS := 270 ;
  if sDispaly = 'QSZP' then
  iFPS := 600 ;
  if sDispaly = 'QSZO' then
  iFPS := 400 ;
  if sDispaly = 'QSXP' then
  iFPS := 640 ;
  if sDispaly = 'QSXO' then
  iFPS := 420 ;

  if sDispaly = 'WAZP' then
  iFPS := 450 ;
  if sDispaly = 'WAZO' then
  iFPS := 260 ;
  if sDispaly = 'WAXP' then
  iFPS := 475 ;
  if sDispaly = 'WAXO' then
  iFPS := 280 ;
  if sDispaly = 'WSZP' then
  iFPS := 650 ;
  if sDispaly = 'WSZO' then
  iFPS := 420 ;
  if sDispaly = 'WSXP' then
  iFPS := 700 ;
  if sDispaly = 'WSXO' then
  iFPS := 440 ;
   //Output
  redFPSout.Lines.Add('This is your configuration: ')  ;
  redFPSout.Lines.Add('CPU: '+ cmbFPScpu.text )  ;
  redFPSout.Lines.Add('GPU: '+ cmbFPSgpu.Text )  ;
  redFPSout.Lines.Add('RAM: '+ cmbFPSram.Text )  ;
  redFPSout.Lines.Add('Game: '+ cmbFPSgame.Text );
  redFPSout.Lines.Add('Your Estimated FPS is: '+ inttostr(iFPS))  ;
  end;

end;

procedure TfrmShop.btnCheckCloseClick(Sender: TObject);
begin
// Close the help panel for the Checkout help
pnlCheckoutHelp.Hide ;
end;

procedure TfrmShop.btnCheckoutClick(Sender: TObject);
var
    sConfirmOrder, sCustomerType, sDelivery, sAlphabet, sTotalPrice, sCopyPrice : string ;
    iRandomNumber, iRandomLetter, iLoop, iCharIncrease, iPriceLength : integer ;
    sPriceNum1, sPriceNum2, sPriceNum3, sPriceLength, sPriceNum4, sAddress : string ;
    cLetter1, cLetter2, cLetter3, cLetter4, cPriceNumber : char ;
    sTime, sDate : string ;

begin
// This will ask for your password and create the checkout code as well as the check
  if chkDelivery.Checked = true  then
  begin
     if  (edtAddress.Text = '') then
     begin
     ShowMessage('Please enter your delivery address.')  ;
     exit;
   end;
  end;

 if rTotalCost < 1000 then
 begin
 ShowMessage('No Product in Cart!')   ;
 exit;
 end;
 
redCheck.Clear ;
sConfirmOrder := InputBox('Please enter your account password','Enter','')  ;
  if sConfirmOrder = sPasswordCheckout  then
  begin
    //Create the product code
    sAlphabet := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'   ;
    iCharIncrease := 0 ;
    //Determine if the customer is the Admin or a customer
    if bAdmin = true then
    sCustomerType := 'A'
    else
    sCustomerType := 'C' ;
    // Determine if the order is for delivery or in store pickup
    if chkDelivery.Checked = true then
    sDelivery := 'D'
    else
    sDelivery := 'P'  ;
    //Create the random number for the code
    iRandomNumber := RandomRange(100,1000)  ;
    // Create the 4 Random Letters to display in the order code
    for iLoop := 1 to 4 do
    begin
    inc(iCharIncrease)     ;
    iRandomLetter := RandomRange(1,27) ;
      if iCharIncrease = 1 then
      cLetter1 := sAlphabet[iRandomLetter] ;
      if iCharIncrease = 2 then
      cLetter2 := sAlphabet[iRandomLetter] ;
      if iCharIncrease = 3 then
      cLetter3 := sAlphabet[iRandomLetter] ;
      if iCharIncrease = 4 then
      cLetter4 := sAlphabet[iRandomLetter] ;
    end;

    // Determine the numbers that will be dispalyed at their location on the order code
    iLoop := 0   ;
    iCharIncrease := 0 ;
    sTotalPrice := floattostr(rTotalCost)      ;
    for iLoop := 1 to 4 do
    begin
    inc(iCharIncrease) ;
      if iCharIncrease = 1 then
        sPriceNum1 := sTotalPrice[1] ;
        if iCharIncrease = 2 then
          sPriceNum2 := sTotalPrice[2];
          if iCharIncrease = 3 then
            sPriceNum3 := sTotalPrice[3] ;
            if iCharIncrease = 4 then
            begin
            iPriceLength := sTotalPrice.Length ;
            sCopyPrice := copy(sTotalPrice,4,(iPriceLength-3))   ;
            sPriceNum4 := sCopyPrice ;
            end;
    end;
    // Create the final order code as a string
    sOrderCode := sCustomerType + sDelivery + sPriceNum1 + cLetter1 + sPriceNum2 + cLetter2 + inttostr(iRandomNumber) + cLetter3 + sPriceNum3 + cLetter4 + sPriceNum4 ;

    ////////////////////
    pnlOrderCode.Font.Size := 15 ;
    pnlOrderCode.Font.Style := [fsBold]  ;
    pnlOrderCode.Caption := sOrdercode ;

  // Create the cheque for the customer
  // Set the time
  sTime := timetostr(Time)   ;
  sDate := Datetostr(Date)   ;

  sAddress := edtAddress.Text ;
  // Display(Output)
  redCheck.SelAttributes.Color := clblue ;
  redCheck.SelAttributes.Size := 12 ;
  redCheck.Lines.Add('Cercuit Central')  ;
  redCheck.Lines.Add('Purchase for account '+sUsernameCheckout +' on '+#10+sDate+' at '+sTime) ;
  redCheck.Lines.Add('Order Code: '+ sOrderCode)    ;
   if chkDelivery.Checked = true  then
  redCheck.Lines.Add('Delivery addres: '+ sAddress)  ;

  redCheck.seltext := 'Your Amount is: ' ;
  redCheck.SelAttributes.Color := clRed ;
  redCheck.SelText := floattostrf(rTotalCost,ffCurrency,10,2)  ;

  // Final Resets
  rTotalCost := 0 ;
  // Sets the Start Values for the Removal Amounts
  // Integers
  iCPU1Amount := 0 ;
  iCPU2Amount := 0 ;
  iCPU3Amount  := 0 ;
  iCPU4Amount  := 0 ;
  iCPU5Amount  := 0 ;
  iCPU6Amount  := 0 ;

  iGPU1Amount  := 0 ;
  iGPU2Amount   := 0 ;
  iGPU3Amount   := 0 ;
  iGPU4Amount := 0 ;

  iPer1Amount   := 0 ;
  iPer2Amount   := 0 ;
  iPer3Amount    := 0 ;
  // Booleans
  bCPU1Amount:= true ;
  bCPU2Amount := true ;
  bCPU3Amount  := true ;
  bCPU4Amount  := true ;
  bCPU5Amount  := true ;
  bCPU6Amount := true ;

  bGPU1Amount  := true ;
  bGPU2Amount   := true ;
  bGPU3Amount  := true ;
  bGPU4Amount := true ;

  bPer1Amount   := true ;
  bPer2Amount   := true ;
  bPer3Amount    := true ;

  edtAddress.Clear ;
  chkDelivery.Checked := false ;
  redCart.Clear ;
  rgpCartItems.Items.Clear ;
  btnCheckout.Enabled := false ;
  end
  else
  begin
  ShowMessage('Invalid Password') ;
  end;

end;

procedure TfrmShop.btnClearGPUrgpClick(Sender: TObject);
begin
// Resets the Radiogroup used to show to level of GPU to show to the user
rgpGPUuserLevel.ItemIndex := -1 ;

pnlGTX1650.Show ;
pnlGTX1650.Top := 96 ;
pnlGTX1650.Left := 335 ;
pnlRTX3050.Show ;
pnlRTX3050.top :=  96 ;
pnlRTX3050.Left := 677 ;
pnlRTX4060.Show ;
pnlRTX4060.Top := 306 ;
pnlRTX4060.Left := 335 ;
pnlRTX4090.show ;
pnlRTX4090.Top := 306 ;
pnlRTX4090.Left := 677 ;

end;

procedure TfrmShop.btnCloseGPUhelpClick(Sender: TObject);
begin
// Hides the panel for GPU help
pnlGPUhelp.Hide ;

end;

procedure TfrmShop.btnCloseRemoveClick(Sender: TObject);
begin
// Hides the panel that allows the User to remove an item from their cart
pnlRemovefromCart.Hide ;
btnCheckout.Enabled := true ;

if rgpCartItems.Items.Count = 0 then
rTotalCost := 0 ;

end;

procedure TfrmShop.btnCPUhelpCloseClick(Sender: TObject);
begin
// Hides the panel for peripheral Help
pnlPerHelp.Hide ;
end;

procedure TfrmShop.btnCreateAccountClick(Sender: TObject);
var
    sNameRegister, sCountry, sUsernameCreate, sPasswordCreate, sPasswordTest, sUserSecondPart, sRegisterUsername, sUsernameTag, sFileSave, sCredentialsCombined : string ;
    iAge, iCountryCombo, iUserNameLength, iLenUsername, iUsernameLoop, iPasswordLoop,  iPasswordLength, iLenName, iLenCountry, iNameLength, iNameLoop : integer ;
    cNamelastLetter, cCountryFirstLetter, cCountryLastLetter, cSpace, cPasswordSpace : char ;
    bUsernameWord : boolean ;
//    StreamWriter: TStreamWriter;

begin
// This will create the users credentials(Register the new user)
//Input
bUsernameWord := false ;
sNameRegister := edtRegisterName.Text ;
iCountryCombo := cmbCountry.ItemIndex ;
sCountry := cmbCountry.Items[iCountryCombo] ;
sUsernameCreate := edtUsernameCreate.Text ;
sPasswordCreate := edtPasswordCreate.Text ;
sPasswordTest := edtPasswordConfirm.Text ;
iAge := sedAgeRegister.Value ;

//Validation
  if  sNameRegister = '' then
  begin
  edtRegisterName.Color := clRed ;
  ShowMessage('Please enter your name.');
  exit ;
  end
  else
  if sNameRegister.Length < 2 then
  begin
  edtRegisterName.Color := clRed ;
  ShowMessage('Please enter a name of at least 2 characters long.') ;
  exit ;
  end
  else
  begin
    // This checks that the Name does not contaim spaces or odd characters
     iNameLength := sNameRegister.Length ;
     for  iNameLoop  := 1 to iNameLength do
   begin
     cSpace := sNameRegister[iNameLoop] ;
    if (cSpace = ' ') or not (cSpace in ['A'..'Z', 'a'..'z']) then
    begin
    edtRegisterName.Color := clRed ;
    ShowMessage('Please enter a Name without any spaces and without any sighns.') ;
    exit ;
    end;
    end;
  end;

  if cmbCountry.ItemIndex = -1  then
  begin
  cmbCountry.Color := clRed ;
  ShowMessage('Please select your country.')   ;
  exit;
  end;

  if sedAgeRegister.Value < 18 then
  Begin
  sedAgeRegister.Color := clRed ;
  ShowMessage('You must be at least 18 years old to create an account.') ;
  exit;
  End
  else
  if sedAgeRegister.Value > 100 then
  begin
  sedAgeRegister.Color := clRed ;
  ShowMessage('You must be younger than 100 years to create an account , please ask a family member for assistance.') ;
  exit;
  end;

   if  sUsernameCreate = '' then
  begin
  edtUsernameCreate.Color := clRed ;
  ShowMessage('Please enter a username.');
  exit ;
  end
  else
  if sUsernameCreate.Length < 5 then
  begin
  edtUsernameCreate.Color := clRed ;
  ShowMessage('Please enter an username that is longer than 5 characters.') ;
  exit;
  end
  else
  if sUsernameCreate.Length > 15 then
  begin
  edtUsernameCreate.Color := clRed ;
  ShowMessage('‘Username to long , must me shorter than 15 characters')  ;
  exit;
  end;
  // This checks that the username is ongly one word
  iUserNameLength := sUsernameCreate.Length ;
  for iUsernameLoop  := 1 to iUserNameLength do
  begin
   cSpace := sUsernameCreate[iUsernameLoop] ;
    if cSpace = ' ' then
    begin
    edtUsernameCreate.Color := clRed ;
    ShowMessage('Please enter an username without any spaces.') ;
    exit ;
    end;
  end;

  if sPasswordCreate = '' then
  begin
  edtPasswordCreate.Color := clRed ;
  ShowMessage('Please create a password') ;
  exit ;
  end
  else
  if sPasswordCreate.Length < 5 then
  begin
  edtPasswordCreate.Color := clRed ;
  ShowMessage('Please enter a password that is longer than 5 digits.') ;
  exit ;
  end
  else
  if sPasswordCreate.Length > 15 then
  begin
  edtPasswordCreate.Color := clRed ;
  ShowMessage('Please enter a password that is shorter than 15 digits.') ;
  exit ;
  end;
  // This checks that the Password is ongly one word
   iPasswordLength := sPasswordCreate.Length ;
  for iPasswordLoop  := 1 to iPasswordLength do
  begin
   cPasswordSpace:= sPasswordCreate[iPasswordLoop] ;
    if  cPasswordSpace = ' ' then
    begin
    edtPasswordCreate.Color := clRed ;
    ShowMessage('Please create a password without any spaces.') ;
    exit ;
    end;
  end;

  if sPasswordTest = '' then
  begin
  edtPasswordConfirm.Color := clRed ;
  ShowMessage('Please confirm your password') ;
  exit ;
  end
  else
  if sPasswordCreate = sPasswordTest  then
  else
  begin
  edtPasswordConfirm.Color := clRed ;
  ShowMessage('Passwords do not match') ;
  exit
  end;

//Proccessing

iLenName := sNameRegister.Length ;
cNamelastLetter := sNameRegister[iLenName]  ;
cCountryFirstLetter :=  sCountry[1] ;
iLenCountry := sCountry.Length ;
cCountryLastLetter := sCountry[iLenCountry]  ;

sUsernameTag := cNamelastLetter + cCountryFirstLetter + cCountryLastLetter + inttostr(iAge) ;

sRegisterUsername := sUsernameCreate + '#' +  sUsernameTag ;

sCredentialsCombined := sRegisterUsername + #9 + sPasswordCreate ;


//Output
edtRegisterName.Enabled := false ;
cmbCountry.Enabled := False  ;
sedAgeRegister.Enabled := false ;
edtUsernameCreate.Enabled := false ;
edtPasswordCreate.Enabled := false ;
edtPasswordConfirm.Enabled := false ;
chkConfermDetails.Enabled := false ;
btnCreateAccount.Enabled := false ;

sRegisterUser := sCredentialsCombined ;

pnlUsername.Font.Size := 20 ;
pnlPassword.Font.Size := 20 ;
lblCredentialsAre.Show ;
lblYUsername.Show ;
lblYPassword.Show ;
pnlUsername.Show ;
pnlPassword.Show ;
pnlUsername.Caption := sRegisterUsername ;
pnlPassword.Caption :=  sPasswordCreate ;
BitBtnRegisterGo.Show ;
BitBtnRegisterGo.SetFocus ;
BitBtnLogout.Show ;

 sPasswordCheckout := sPasswordCreate ;
 sUsernameCheckout := sRegisterUsername ;

 BitBtnRegisterReset.Enabled := false ;

{// Write to a .txt file  - Alhpa
sFileSave := 'Users.txt' ;
StreamWriter := TStreamWriter.Create(sFileSave, False, TEncoding.UTF8);
StreamWriter.Write(sCredentialsCombined);
StreamWriter.Free;                         }
end;

{procedure TfrmShop.btnDeleteAccountClick(Sender: TObject);
begin
//  Ignore this code (It was used in the testing phase)
cmbAccounts.Items.Delete(cmbAccounts.ItemIndex )  ;
cmbAccounts.Clear ;
end;                                                  }

procedure TfrmShop.btndivideClick(Sender: TObject);
var
    rCalcOne, rCalcTwo, rAnswer : real ;
begin
// Devides the two inout's for the Calculator
 rCalcOne := strtofloat(edtCalcOne.Text);
 rCalcTwo := strtofloat(edtCalcTwo.Text);
 rAnswer := rCalcOne / rCalcTwo ;
 edtCalcOne.Text := floattostr(rAnswer) ;
  edtCalcOne.Color := cllime ;
end;

procedure TfrmShop.btnFPScalcClick(Sender: TObject);
begin
//Goes to the FPS Calculator page from the Home page
tsHome.TabVisible := false ;
tsFPSCalc.TabVisible := true ;
end;

procedure TfrmShop.btnGPUhelpCloseClick(Sender: TObject);
begin
// Hides the Panel for CPU help
pnlCPUhelp.Hide ;
end;

procedure TfrmShop.btnHideAdminHelpClick(Sender: TObject);
begin
// Hides the panels for the Admin help
pnlAdminHelp.Hide ;
end;

procedure TfrmShop.btnHomeBackAdminClick(Sender: TObject);
begin
//Goes to the Admin page from the home page
// This can ongly be done if the user is logged in as an admin
tsHome.TabVisible := false ;
tsAdmin.TabVisible := true ;

end;

procedure TfrmShop.btnHomeHelpCloseClick(Sender: TObject);
begin
// Closes the Home help page
pnlHomeHelp.hide ;
end;

procedure TfrmShop.btnLoadAccountsClick(Sender: TObject);
begin
// This will give a lsit of the users that is saved in the variables
//cmbAccounts.Items.LoadFromFile('Users.txt') ;
cmbAccounts.Clear ;
cmbAccounts.Items.Add(sAdmin)  ;
cmbAccounts.Items.Add(sUserOne)  ;
cmbAccounts.Items.Add(sRegisterUser)  ;
end;


procedure TfrmShop.btnLoginClick(Sender: TObject);
begin
// Goes to the login page from the startup page
btnNoUser.Hide ;
TsStartUp.TabVisible := false ;
tsLogin.TabVisible := True ;

//PgcMain.SetFocus ;   Could use to make that the edit is not set as the focus when the page is opened
end;

procedure TfrmShop.btnMinusClick(Sender: TObject);
var
    rCalcOne, rCalcTwo, rAnswer : real ;
begin
// Minus the two inout's for the Calculator
 rCalcOne := strtofloat(edtCalcOne.Text);
 rCalcTwo := strtofloat(edtCalcTwo.Text);
 rAnswer := rCalcOne - rCalcTwo ;
 edtCalcOne.Text := floattostr(rAnswer) ;
  edtCalcOne.Color := cllime ;
end;

procedure TfrmShop.btnMultiplyClick(Sender: TObject);
var
    rCalcOne, rCalcTwo, rAnswer : real ;
begin
// Multiplies the two inout's for the Calculator
 rCalcOne := strtofloat(edtCalcOne.Text);
 rCalcTwo := strtofloat(edtCalcTwo.Text);
 rAnswer := rCalcOne * rCalcTwo ;
 edtCalcOne.Text := floattostr(rAnswer) ;
  edtCalcOne.Color := cllime ;
end;

procedure TfrmShop.btnNoUserClick(Sender: TObject);
begin
// This button will take the user from the login screen to the Register Page
tsLogin.TabVisible := false ;
tsRegister.TabVisible := true ;
end;

procedure TfrmShop.btnOrderCodeClick(Sender: TObject);
var
    sOrderCodeInfo, sUser, sGetProduct, sPrice : string ;
    iLen : integer ;
begin
// This button will take the entered order code and get information from it, afterwards displaying it to the admin
redOrderCodeInfo.Clear ;
sOrderCodeInfo := edtOrderCode.Text ;

  if sOrderCodeInfo = '' then
  Begin
  ShowMessage('Please enter an Order code')  ;
  exit ;
  End;

  sUser := sOrderCodeInfo[1]   ;
  sGetProduct := sOrderCodeInfo[2]   ;

  iLen := sOrderCodeInfo.Length ;
  sPrice := sOrderCodeInfo[3] + sOrderCodeInfo[5] + sOrderCodeInfo[11] + Copy(sOrderCodeInfo,13,iLen)  ;


  if sUser = 'C' then
  redOrderCodeInfo.Lines.Add('User: Customer')
  else
  if sUser = 'A' then
   redOrderCodeInfo.Lines.Add('User: Admin')    ;

  if sGetProduct = 'P'  then
  redOrderCodeInfo.Lines.Add('Get Order: Pickup')
  else
  if sGetProduct = 'D' then
   redOrderCodeInfo.Lines.Add('Get Order: Delivery')  ;

  if (sUser = 'C') or (sUser = 'A') and (sGetProduct= 'P') or (sGetProduct = 'D') then
   redOrderCodeInfo.Lines.Add('Price: R'+ sPrice)  ;

   edtOrderCode.Clear ;

end;

procedure TfrmShop.btnPlusClick(Sender: TObject);
var
    rCalcOne, rCalcTwo, rAnswer : real ;
begin
// Plus the two inout's for the Calculator
 rCalcOne := strtofloat(edtCalcOne.Text);
 rCalcTwo := strtofloat(edtCalcTwo.Text);
 rAnswer := rCalcOne + rCalcTwo ;
 edtCalcOne.Text := floattostr(rAnswer) ;
 edtCalcOne.Color := cllime ;
end;

procedure TfrmShop.btnRegisterClick(Sender: TObject);
begin
//Goes to the register page from the startup page
//Hides Components that will be shown later
pnlUsername.Hide ;
pnlPassword.Hide ;
lblYUsername.Hide ;
lblYPassword.Hide ;
lblCredentialsAre.Hide ;
BitBtnRegisterGo.Hide ;
//btnCreateAccount.Enabled := false ;

TsStartUp.TabVisible := False ;
tsRegister.TabVisible := true ;

sedAgeRegister.Value := 18 ;
// Sets the order in which your focus will move when the tab key on the keyboard is pressed
edtRegisterName.TabOrder    := 1 ;
cmbCountry.TabOrder         := 2 ;
sedAgeRegister.TabOrder     := 3 ;
edtUsernameCreate.TabOrder  := 4 ;
edtPasswordCreate.TabOrder  := 5 ;
edtPasswordConfirm.TabOrder := 6 ;
chkConfermDetails.TabOrder  := 7 ;
BitBtnRegisterGo.TabOrder   := 8 ;
end;

procedure TfrmShop.btnRemoveCartEXEClick(Sender: TObject);
var
    iSelected, iText : integer ;
    sItem : string ;
    rSubtract, rItemRemain : real ;
begin
// This code will remove an Item from the cart
// Validation
  if rgpCartItems.ItemIndex = -1 then
  begin
  ShowMessage('No Item Selected/Available')   ;
  exit;
  end;
// Ads the amounts of the item that you would like to remove
iRemoveSpin := sedAmountRemove.Value ;
sedAmountRemove.MinValue := 1 ;
// Code that will remove the item and it's amount from the cart
iSelected := rgpCartItems.ItemIndex ;

sItem := rgpCartItems.Items[iSelected]   ;
// The code that removes the item from the cart
  if sItem = 'GTX 1650' then
  begin
   rSubtract := iRemoveSpin * 4000.60   ;
   rTotalCost := rTotalCost - rSubtract ;
   iGPU1Amount := iGPU1Amount - iRemoveSpin ;
   rItemRemain := iGPU1Amount * 4000.60 ;
   redCart.Lines.Add('GTX 1650'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('GTX 1650 remaining: '+#9+inttostr(iGPU1Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iGPU1Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iGPU1Amount);
   if iGPU1Amount = 0 then
   begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bGPU1Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;

  end;

  if sItem = 'RTX 3050' then
  begin
  rSubtract := iRemoveSpin * 6000.50   ;
   rTotalCost := rTotalCost - rSubtract ;
   iGPU2Amount := iGPU2Amount - iRemoveSpin ;
   rItemRemain := iGPU2Amount * 6000.50 ;
   redCart.Lines.Add('RTX 3050'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('RTX 3050 remaining: '+#9+inttostr(iGPU2Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iGPU2Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iGPU2Amount);
    if iGPU2Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bGPU2Amount := true ;
      sedAmountRemove.Value := 1 ;
    pnlCartItemAmount.Caption := ''   ;
      rgpCartItems.ItemIndex := -1 ;
    end;
  end;

  if sItem = 'RTX 4060' then
  begin
  rSubtract := iRemoveSpin * 7500.99   ;
   rTotalCost := rTotalCost - rSubtract ;
   iGPU3Amount := iGPU3Amount - iRemoveSpin ;
   rItemRemain := iGPU3Amount * 7500.99 ;
   redCart.Lines.Add('RTX 4060'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('RTX 4060 remaining: '+#9+inttostr(iGPU3Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iGPU3Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iGPU3Amount);
     if iGPU3Amount = 0 then
     begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bGPU3Amount := true ;
      sedAmountRemove.Value := 1 ;
    pnlCartItemAmount.Caption := ''   ;
      rgpCartItems.ItemIndex := -1
   end;
  end;

  if sItem = 'RTX 4090' then
  begin
  rSubtract := iRemoveSpin * 42000.99   ;
   rTotalCost := rTotalCost - rSubtract ;
   iGPU4Amount := iGPU4Amount - iRemoveSpin ;
   rItemRemain := iGPU4Amount * 42000.99 ;
   redCart.Lines.Add('RTX 4090'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('RTX 4090 remaining: '+#9+inttostr(iGPU4Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iGPU4Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iGPU4Amount);
     if iGPU4Amount = 0 then
     begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bGPU4Amount := true ;
      sedAmountRemove.Value := 1 ;
    pnlCartItemAmount.Caption := ''   ;
      rgpCartItems.ItemIndex := -1
   end;
  end;

  if sItem = 'i5 12400f' then
  begin
  rSubtract := iRemoveSpin * 3500.50   ;
   rTotalCost := rTotalCost - rSubtract ;
   iCPU1Amount := iCPU1Amount - iRemoveSpin ;
   rItemRemain := iCPU1Amount * 3500.50 ;
   redCart.Lines.Add('i5 12400f'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('i5 12400f remaining: '+#9+inttostr(iCPU1Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iCPU1Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iCPU1Amount);
   if iCPU1Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bCPU1Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

   if sItem = 'i5 13600K' then
  begin
  rSubtract := iRemoveSpin * 7200.99   ;
   rTotalCost := rTotalCost - rSubtract ;
   iCPU2Amount := iCPU2Amount - iRemoveSpin ;
   rItemRemain := iCPU2Amount * 7200.99 ;
   redCart.Lines.Add('i5 13600K'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('i5 13600K remaining: '+#9+inttostr(iCPU2Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iCPU2Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iCPU2Amount);
   if iCPU2Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bCPU2Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

   if sItem = 'i7 13700K' then
  begin
  rSubtract := iRemoveSpin * 9600.50   ;
   rTotalCost := rTotalCost - rSubtract ;
   iCPU3Amount := iCPU3Amount - iRemoveSpin ;
   rItemRemain := iCPU3Amount * 9600.50 ;
   redCart.Lines.Add('i7 13700K'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('i7 13700K remaining: '+#9+inttostr(iCPU3Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iCPU3Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iCPU3Amount);
   if iCPU3Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bCPU3Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

   if sItem = 'Ryzen 5 5600G' then
  begin
  rSubtract := iRemoveSpin * 3000.99   ;
   rTotalCost := rTotalCost - rSubtract ;
   iCPU4Amount := iCPU4Amount - iRemoveSpin ;
   rItemRemain := iCPU4Amount * 3000.99 ;
   redCart.Lines.Add('Ryzen 5 5600G'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('Ryzen 5 5600G remaining: '+#9+inttostr(iCPU4Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iCPU4Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iCPU4Amount);
   if iCPU4Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bCPU4Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

    if sItem = 'Ryzen 5 7600' then
  begin
   rSubtract := iRemoveSpin * 5300.50   ;
   rTotalCost := rTotalCost - rSubtract ;
   iCPU5Amount := iCPU5Amount - iRemoveSpin ;
   rItemRemain := iCPU5Amount * 5300.50 ;
   redCart.Lines.Add('Ryzen 5 7600'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('Ryzen 5 7600 remaining: '+#9+inttostr(iCPU5Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iCPU5Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iCPU5Amount);
   if iCPU5Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bCPU5Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

     if sItem = 'Ryzen 9 5900X' then
  begin
  rSubtract := iRemoveSpin * 7800.50   ;
   rTotalCost := rTotalCost - rSubtract ;
   iCPU6Amount := iCPU6Amount - iRemoveSpin ;
   rItemRemain := iCPU6Amount * 7800.50 ;
   redCart.Lines.Add('Ryzen 9 5900X'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('9 5900X remaining: '+#9+inttostr(iCPU6Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iCPU6Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iCPU6Amount);
   if iCPU6Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bCPU6Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

  if sItem = 'HS70 Pro Carbon' then
  begin
  rSubtract := iRemoveSpin * 1800.99   ;
   rTotalCost := rTotalCost - rSubtract ;
   iPer1Amount := iPer1Amount - iRemoveSpin ;
   rItemRemain := iPer1Amount * 1800.99 ;
   redCart.Lines.Add('HS70 Pro Carbon'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('Headsets remaining: '+#9+inttostr(iPer1Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iPer1Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iPer1Amount);
   if iPer1Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bPer1Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

  if sItem = 'Corsair K60' then
  begin
  rSubtract := iRemoveSpin * 1600.99   ;
   rTotalCost := rTotalCost - rSubtract ;
   iPer2Amount := iPer2Amount - iRemoveSpin ;
   rItemRemain := iPer2Amount * 1600.99 ;
   redCart.Lines.Add('Corsair K60'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('Keyboards remaining: '+#9+inttostr(iPer2Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iPer2Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iPer2Amount);
   if iPer2Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bPer2Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

  if sItem = 'Razer Cobra Wired' then
  begin
   rSubtract := iRemoveSpin * 1100.30   ;
   rTotalCost := rTotalCost - rSubtract ;
   iPer3Amount := iPer3Amount - iRemoveSpin ;
   rItemRemain := iPer3Amount * 1100.30 ;
   redCart.Lines.Add('Razer Cobra Wired'+#9+'-'+inttostr(iRemoveSpin)+#9+'-'+floattostrf(rSubtract,ffCurrency,10,2))   ;
   redCart.Lines.Add('Mice remaining: '+#9+inttostr(iPer3Amount)+#9+FloatToStrf(rItemRemain,ffCurrency,10,2) ) ;
   sedAmountRemove.MaxValue := iPer3Amount ;
   sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := inttostr(iPer3Amount);
   if iPer3Amount = 0 then
    begin
     iText :=  rgpCartItems.Items.IndexOf(sItem);
     rgpCartItems.Items.Delete(iText);
     bPer3Amount := true ;
      sedAmountRemove.Value := 1 ;
   pnlCartItemAmount.Caption := ''   ;
    rgpCartItems.ItemIndex := -1 ;
   end;
  end;

end;

procedure TfrmShop.btnRemoveItemClick(Sender: TObject);
begin
// Shows the panel that will alow the user to remove an item from their cart
pnlRemovefromCart.BringToFront ;
pnlRemovefromCart.Show ;
sedAmountRemove.MinValue   := 1 ;
btnCheckout.Enabled := false ;
end;

procedure TfrmShop.btnResetCalculatorClick(Sender: TObject);
begin
//Clears the edits where the admin inserts infornation for the Calculator
edtCalcOne.Clear ;
edtCalcTwo.Clear ;
edtCalcOne.Color := clWhite ;
end;

procedure TfrmShop.btnResetIconClick(Sender: TObject);
begin
//Resets the program Icon to the default
  frmShop.Icon.LoadFromFile('AI_Icon.ico')  ;
end;

procedure TfrmShop.btnTempNextClick(Sender: TObject);
begin
// Temp button to test the flow of screens
tsLogin.TabVisible := false ;    ;
tsAdmin.TabVisible := true ;
BitBtnlogout.Show ;
end;

procedure TfrmShop.btnThemeClick(Sender: TObject);
var
    iTheme : integer ;
begin
// This button will change the theme of the Form using a combobox
iTheme := cmbTheme.ItemIndex ;

  case iTheme of
   0 : frmShop.Color := clwhite ;
   1 : frmShop.Color := clBlack ;
   2 : frmShop.Color := clGreen ;
   3 : frmShop.Color := clRed   ;
  end;
end;

procedure TfrmShop.chkConfermDetailsClick(Sender: TObject);
begin
//This if statement will alow the user to continue if the checkbox is clicked on the register page
 if chkConfermDetails.Checked = true then
 btnCreateAccount.Enabled := true
 else
 if chkConfermDetails.Checked = false then
  btnCreateAccount.Enabled := false ;

end;


procedure TfrmShop.chkDeliveryClick(Sender: TObject);
begin
// This will determine if the house addres edits are shown and if the extra R50 for deleviry is added or removed
  if chkDelivery.Checked = true then
  begin
  rTotalCost := rTotalCost + 50 ;
  edtAddress.Enabled := true ;
  redCart.Lines.Add('Delivery'+#9+'+'+#9+'R50')
  end
  else
  begin
  rTotalCost := rTotalCost - 50 ;
   edtAddress.Enabled := false ; ;
  redCart.Lines.Add('Delivery'+#9+'-'+#9+'R-50')
  end;

end;

procedure TfrmShop.cmbCountryClick(Sender: TObject);
begin
// This will change the color of the combobox to the original(White) when clickid upon
cmbCountry.Color := clWhite ;
end;

procedure TfrmShop.edtPasswordClick(Sender: TObject);
begin
// This will change the color of the edit to the original(White) when clickid upon
edtPassword.Color := clWhite ;
end;

procedure TfrmShop.edtPasswordConfirmClick(Sender: TObject);
begin
// This will change the color of the edit to the original(White) when clickid upon
edtPasswordConfirm.Color := clWhite ;
end;

procedure TfrmShop.edtPasswordCreateClick(Sender: TObject);
begin
// This will change the color of the edit to the original(White) when clickid upon
edtPasswordCreate.Color := clWhite ;
end;

procedure TfrmShop.edtRegisterNameChange(Sender: TObject);
begin
// Changes the color of the Edit for your name back to white after an eeror oquired
edtRegisterName.Color := clWhite ;
end;

procedure TfrmShop.edtRegisterNameClick(Sender: TObject);
begin
// Changes the color of the Edit for your name back to white after an eeror oquired
edtRegisterName.Color := clWhite ;
end;

procedure TfrmShop.edtUsernameClick(Sender: TObject);
begin
// This will change the color of the edit to the original(White) when clickid upon
edtUsername.Color := clWhite ;
end;

procedure TfrmShop.edtUsernameCreateClick(Sender: TObject);
begin
// This will change the color of the edit to the original(White) when clickid upon
edtUsernameCreate.Color := clWhite ;
end;

procedure TfrmShop.edtUsernameCreateEnter(Sender: TObject);
begin
// Check if I can Use this to determine if it is a secure Password
end;

procedure TfrmShop.FormActivate(Sender: TObject);
var
    bTimer : boolean ;
begin
//Form Activate /////////////////////////////////////////
// Also used when the user logs out.
// Startup
chkDelivery.Checked := false ;
TsStartUp.TabVisible := true ;
pgcMain.TabIndex := 0;
iLoginTries := 0 ;
rTotalCost := 0 ;
btnCreateAccount.Enabled := false ;
pnlAdminHelp.Hide ;
edtAddress.Enabled := false ;
pnlRemovefromCart.Hide ;
btnHomeBackAdmin.Hide ;
BitBtnCheckout.Hide ;
pnlGPUhelp.Hide ;
pnlCPUhelp.Hide ;
pnlHomeHelp.Hide ;
pnlPerhelp.Hide ;
pnlCheckoutHelp.Hide ;
redCart.Clear ;
redCheck.Clear ;
rgpCartItems.Items.Clear ;
edtAddress.Clear ;
edtOrderCode.Clear ;
redOrderCodeInfo.Clear ;
// GPU Min/Max Amounts
sed1650Amount.MinValue := 1 ;
sed1650Amount.MaxValue := 10 ;
sed3050Amount.MinValue  := 1 ;
sed3050Amount.MaxValue := 10  ;
sed4060Amount.MinValue := 1 ;
sed4060Amount.MaxValue := 7 ;
sedRTX4090.MinValue := 1 ;
sedRTX4090.MaxValue := 5 ;
// Periferals Min/Max
sedHeadsetAmount.MinValue := 1 ;
sedHeadsetAmount.MaxValue := 10 ;
sedKeyboardAmount.MinValue := 1 ;
sedKeyboardAmount.MaxValue := 10 ;
sedMouseAmout.MinValue := 1 ;
sedMouseAmout.MaxValue := 10 ;
//Tabsheets Hidden
tsLogin.TabVisible := false ;
tsRegister.TabVisible := False ;
tsAdmin.TabVisible := False ;
tsHome.TabVisible := False ;
tsGPU.TabVisible := False ;
tsCPU.TabVisible := False ;
tsPeripheral.tabvisible := false ;
tsFPSCalc.TabVisible := False ;
tsCheckoout.TabVisible := false ;

BitBtnLogout.Hide;

//Declare the Admin and First user detials
sAdmin := 'Admin#nsa35' + #9 + 'CircuitCentral#!'  ;
sUserOne := 'Robert#tsa16'+ #9 + 'Drakensberg123!'  ;

// Sets the Tabstops
redCart.ReadOnly := true ;
RedCart.Paragraph.TabCount := 2 ;
redCart.Paragraph.Tab[0]  := 90 ;
redCart.Paragraph.Tab[1]  := 135 ;
redCart.Lines.Add('Product'+#9+'Amount'+#9+'Price') ;

redFPSout.ReadOnly := true ;
redCheck.ReadOnly := true ;

// Sets the Start Values for the Removal Amounts
// Integers
iCPU1Amount := 0 ;
iCPU2Amount := 0 ;
iCPU3Amount  := 0 ;
iCPU4Amount  := 0 ;
iCPU5Amount  := 0 ;
iCPU6Amount  := 0 ;

iGPU1Amount  := 0 ;
iGPU2Amount   := 0 ;
iGPU3Amount   := 0 ;
iGPU4Amount := 0 ;

iPer1Amount   := 0 ;
iPer2Amount   := 0 ;
iPer3Amount    := 0 ;
// Booleans
bCPU1Amount:= true ;
bCPU2Amount := true ;
bCPU3Amount  := true ;
bCPU4Amount  := true ;
bCPU5Amount  := true ;
bCPU6Amount := true ;

bGPU1Amount  := true ;
bGPU2Amount   := true ;
bGPU3Amount  := true ;
bGPU4Amount := true ;

bPer1Amount   := true ;
bPer2Amount   := true ;
bPer3Amount    := true ;

  if bTimer = false then
  begin
    ProgressValue := 0;
  ProgressBarStartUp.Min := 0;
  ProgressBarStartUp.Max := 1000;
  ProgressBarStartUp.Position := ProgressValue;

  // Set the timer properties
  Timer1.Interval := 1000; // 1000 milliseconds (1 second)
  Timer1.Enabled := True;
  Countdown := 5  ;

  bTimer := true ;
  end;
end;

procedure TfrmShop.imgPCiconOneClick(Sender: TObject);
begin
//Loads a diffrent icon for the program
frmShop.Icon.LoadFromFile('PCicon.ico')  ;
end;

procedure TfrmShop.imgProccessingPowerIconClick(Sender: TObject);
begin
//Loads a diffrent icon for the program
frmShop.Icon.LoadFromFile('processing-power-Icon.ico')  ;
end;

procedure TfrmShop.imgCCiconClick(Sender: TObject);
begin
//Loads a diffrent icon for the program
frmShop.Icon.LoadFromFile('CCicon.ico')  ;
end;

procedure TfrmShop.imgPCiconTwoClick(Sender: TObject);
begin
//Loads a diffrent icon for the program
frmShop.Icon.LoadFromFile('PCiconTwo.ico')  ;
end;

procedure TfrmShop.redCartChange(Sender: TObject);
begin
// this will Display the total price of the transaction
lblTotalPrice.Caption := floattostrf(rTotalCost,ffCurrency,10,2) ;
end;

procedure TfrmShop.rgpCartItemsClick(Sender: TObject);
var
    iSelected : integer ;
    sItem : string ;
begin
// Code that will display the items and amouns in the cart
sedAmountRemove.MinValue := 1 ;
pnlCartItemAmount.Caption := '' ;
iSelected := rgpCartItems.ItemIndex ;

sItem := rgpCartItems.Items[iSelected]   ;

  if sItem = 'GTX 1650' then
  begin
    pnlCartItemAmount.Caption  := inttostr(iGPU1Amount)  ;
    sedAmountRemove.MaxValue := iGPU1Amount ;
  end;

  if sItem = 'RTX 3050' then
  begin
     pnlCartItemAmount.Caption  := inttostr(iGPU2Amount)  ;
      sedAmountRemove.MaxValue := iGPU2Amount ;
  end;

  if sItem = 'RTX 4060' then
  begin
     pnlCartItemAmount.Caption := inttostr(iGPU3Amount)  ;
      sedAmountRemove.MaxValue := iGPU3Amount ;
  end;

  if sItem = 'RTX 4090' then
  begin
    pnlCartItemAmount.Caption  := inttostr(iGPU4Amount)  ;
     sedAmountRemove.MaxValue := iGPU4Amount ;
  end;

  if sItem = 'i5 12400f' then
  begin
    pnlCartItemAmount.Caption  := inttostr(iCPU1Amount)  ;
     sedAmountRemove.MaxValue := iCPU1Amount ;
  end;

  if sItem = 'i5 13600K' then
  begin
     pnlCartItemAmount.Caption  := inttostr(iCPU2Amount)  ;
      sedAmountRemove.MaxValue := iCPU2Amount ;
  end;

  if sItem = 'i7 13700K' then
  begin
     pnlCartItemAmount.Caption  := inttostr(iCPU3Amount)  ;
      sedAmountRemove.MaxValue := iCPU3Amount ;
  end;

  if sItem = 'Ryzen 5 5600G' then
  begin
    pnlCartItemAmount.Caption  := inttostr(iCPU4Amount)  ;
     sedAmountRemove.MaxValue := iCPU4Amount ;
  end;

  if sItem = 'Ryzen 5 7600' then
  begin
    pnlCartItemAmount.Caption  := inttostr(iCPU5Amount)  ;
     sedAmountRemove.MaxValue := iCPU5Amount ;
  end;

  if sItem = 'Ryzen 9 5900X' then
  begin
     pnlCartItemAmount.Caption  := inttostr(iCPU6Amount)  ;
      sedAmountRemove.MaxValue := iCPU6Amount ;
  end;

  if sItem = 'HS70 Pro Carbon' then
  begin
     pnlCartItemAmount.Caption  := inttostr(iPer1Amount)  ;
      sedAmountRemove.MaxValue := iPer1Amount ;
  end;

  if sItem = 'Corsair K60' then
  begin
     pnlCartItemAmount.Caption  := inttostr(iPer2Amount)  ;
       sedAmountRemove.MaxValue := iPer2Amount ;
  end;

  if sItem = 'Razer Cobra Wired' then
  begin
     pnlCartItemAmount.Caption  := inttostr(iPer3Amount)  ;
       sedAmountRemove.MaxValue := iPer3Amount ;
  end;

end;

procedure TfrmShop.rgpGPUuserLevelClick(Sender: TObject);
var
    iGPUlevel : integer ;
begin
// Set's and shows the GPU level that the user selected
iGPUlevel :=  rgpGPUuserLevel.ItemIndex  ;

  case iGPUlevel  of
  0 : begin
      pnlGTX1650.Show ;
       pnlRTX3050.Hide ;
       pnlRTX4060.Hide ;
       pnlRTX4090.Hide ;
      end;

  1 : begin
      pnlGTX1650.Hide ;
      pnlRTX4090.Hide ;
      pnlRTX4060.Show ;
      pnlRTX3050.Show ;
      pnlRTX4060.Top := 95 ;
      pnlRTX4060.Left := 335 ;
       end;

  2 : begin
      pnlGTX1650.Hide ;
      pnlRTX3050.Hide ;
      pnlRTX4060.Hide ;
      pnlRTX4090.Show ;
      pnlRTX4090.Top := 95 ;
      pnlRTX4090.Left := 335 ;
      end;
  end;
end;

procedure TfrmShop.sedAgeRegisterChange(Sender: TObject);
begin
// Change the color of the edit back to white after an Error occures
sedAgeRegister.Color := clWhite ;
end;

procedure TfrmShop.sedAgeRegisterClick(Sender: TObject);
begin
// Change the color of the edit back to white after an Error occures
sedAgeRegister.Color := clWhite ;
end;
procedure TfrmShop.Timer1Timer(Sender: TObject);
begin
 // Decrement the countdown

  Dec(Countdown);

    Inc(ProgressValue,800);

  // Update the progress bar position
  ProgressBarStartUp.Position := ProgressValue;


  // Check if the countdown has reached zero
  if Countdown = 0 then
  begin
    // Stop the timer
    Timer1.Enabled := False;

    // Perform any action when the countdown reaches zero
   pnlStartUp.Hide ;
  end;
end;

// VS Code test 2
end.

