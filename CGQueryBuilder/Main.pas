unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCGJQGrid, IWCGJQGridCustomProvider, IWCGJQGridDataSetProvider, Data.DB, Data.Win.ADODB, IWCGJQThemeSwitcher,
  Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IWCGJQControl, IWCGJQRegion, ServerController, IWCGJQCommon,
  IWCGJQQueryBuilder;

type
  TIWForm4 = class(TIWAppForm)
    IWCGJQRegion1: TIWCGJQRegion;
    IWCGJQThemeSwitcher1: TIWCGJQThemeSwitcher;
    IWCGJQRegion2: TIWCGJQRegion;
    IWCGJQRegion3: TIWCGJQRegion;
    IWCGJQRegion4: TIWCGJQRegion;
    ADOQuery: TADOQuery;
    qryProducts: TADOQuery;
    dsProducts: TDataSource;
    IWCGJQGridDataSetProvider: TIWCGJQGridDataSetProvider;
    IWCGJQGrid: TIWCGJQGrid;
    IWCGJQQueryBuilder1: TIWCGJQQueryBuilder;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWCGJQGridDataSetProviderBeforeGet(Sender: TObject; ATransport: TIWCGJQGridTransport;
      AData: TIWCGJQProviderGetData; ARequest: TCGWebRequest; AResponse: TCGWebResponse);
    procedure IWCGJQQueryBuilder1QueryBuilderEventsRulesChanged(Sender: TObject; AParams: TStringList);

  public
  end;

implementation

uses
  System.Math, ComObj;

{$R *.dfm}


procedure TIWForm4.IWAppFormCreate(Sender: TObject);
begin
  try
    UserSession.AdoConnection.Open;
  except
    on e: EOleException do
    begin
      IWCGJQGrid.JQGridOptions.Url := '';
    end
    else
      raise;
  end;
  IWCGJQGridDataSetProvider.OnBeforeGet:= IWCGJQGridDataSetProviderBeforeGet;
  qryProducts.Connection:= UserSession.AdoConnection;
  ADOQuery.Connection:= UserSession.AdoConnection;
end;

procedure TIWForm4.IWCGJQGridDataSetProviderBeforeGet(Sender: TObject; ATransport: TIWCGJQGridTransport; AData: TIWCGJQProviderGetData; ARequest: TCGWebRequest;
  AResponse: TCGWebResponse);
begin
  qryProducts.Open;
end;

procedure TIWForm4.IWCGJQQueryBuilder1QueryBuilderEventsRulesChanged(Sender: TObject; AParams: TStringList);
var
  SQL: string;
begin
  if IWCGJQQueryBuilder1.SQL.HaveQuery then
  begin
    SQL:= IWCGJQQueryBuilder1.SQL.SQLQuery;
    if SQL <> '' then
      SQL:= 'where ' + SQL;
    if (SQL <> '') and (SQL = qryProducts.SQL[1]) then Exit;
    qryProducts.Close;
    qryProducts.SQL[1]:= SQL;
    qryProducts.Open;
  end;
end;

initialization
  TIWForm4.SetAsMainForm;

end.
