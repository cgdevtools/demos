object IWForm6: TIWForm6
  Left = 0
  Top = 0
  Width = 1200
  Height = 712
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    '<style>'
    '.ol-zoomslider{top:7em;}'
    '.ol-example-item-active{'
    '    background: #f39c12;'
    '    color: #FFF;'
    '}'
    '</style>'
    ''
    '<script>'
    'var radius = 75;'
    'var mousePosition = null;'
    'var gpxStyle = {'
    '        '#39'Point'#39': new ol.style.Style({'
    '          image: new ol.style.Circle({'
    '            fill: new ol.style.Fill({'
    '              color: '#39'rgba(255,255,0,0.4)'#39
    '            }),'
    '            radius: 5,'
    '            stroke: new ol.style.Stroke({'
    '              color: '#39'#ff0'#39','
    '              width: 1'
    '            })'
    '          })'
    '        }),'
    '        '#39'LineString'#39': new ol.style.Style({'
    '          stroke: new ol.style.Stroke({'
    '            color: '#39'#f00'#39','
    '            width: 3'
    '          })'
    '        }),'
    '        '#39'MultiLineString'#39': new ol.style.Style({'
    '          stroke: new ol.style.Stroke({'
    '            color: '#39'#0f0'#39','
    '            width: 3'
    '          })'
    '        })'
    '}'
    ''
    '// Vector Label Decluttering'
    'var vldLabelStyle = new ol.style.Style({'
    '        geometry: function(feature) {'
    '          var geometry = feature.getGeometry();'
    '          if (geometry.getType() == '#39'MultiPolygon'#39') {'
    
      '            // Only render label for the widest polygon of a mul' +
      'tipolygon'
    '            var polygons = geometry.getPolygons();'
    '            var widest = 0;'
    '            for (var i = 0, ii = polygons.length; i < ii; ++i) {'
    '              var polygon = polygons[i];'
    
      '              var width =ol.extent.getWidth(polygon.getExtent())' +
      ';'
    '              if (width > widest) {'
    '                widest = width;'
    '                geometry = polygon;'
    '              }'
    '            }'
    '          }'
    '          return geometry;'
    '        },'
    '        text: new ol.style.Text({'
    '          font: '#39'12px Calibri,sans-serif'#39','
    '          overflow: true,'
    '          fill: new ol.style.Fill({'
    '            color: '#39'#000'#39
    '          }),'
    '          stroke: new ol.style.Stroke({'
    '            color: '#39'#fff'#39','
    '            width: 3'
    '          })'
    '        })'
    '      });'
    ''
    'var vldCountryStyle = new ol.style.Style({'
    '        fill: new ol.style.Fill({'
    '          color: '#39'rgba(255, 255, 255, 0.6)'#39
    '        }),'
    '        stroke: new ol.style.Stroke({'
    '          color: '#39'#319FD3'#39','
    '          width: 1'
    '        })'
    '      });'
    ''
    'var vldStyle = [vldLabelStyle, vldCountryStyle];'
    ''
    '</script>')
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
  object IWCGJQRegion2: TIWCGJQRegion
    Left = 0
    Top = 0
    Width = 250
    Height = 712
    TabOrder = 0
    Version = '1.0'
    Align = alLeft
    object OlExampleLeftMenu: TIWCGPanelList
      Left = 0
      Top = 0
      Width = 250
      Height = 712
      TabOrder = 2
      Version = '1.0'
      Align = alClient
      Items = <
        item
          Name = 'IWCGPanelList1Item1'
          Caption = 'Examples'
          OnClick.Ajax = True
          SubHeader = True
        end>
    end
  end
  object rMain: TIWCGJQRegion
    Left = 250
    Top = 0
    Width = 700
    Height = 712
    RenderInvisibleControls = True
    TabOrder = 1
    Version = '1.0'
    Align = alClient
    object IWCGJQThemeSwitcher1: TIWCGJQThemeSwitcher
      Left = 680
      Top = 16
      Width = 120
      Height = 21
      Visible = False
      TabOrder = 3
      Version = '1.0'
      JQThemeSwitcherOptions.LoadTheme = 'start'
      JQThemeSwitcherOptions.Width = 120
      JQThemeSwitcherOptions.ButtonHeight = 21
    end
    object rOlContainer: TIWCGJQRegion
      Left = 0
      Top = 0
      Width = 700
      Height = 712
      RenderInvisibleControls = True
      TabOrder = 4
      Version = '1.0'
      Align = alClient
      object Ol: TIWCGOpenLayers
        Left = 0
        Top = 0
        Width = 700
        Height = 712
        TabOrder = 5
        Version = '1.0'
        Align = alClient
        MapOptions.View.CGUID = 'C6E3FC285BFC4F48B654B143BF96CC03'
      end
      object OlPopup: TIWCGJQRegion
        Left = 280
        Top = 320
        Width = 250
        Height = 130
        Visible = False
        TabOrder = 14
        Version = '1.0'
        object IWCGJQLabelEx3: TIWCGJQLabelEx
          Left = 48
          Top = 48
          Width = 161
          Height = 21
          TabOrder = 15
          Version = '1.0'
          Text = '<span style="color:red">Popup</span> example!'
        end
      end
      object OlOverlayMarker: TIWCGJQRegion
        Left = 520
        Top = 488
        Width = 20
        Height = 20
        Visible = False
        TabOrder = 31
        Version = '1.0'
        StyleRenderOptions.RenderFont = False
        StyleRenderOptions.RenderBorder = False
        Style.Strings = (
          'border:1px solid #088'
          'border-radius:10px'
          'background:#0FF'
          'opacity:0.5')
      end
      object OlOverlayMarkerLabel: TIWCGJQLabelEx
        Left = 0
        Top = 0
        Width = 81
        Height = 21
        TabOrder = 32
        Version = '1.0'
        StyleRenderOptions.RenderFont = False
        StyleRenderOptions.RenderBorder = False
        Style.Strings = (
          'font-weight:600')
        Text = 'Vienna'
      end
    end
  end
  object rRightContainer: TIWCGJQRegion
    Left = 950
    Top = 0
    Width = 250
    Height = 712
    RenderInvisibleControls = True
    TabOrder = 9
    Version = '1.0'
    Align = alRight
    object OlTabsTop: TIWCGJQTabs
      Left = 0
      Top = 0
      Width = 250
      Height = 712
      TabOrder = 10
      Version = '1.0'
      Align = alClient
      BorderOptions.NumericWidth = 0
      BorderOptions.Style = cbsNone
      ActiveTab = IWCGTab12
      object IWCGTab1: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'Layer Group'
        TabIndex = 0
        Tabs = OlTabsTop
        object IWCGJQCheckBoxEx1: TIWCGJQCheckBoxEx
          Left = 24
          Top = 24
          Width = 169
          Height = 21
          TabOrder = 6
          Version = '1.0'
          Caption = 'Layer Group Visibility'
          JQCheckExOptions.OnChange.OnEvent = IWCGJQCheckBoxEx1JQCheckExOptionsChange
          JQCheckExOptions.Checked = True
        end
        object IWCGJQSlider1: TIWCGJQSlider
          Left = 4
          Top = 80
          Width = 205
          Height = 17
          TabOrder = 7
          Version = '1.0'
          StyleRenderOptions.RenderSize = False
          JQSliderOptions.Value = 100
          JQSliderOptions.OnStop.OnEvent = IWCGJQSlider1JQSliderOptionsStop
          JQSliderOptions.UseUIHeight = False
        end
        object IWCGJQLabelEx1: TIWCGJQLabelEx
          Left = 24
          Top = 53
          Width = 100
          Height = 21
          TabOrder = 8
          Version = '1.0'
          Text = 'Opacity'
        end
      end
      object IWCGTab2: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'Tile Transitions'
        TabIndex = 1
        Tabs = OlTabsTop
        object IWCGJQCheckBoxEx2: TIWCGJQCheckBoxEx
          Left = 4
          Top = 40
          Width = 238
          Height = 21
          TabOrder = 11
          Version = '1.0'
          Caption = 'render with an opacity transition'
          JQCheckExOptions.OnChange.OnEvent = IWCGJQCheckBoxEx2JQCheckExOptionsChange
          JQCheckExOptions.Checked = True
        end
      end
      object IWCGTab3: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'Scale Line'
        TabIndex = 2
        Tabs = OlTabsTop
        object IWCGJQComboBoxEx1: TIWCGJQComboBoxEx
          Left = 16
          Top = 104
          Width = 161
          Height = 21
          TabOrder = 12
          Version = '1.0'
          Items = <
            item
              Caption = 'degrees'
              Value = 'degrees'
            end
            item
              Caption = 'imperial inch'
              Value = 'imperial'
            end
            item
              Caption = 'us inch'
              Value = 'us'
            end
            item
              Caption = 'nautical mile'
              Value = 'nautical'
            end
            item
              Caption = 'metric'
              Value = 'metric'
            end>
          Groups = <>
          SelectedIndex = 4
          JQComboBoxExOptions.Width = 159
          JQComboBoxExOptions.OnChange.OnEvent = IWCGJQComboBoxEx1JQComboBoxExOptionsChange
          Caption = ''
        end
        object IWCGJQLabelEx2: TIWCGJQLabelEx
          Left = 16
          Top = 77
          Width = 100
          Height = 21
          TabOrder = 13
          Version = '1.0'
          Text = 'Units'
        end
      end
      object IWCGTab4: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'Draw Shapes'
        TabIndex = 3
        Tabs = OlTabsTop
        object IWCGJQButton1: TIWCGJQButton
          Left = 48
          Top = 31
          Width = 150
          Height = 30
          TabOrder = 16
          Version = '1.0'
          JQButtonOptions.Label_ = 'Point'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton1JQButtonOptionsClick
        end
        object IWCGJQButton2: TIWCGJQButton
          Left = 48
          Top = 67
          Width = 150
          Height = 30
          TabOrder = 17
          Version = '1.0'
          JQButtonOptions.Label_ = 'Polygon'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton2JQButtonOptionsClick
        end
        object IWCGJQButton3: TIWCGJQButton
          Left = 48
          Top = 104
          Width = 150
          Height = 30
          TabOrder = 18
          Version = '1.0'
          JQButtonOptions.Label_ = 'Line'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton3JQButtonOptionsClick
        end
        object IWCGJQButton4: TIWCGJQButton
          Left = 48
          Top = 207
          Width = 150
          Height = 30
          TabOrder = 19
          Version = '1.0'
          JQButtonOptions.Label_ = 'Toggle Modify'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton4JQButtonOptionsClick
        end
        object IWCGJQButton5: TIWCGJQButton
          Left = 48
          Top = 243
          Width = 150
          Height = 30
          TabOrder = 20
          Version = '1.0'
          JQButtonOptions.Label_ = 'Toggle Selectable'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton5JQButtonOptionsClick
        end
        object IWCGJQButton6: TIWCGJQButton
          Left = 48
          Top = 279
          Width = 150
          Height = 30
          TabOrder = 21
          Version = '1.0'
          JQButtonOptions.Label_ = 'Toggle Movable'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton6JQButtonOptionsClick
        end
        object IWCGJQButton7: TIWCGJQButton
          Left = 48
          Top = 376
          Width = 150
          Height = 30
          TabOrder = 22
          Version = '1.0'
          JQButtonOptions.Label_ = 'Export Features'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton7JQButtonOptionsClick
        end
        object IWCGJQButton8: TIWCGJQButton
          Left = 48
          Top = 412
          Width = 150
          Height = 30
          TabOrder = 23
          Version = '1.0'
          JQButtonOptions.Label_ = 'Load Features'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton8JQButtonOptionsClick
        end
        object IWCGJQButton9: TIWCGJQButton
          Left = 48
          Top = 448
          Width = 150
          Height = 30
          TabOrder = 24
          Version = '1.0'
          JQButtonOptions.Label_ = 'Clear Features'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton9JQButtonOptionsClick
        end
      end
      object IWCGTab5: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'BingMaps'
        TabIndex = 4
        Tabs = OlTabsTop
        object olBingMapsImagerySet: TIWCGJQComboBoxEx
          Left = 16
          Top = 67
          Width = 193
          Height = 21
          TabOrder = 25
          Version = '1.0'
          Items = <>
          Groups = <>
          SelectedIndex = 0
          JQComboBoxExOptions.Width = 191
          JQComboBoxExOptions.OnChange.OnEvent = olBingMapsImagerySetJQComboBoxExOptionsChange
          Caption = ''
        end
        object IWCGJQLabelEx4: TIWCGJQLabelEx
          Left = 16
          Top = 40
          Width = 100
          Height = 21
          TabOrder = 26
          Version = '1.0'
          Text = 'ImagerySet'
        end
      end
      object IWCGTab6: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'Mouse Position'
        TabIndex = 5
        Tabs = OlTabsTop
        object lblMousePosition: TIWCGJQLabelEx
          Left = 16
          Top = 94
          Width = 201
          Height = 21
          TabOrder = 27
          Version = '1.0'
          Text = ''
        end
        object IWCGJQLabelEx5: TIWCGJQLabelEx
          Left = 16
          Top = 67
          Width = 177
          Height = 21
          TabOrder = 28
          Version = '1.0'
          Text = 'Mouse Coordinates: '
        end
      end
      object IWCGTab7: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'Export Map'
        TabIndex = 6
        Tabs = OlTabsTop
        object IWCGJQButton10: TIWCGJQButton
          Left = 48
          Top = 85
          Width = 150
          Height = 30
          TabOrder = 29
          Version = '1.0'
          JQButtonOptions.Label_ = 'Export Map'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton10JQButtonOptionsClick
        end
        object imgMapExport: TIWCGJQImage
          Left = 32
          Top = 184
          Width = 177
          Height = 121
          TabOrder = 30
          Version = '1.0'
          Picture.UserCache = True
        end
      end
      object IWCGTab8: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'IWCGTab8'
        TabIndex = 7
        Tabs = OlTabsTop
        object IWCGJQLabelEx6: TIWCGJQLabelEx
          Left = 16
          Top = 68
          Width = 100
          Height = 21
          TabOrder = 33
          Version = '1.0'
          Text = 'Selected :'
        end
        object lblOlBoxSelection: TIWCGJQLabelEx
          Left = 16
          Top = 95
          Width = 209
          Height = 106
          TabOrder = 34
          Version = '1.0'
          Text = ''
          TextVertAlign = jqletvaTop
        end
      end
      object IWCGTab9: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'IWCGTab9'
        TabIndex = 8
        Tabs = OlTabsTop
        object IWCGJQLabelEx7: TIWCGJQLabelEx
          Left = 16
          Top = 40
          Width = 201
          Height = 21
          TabOrder = 35
          Version = '1.0'
          Text = 'Show countries larger than'
        end
        object cboCartoDbArea: TIWCGJQDropDown
          Left = 16
          Top = 68
          Width = 209
          Height = 25
          TabOrder = 36
          Version = '1.0'
          JQDropDownOptions.MinimumResultsForSearch = -1
          JQDropDownOptions.OnChange.OnEvent = IWCGJQDropDown1JQDropDownOptionsChange
          Groups = <>
          Items = <
            item
              Caption = '0 km'
              Value = '0'
            end
            item
              Caption = '5000 km'
              Value = '5000'
            end
            item
              Caption = '10000 km'
              Value = '10000'
            end
            item
              Caption = '50000 km'
              Value = '50000'
            end
            item
              Caption = '100000 km'
              Value = '100000'
            end>
        end
      end
      object IWCGTab10: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'IWCGTab10'
        TabIndex = 9
        Tabs = OlTabsTop
        object gpxDataLabel: TIWCGJQLabelEx
          Left = 16
          Top = 44
          Width = 209
          Height = 21
          TabOrder = 37
          Version = '1.0'
          Text = ''
        end
      end
      object IWCGTab11: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'IWCGTab11'
        TabIndex = 10
        Tabs = OlTabsTop
        object btnCustomAnimAddRandomFeature: TIWCGJQButton
          Left = 48
          Top = 44
          Width = 150
          Height = 30
          TabOrder = 38
          Version = '1.0'
          JQButtonOptions.Label_ = 'Add Random Feature'
          JQButtonOptions.OnClick.OnEvent = btnCustomAnimAddRandomFeatureJQButtonOptionsClick
        end
      end
      object IWCGTab12: TIWCGJQTab
        Css = ''
        Version = '1.0'
        Caption = 'IWCGTab12'
        TabIndex = 11
        Tabs = OlTabsTop
        object IWCGJQButton11: TIWCGJQButton
          Left = 52
          Top = 23
          Width = 150
          Height = 30
          TabOrder = 39
          Version = '1.0'
          JQButtonOptions.Label_ = 'Set Center'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton11JQButtonOptionsClick
        end
        object IWCGJQButton12: TIWCGJQButton
          Left = 52
          Top = 59
          Width = 150
          Height = 30
          TabOrder = 40
          Version = '1.0'
          JQButtonOptions.Label_ = 'Random Zoom'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton12JQButtonOptionsClick
        end
        object IWCGJQButton13: TIWCGJQButton
          Left = 52
          Top = 95
          Width = 150
          Height = 30
          TabOrder = 41
          Version = '1.0'
          JQButtonOptions.Label_ = 'Set Min Zoom'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton13JQButtonOptionsClick
        end
        object IWCGJQButton14: TIWCGJQButton
          Left = 52
          Top = 131
          Width = 150
          Height = 30
          TabOrder = 42
          Version = '1.0'
          JQButtonOptions.Label_ = 'Set Max Zoom'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton14JQButtonOptionsClick
        end
        object IWCGJQButton15: TIWCGJQButton
          Left = 52
          Top = 167
          Width = 150
          Height = 30
          TabOrder = 43
          Version = '1.0'
          JQButtonOptions.Label_ = 'Random Rotation'
          JQButtonOptions.OnClick.OnEvent = IWCGJQButton15JQButtonOptionsClick
        end
        object btnAsyncViewGetInfo: TIWCGJQButton
          Left = 52
          Top = 263
          Width = 150
          Height = 30
          TabOrder = 44
          Version = '1.0'
          JQButtonOptions.Label_ = 'Get Info'
          JQButtonOptions.OnClick.OnEvent = btnAsyncViewGetInfoJQButtonOptionsClick
        end
        object memViewGetInfo: TIWCGJQMemoEx
          Left = 18
          Top = 316
          Width = 225
          Height = 205
          TabOrder = 45
          Css = ''
          Version = '1.0'
          ZIndex = 0
          BGColor = clNone
          Editable = False
          Required = False
          SubmitOnAsyncEvent = True
          ReadOnly = True
        end
      end
    end
  end
  object JQNoty: TIWCGJQNotification
    Version = '1.0'
    JQNotificationType = jqntNoty
    JQNotificationOptions.Type_ = jqnntInformation
    Left = 56
    Top = 268
  end
  object IWCGJQEventBinder1: TIWCGJQEventBinder
    Version = '1.0'
    ElementList = <>
    Left = 128
    Top = 384
  end
  object IWTimer: TIWTimer
    Enabled = False
    Interval = 500
    ShowAsyncLock = False
    OnAsyncTimer = IWTimerAsyncTimer
    Left = 160
    Top = 284
  end
  object IWCGJQEventBinder2: TIWCGJQEventBinder
    Version = '1.0'
    ElementList = <
      item
        jQuerySelector = '$("#OLEXAMPLELEFTMENU_UL > li")'
        Events.OnClick.Script = 
          'function (event){'#13#10'  var $this = $(this); '#13#10'  $this.parent().fin' +
          'd('#39'>li'#39').removeClass("ol-example-item-active");'#13#10'  $this.addClas' +
          's("ol-example-item-active");  '#13#10'}'
      end>
    Left = 176
    Top = 172
  end
end
