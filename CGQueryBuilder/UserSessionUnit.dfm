object IWUserSession: TIWUserSession
  OldCreateOrder = False
  OnCreate = IWUserSessionBaseCreate
  Height = 235
  Width = 257
  object AdoConnection: TADOConnection
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 48
  end
end
