unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, Data.DB, Data.Win.ADODB;

type
  TIWUserSession = class(TIWUserSessionBase)
    AdoConnection: TADOConnection;
    procedure IWUserSessionBaseCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Vcl.Forms;

{$R *.dfm}

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
var
  LDSPath: string;
begin
  LDSPath:= ExtractFileDir(Application.ExeName);
  AdoConnection.ConnectionString:= 'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source='+LDSPath+'\wwwroot\DB\iwcgdemo.mdb;Mode=ReadWrite|Share Deny None;Persist Security Info=True';
end;

end.