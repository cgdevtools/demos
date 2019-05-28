program CGOpenLayersDemo;

uses
  IWRtlFix,
  Forms,
  IWStart,
  IWCGLicenseKey,
  MainForm in 'MainForm.pas' {IWForm6: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
