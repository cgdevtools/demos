object IWForm4: TIWForm4
  Left = 0
  Top = 0
  Width = 1166
  Height = 688
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWCGJQRegion1: TIWCGJQRegion
    Left = 0
    Top = 0
    Width = 1166
    Height = 50
    TabOrder = 0
    Version = '1.0'
    Align = alTop
    object IWCGJQThemeSwitcher1: TIWCGJQThemeSwitcher
      Left = 24
      Top = 16
      Width = 120
      Height = 21
      TabOrder = 1
      Version = '1.0'
      JQThemeSwitcherOptions.LoadTheme = 'start'
      JQThemeSwitcherOptions.Width = 120
      JQThemeSwitcherOptions.ButtonHeight = 21
    end
  end
  object IWCGJQRegion2: TIWCGJQRegion
    Left = 0
    Top = 50
    Width = 1166
    Height = 638
    TabOrder = 2
    Version = '1.0'
    Align = alClient
    object IWCGJQRegion3: TIWCGJQRegion
      Left = 0
      Top = 0
      Width = 569
      Height = 638
      TabOrder = 3
      Version = '1.0'
      Align = alLeft
      object IWCGJQQueryBuilder1: TIWCGJQQueryBuilder
        Left = 0
        Top = 0
        Width = 569
        Height = 638
        TabOrder = 6
        Version = '1.0'
        Align = alClient
        QueryBuilderOptions.Filters = <
          item
            Id = 'ProductCode'
            Label_ = 'Code'
            Input = qbfiNumber
            Validation.Step = '1'
          end
          item
            Id = 'ProductDescription'
            Label_ = 'Description'
          end
          item
            Id = 'PurchaseDate'
            Type_ = qbftDate
          end
          item
            Id = 'UnitPrice'
            Type_ = qbftDouble
            Input = qbfiNumber
          end
          item
            Id = 'Stock'
            Type_ = qbftDouble
            Input = qbfiNumber
          end
          item
            Id = 'StockMgr'
            Type_ = qbftBoolean
            Input = qbfiRadio
            Values = <
              item
                Value = '1'
                Label_ = 'Yes'
              end
              item
                Value = '0'
                Label_ = 'No'
              end>
          end>
        QueryBuilderEvents.OnRulesChanged.OnEvent = IWCGJQQueryBuilder1QueryBuilderEventsRulesChanged
        DataSet = qryProducts
        DataSource = dsProducts
      end
    end
    object IWCGJQRegion4: TIWCGJQRegion
      Left = 569
      Top = 0
      Width = 597
      Height = 638
      TabOrder = 4
      Version = '1.0'
      Align = alClient
      object IWCGJQGrid: TIWCGJQGrid
        Left = 0
        Top = 0
        Width = 597
        Height = 620
        HelpType = htKeyword
        RenderInvisibleControls = True
        TabOrder = 5
        Version = '1.0'
        Align = alTop
        JQGridOptions.AltRows = True
        JQGridOptions.Caption = 'Products'
        JQGridOptions.ColModel = <
          item
            Editable = True
            EditOptions.DatePickerOptions.DateFormat = 'mm/dd/yyyy'
            EditOptions.CustomElements = <>
            Idx = 'ProductCode'
            Key = True
            Name = 'ProductCode'
            SearchOptions.SOpt = [gsoLessEqual, gsoGreatEqual, gsoBeginWith, gsoDoesntBegin, gsoIsNotIn, gsoEndsWith, gsoContains, gsoDoesntContain]
            Width = 80
            Caption = 'Code'
          end
          item
            Editable = True
            EditOptions.DatePickerOptions.DateFormat = 'mm/dd/yyyy'
            EditOptions.CustomElements = <>
            Idx = 'ProductDescription'
            Name = 'ProductDescription'
            SearchOptions.SOpt = [gsoLessEqual, gsoGreatEqual, gsoBeginWith, gsoDoesntBegin, gsoIsNotIn, gsoEndsWith, gsoContains, gsoDoesntContain]
            Width = 280
            Caption = 'Description'
          end
          item
            Editable = True
            EditOptions.DatePickerOptions.DateFormat = 'mm/dd/yyyy'
            EditOptions.CustomElements = <>
            EditRules.Date = True
            Formatter = gcfDate
            Idx = 'PurchaseDate'
            Name = 'PurchaseDate'
            SearchOptions.SOpt = [gsoLessEqual, gsoGreatEqual, gsoBeginWith, gsoDoesntBegin, gsoIsNotIn, gsoEndsWith, gsoContains, gsoDoesntContain]
            Width = 80
            Caption = 'Date'
          end
          item
            Align = gaRight
            Editable = True
            EditOptions.DatePickerOptions.DateFormat = 'mm/dd/yyyy'
            EditOptions.CustomElements = <>
            EditRules.Number = True
            Formatter = gcfCurrency
            FormatOptions.ThousandsSeparator = ','
            FormatOptions.Suffix = #8364
            Idx = 'UnitPrice'
            Name = 'UnitPrice'
            SearchOptions.SOpt = [gsoLessEqual, gsoGreatEqual, gsoBeginWith, gsoDoesntBegin, gsoIsNotIn, gsoEndsWith, gsoContains, gsoDoesntContain]
            Width = 112
            Caption = 'Price'
          end
          item
            Editable = True
            EditOptions.DatePickerOptions.DateFormat = 'mm/dd/yyyy'
            EditOptions.CustomElements = <>
            EditRules.Number = True
            Formatter = gcfNumber
            FormatOptions.ThousandsSeparator = ','
            Idx = 'Stock'
            Name = 'Stock'
            SearchOptions.SOpt = [gsoLessEqual, gsoGreatEqual, gsoBeginWith, gsoDoesntBegin, gsoIsNotIn, gsoEndsWith, gsoContains, gsoDoesntContain]
            Width = 96
            Caption = 'Stock'
          end
          item
            Editable = True
            EditOptions.DatePickerOptions.DateFormat = 'mm/dd/yyyy'
            EditOptions.CustomElements = <>
            Formatter = gcfCheckBox
            Idx = 'StockMgr'
            Name = 'StockMgr'
            SearchOptions.SOpt = [gsoLessEqual, gsoGreatEqual, gsoBeginWith, gsoDoesntBegin, gsoIsNotIn, gsoEndsWith, gsoContains, gsoDoesntContain]
            Width = 80
            Caption = 'Mgr'
          end>
        JQGridOptions.Height = 548
        JQGridOptions.SubGridModel = <
          item
            Name = 'InvoiceID'
            Width = 56
          end
          item
            Name = 'ProductCode'
            Width = 112
          end
          item
            Name = 'Quantity'
            Width = 56
          end
          item
            Name = 'UnitPrice'
            Width = 72
          end
          item
            Name = 'Tax.TaxType'
            Width = 40
          end>
        JQGridOptions.UserDataOnFooter = True
        JQGridOptions.Width = 595
        JQGridOptions.GroupingView.DragAndDropOptions.SortOptions.Disabled = False
        JQGridNav.View = True
        JQGridNav.FormsOptions.EditFormOptions.Width = 400
        JQGridNav.FormsOptions.AddFormOptions.Width = 400
        JQGridNav.FormsOptions.ViewFormOptions.Width = 400
        JQGridNav.FormsOptions.SearchOptions.SOpt = [gsoLessEqual, gsoGreat, gsoGreatEqual, gsoIsIn, gsoIsNotIn, gsoEndsWith, gsoDoesntEndsWith, gsoDoesntContain]
        JQGridNav.FormsOptions.SearchOptions.SearchOperators = <>
        JQGridCustomButtons = <>
        JQGridProvider = IWCGJQGridDataSetProvider
        JQGridToolbarSearch.DefaultSearch = gsoContains
        JQDragAndDropOptions.ConnectWith = <>
      end
    end
  end
  object ADOQuery: TADOQuery
    CacheSize = 50
    Parameters = <>
    SQL.Strings = (
      'select * from Products'
      ''
      'order by ProductCode')
    Left = 640
    Top = 232
  end
  object qryProducts: TADOQuery
    CacheSize = 50
    Parameters = <>
    SQL.Strings = (
      'select * from Products'
      ''
      'order by ProductCode')
    Left = 480
    Top = 232
  end
  object dsProducts: TDataSource
    AutoEdit = False
    DataSet = qryProducts
    Left = 544
    Top = 232
  end
  object IWCGJQGridDataSetProvider: TIWCGJQGridDataSetProvider
    DataSet = qryProducts
    Left = 720
    Top = 152
  end
end
