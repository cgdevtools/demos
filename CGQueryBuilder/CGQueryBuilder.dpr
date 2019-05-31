program CGQueryBuilder;

uses
  IWRtlFix,
  Forms,
  IWStart,
  Main in 'Main.pas' {IWForm4: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
