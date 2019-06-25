unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCGJQThemeSwitcher, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container,
  IWRegion, IWCGJQControl, IWCGJQRegion, IWCGPanelList, IWCGJQTabs, IWCGOpenLayers, IWCGJQLabel, IWCGJQCheckBox, IWCGJQSlider, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWCGJQComp, IWCGJQNotification, IWCGJQComboBox, IWCGJQButton, IWCGJQEventBinder, IWCGJQImage, IWCompExtCtrls, IWCGJQDropDown, IWCGJQMemo;

type
  TOlExampleCmd = (olcmdSimpleMap, olcmdBingMaps, olcmdTiledArcGISMapServer, olcmdSemiTransparentLayer,olcmdStaticImage, olcmdLayerGroup, olcmdControls, olcmdDragRotateZoom, olcmdTileTransitions,
    olcmdIconColors, olcmdScaleLine, olcmdPopup, olcmdDrawShapes, olcmdMagnify, olcmdDragDrop, olcmdAttributions, olcmdCanvasTiles, olcmdClusters, olcmdCustomDrawShape, olcmdMousePosition,
    olcmdWFS, olcmdExportMap, olcmdGraticule, olcmdOverlay, olcmdSelection, olcmdCartoDB, olcmdGPX, olcmdLocalizedOpenStreetMap, olcmdCustomAnimation, olcmdCustomPolygonStyles,
    olcmdVectorLabelDecluttering, olcmdViewAjaxPropControl, olcmdMeasure, olcmdWFSGetFeature);

  TOlExample = record
    TabIndex: Integer;
    Caption: string;
    Command: TOlExampleCmd;
  end;

const
  OlExample: array[0..33] of TOlExample = (
    ( TabIndex: -1; Caption: 'Simple Map'; Command: olcmdSimpleMap ),
    ( TabIndex: 4; Caption: 'Bing Maps'; Command: olcmdBingMaps),
    ( TabIndex: -1; Caption: 'Tiled ArcGIS MapServer'; Command: olcmdTiledArcGISMapServer ),
    ( TabIndex: -1; Caption: 'Semi-Transparent Layer'; Command: olcmdSemiTransparentLayer ),
    ( TabIndex: -1; Caption: 'Static Image'; Command: olcmdStaticImage),
    ( TabIndex: 0; Caption: 'Layer Group'; Command: olcmdLayerGroup),
    ( TabIndex: 1; Caption: 'Tile Transitions'; Command: olcmdTileTransitions),
    ( TabIndex: -1; Caption: 'Map Controls'; Command: olcmdControls),
    ( TabIndex: -1; Caption: 'Drag, Rotate, and Zoom'; Command: olcmdDragRotateZoom),
    ( TabIndex: -1; Caption: 'Icon Colors'; Command: olcmdIconColors),
    ( TabIndex: 2; Caption: 'Scale Line'; Command: olcmdScaleLine),
    ( TabIndex: -1; Caption: 'Popup'; Command: olcmdPopup),
    ( TabIndex: 3; Caption: 'Draw Shapes'; Command: olcmdDrawShapes),
    ( TabIndex: -1; Caption: 'Magnify'; Command: olcmdMagnify),
    ( TabIndex: -1; Caption: 'Drag-and-Drop'; Command: olcmdDragDrop),
    ( TabIndex: -1; Caption: 'Attributions'; Command: olcmdAttributions),
    ( TabIndex: -1; Caption: 'Canvas Tiles'; Command: olcmdCanvasTiles),
    ( TabIndex: -1; Caption: 'Clustered Features'; Command: olcmdClusters),
    ( TabIndex: -1; Caption: 'Custom Draw Shape'; Command: olcmdCustomDrawShape),
    ( TabIndex: 5; Caption: 'Mouse Position'; Command: olcmdMousePosition),
    ( TabIndex: -1; Caption: 'WFS'; Command: olcmdWFS),
    ( TabIndex: 6; Caption: 'Export Map'; Command: olcmdExportMap),
    ( TabIndex: -1; Caption: 'Map Graticule'; Command: olcmdGraticule),
    ( TabIndex: -1; Caption: 'Overlay'; Command: olcmdOverlay),
    ( TabIndex: 7; Caption: 'Box Selection'; Command: olcmdSelection),
    ( TabIndex: 8; Caption: 'CartoDB'; Command: olcmdCartoDB),
    ( TabIndex: 9; Caption: 'GPX Data'; Command: olcmdGPX),
    ( TabIndex: -1; Caption: 'Localized OpenStreetMap'; Command: olcmdLocalizedOpenStreetMap),
    ( TabIndex: 10; Caption: 'Custom Animation'; Command: olcmdCustomAnimation),
    ( TabIndex: -1; Caption: 'Custom Polygon Styles'; Command: olcmdCustomPolygonStyles),
    ( TabIndex: -1; Caption: 'Vector Label Decluttering'; Command: olcmdVectorLabelDecluttering),
    ( TabIndex: 11; Caption: 'Async View Control'; Command: olcmdViewAjaxPropControl),
    ( TabIndex: 12; Caption: 'Measure'; Command: olcmdMeasure),
    ( TabIndex: -1; Caption: 'WFS - GetFeature'; Command: olcmdWFSGetFeature)
  );

type

  TIWForm6 = class(TIWAppForm)
    IWCGJQRegion2: TIWCGJQRegion;
    rMain: TIWCGJQRegion;
    OlExampleLeftMenu: TIWCGPanelList;
    IWCGJQThemeSwitcher1: TIWCGJQThemeSwitcher;
    rOlContainer: TIWCGJQRegion;
    OlTabsTop: TIWCGJQTabs;
    IWCGTab1: TIWCGJQTab;
    Ol: TIWCGOpenLayers;
    IWCGJQCheckBoxEx1: TIWCGJQCheckBoxEx;
    IWCGJQSlider1: TIWCGJQSlider;
    IWCGJQLabelEx1: TIWCGJQLabelEx;
    rRightContainer: TIWCGJQRegion;
    JQNoty: TIWCGJQNotification;
    IWCGTab2: TIWCGJQTab;
    IWCGJQCheckBoxEx2: TIWCGJQCheckBoxEx;
    IWCGTab3: TIWCGJQTab;
    IWCGJQComboBoxEx1: TIWCGJQComboBoxEx;
    IWCGJQLabelEx2: TIWCGJQLabelEx;
    OlPopup: TIWCGJQRegion;
    IWCGJQLabelEx3: TIWCGJQLabelEx;
    IWCGTab4: TIWCGJQTab;
    IWCGJQButton1: TIWCGJQButton;
    IWCGJQButton2: TIWCGJQButton;
    IWCGJQButton3: TIWCGJQButton;
    IWCGJQButton4: TIWCGJQButton;
    IWCGJQButton5: TIWCGJQButton;
    IWCGJQButton6: TIWCGJQButton;
    IWCGJQButton7: TIWCGJQButton;
    IWCGJQButton8: TIWCGJQButton;
    IWCGJQButton9: TIWCGJQButton;
    IWCGTab5: TIWCGJQTab;
    olBingMapsImagerySet: TIWCGJQComboBoxEx;
    IWCGJQLabelEx4: TIWCGJQLabelEx;
    IWCGJQEventBinder1: TIWCGJQEventBinder;
    IWCGTab6: TIWCGJQTab;
    lblMousePosition: TIWCGJQLabelEx;
    IWCGJQLabelEx5: TIWCGJQLabelEx;
    IWCGTab7: TIWCGJQTab;
    IWCGJQButton10: TIWCGJQButton;
    imgMapExport: TIWCGJQImage;
    IWTimer: TIWTimer;
    IWCGJQEventBinder2: TIWCGJQEventBinder;
    OlOverlayMarker: TIWCGJQRegion;
    OlOverlayMarkerLabel: TIWCGJQLabelEx;
    IWCGTab8: TIWCGJQTab;
    IWCGJQLabelEx6: TIWCGJQLabelEx;
    lblOlBoxSelection: TIWCGJQLabelEx;
    IWCGTab9: TIWCGJQTab;
    IWCGJQLabelEx7: TIWCGJQLabelEx;
    cboCartoDbArea: TIWCGJQDropDown;
    IWCGTab10: TIWCGJQTab;
    gpxDataLabel: TIWCGJQLabelEx;
    IWCGTab11: TIWCGJQTab;
    btnCustomAnimAddRandomFeature: TIWCGJQButton;
    IWCGTab12: TIWCGJQTab;
    IWCGJQButton11: TIWCGJQButton;
    IWCGJQButton12: TIWCGJQButton;
    IWCGJQButton13: TIWCGJQButton;
    IWCGJQButton14: TIWCGJQButton;
    IWCGJQButton15: TIWCGJQButton;
    btnAsyncViewGetInfo: TIWCGJQButton;
    memViewGetInfo: TIWCGJQMemoEx;
    IWCGTab13: TIWCGJQTab;
    IWCGJQComboBoxEx2: TIWCGJQComboBoxEx;
    procedure LeftMenuClick(Sender: TObject; AParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWCGJQSlider1JQSliderOptionsStop(Sender: TObject; AParams: TStringList);
    procedure IWCGJQCheckBoxEx1JQCheckExOptionsChange(Sender: TObject; AParams: TStringList);
    procedure IWCGJQCheckBoxEx2JQCheckExOptionsChange(Sender: TObject; AParams: TStringList);
    procedure IWCGJQComboBoxEx1JQComboBoxExOptionsChange(Sender: TObject; AParams: TStringList);
    procedure OlMapSingleClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton1JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton2JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton3JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton4JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton5JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton6JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton9JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton7JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure OlLayerFeaturesExport(Sender: TObject; const ALayerCGUID, AJSonString: string);
    procedure IWCGJQButton8JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure olBingMapsImagerySetJQComboBoxExOptionsChange(Sender: TObject; AParams: TStringList);
    procedure OlDragAndDropEvent(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton10JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure OlMapExportPNG(Sender: TObject; const ABase64: string);
    procedure IWCGJQDropDown1JQDropDownOptionsChange(Sender: TObject; AParams: TStringList);
    procedure btnCustomAnimAddRandomFeatureJQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWTimerAsyncTimer(Sender: TObject; EventParams: TStringList);
    procedure IWCGJQButton11JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton12JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton13JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton14JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQButton15JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure btnAsyncViewGetInfoJQButtonOptionsClick(Sender: TObject; AParams: TStringList);
    procedure IWCGJQComboBoxEx2JQComboBoxExOptionsChange(Sender: TObject; AParams: TStringList);
  private
    FReRenderBinder: Boolean;
    FModToggle: Boolean;
    FSelectableToggle: Boolean;
    FMovableToggle: Boolean;
    FSavedFeatures: string;
    FCurr: TOlExample;
    FMapExportPngBase64: string;
    FMeasureExample: boolean;
    FWFSGetFeature: boolean;
    procedure ProcessExample(ARec: TOlExample);
  public
  end;

implementation

uses
  IWCGJSSuperObject, IWCGJQCommon;

const
  LBingMapsStyles: array[0..3] of string = ('Road', 'RoadOnDemand', 'Aerial', 'AerialWithLabels');
  BingMapsKey = 'AtJj66ZDJoSG0ep30m8CofWbcj3oVUkvzPTbs0ssGjwGXLCW1xfDHUVgDABSWzYZ';

{$R *.dfm}

function GetCartoDBConfig(const AArea: Integer = 0): string;
begin
  Result:= '{"layers": [{"type":"cartodb","options": { "cartocss_version": "2.1.1", "cartocss": "#layer { polygon-fill: #F00; }", "sql": "select * from european_countries_e where area > ' + IntToStr(AArea) + '"}}]}';
end;

{ TIWForm6 }

procedure TIWForm6.btnAsyncViewGetInfoJQButtonOptionsClick(Sender: TObject; AParams: TStringList);
var
  s: string;
begin
  s:= 'Center: ' + AParams.Values['center'] + sLineBreak;
  s:= s + 'Zoom: ' + AParams.Values['zoom'] + sLineBreak;
  s:= s + 'MinZoom: ' + AParams.Values['minZoom'] + sLineBreak;
  s:= s + 'MaxZoom: ' + AParams.Values['maxZoom'] + sLineBreak;
  s:= s + 'Rotation: ' + AParams.Values['rotation'];
  memViewGetInfo.Text:= s;
end;

procedure TIWForm6.btnCustomAnimAddRandomFeatureJQButtonOptionsClick(Sender: TObject; AParams: TStringList);
var
  Source: TIWCGOlSourceVectorSource;
begin
  Source:= Ol.MapOptionsPluggableMap.Layers[1].LayerOptionsVectorLayer.SourceOptionsVectorSource;
  Source.Features.Clear;
  with Source.Features.Add do
  begin
    GeometryType:= olgeotPoint;
    GeometryOptionsPoint.Coordinates.X:= FloatToStr(2 * 4500000 * Random - 4500000);
    Randomize;
    GeometryOptionsPoint.Coordinates.Y:= FloatToStr(2 * 4500000 * Random - 4500000);
    RenderAjax;
  end;
end;

procedure TIWForm6.IWAppFormCreate(Sender: TObject);
var
  I: Integer;
  Rec: TOlExample;
  js: string;
begin
  for I := Low(OlExample) to High(OlExample) do
  begin
    Rec:= OlExample[I];

    with OlExampleLeftMenu.Items.Add do
    begin
      Tag:= I;
      Caption:= Rec.Caption;
      OnClick.OnEvent:= LeftMenuClick;
    end;

  end;
  OlTabsTop.TabsHidden:= True;

  //overlay controls
  OlOverlayMarker.StyleRenderOptions.RenderPosition:= False;
  OlOverlayMarker.StyleRenderOptions.RenderAbsolute:= False;
  OlOverlayMarkerLabel.StyleRenderOptions.RenderPosition:= False;
  OlOverlayMarkerLabel.StyleRenderOptions.RenderAbsolute:= False;
  OlPopup.StyleRenderOptions.RenderPosition:= False;
  OlPopup.StyleRenderOptions.RenderAbsolute:= False;

  // adjust position of popup on olcmdPopup
  OlPopup.Style.Values['position']:= 'relative';
  OlPopup.Style.Values['left']:= '-50%';
  OlPopup.Style.Values['top']:= '-' + (IntToStr(OlPopup.Height + 22)) + 'px';

  // olBingMapsImagerySet
  for I := 0 to Length(LBingMapsStyles)-1 do
  begin
    with olBingMapsImagerySet.Items.Add do
      Caption:= LBingMapsStyles[i];
  end;
  olBingMapsImagerySet.SelectedIndex:= 3; // AerialWithLabels

  with btnAsyncViewGetInfo.JQButtonOptions.OnClick do
  begin

    with BrowserParams.Add do
    begin
      ServerName:= 'center';
      js:= Ol.MapOptionsPluggableMap.View.jsGetCenter;
      BrowserScript:= Copy(js, 1, Length(js) - 1); //remove ; from script
    end;

    with BrowserParams.Add do
    begin
      ServerName:= 'maxZoom';
      js:= Ol.MapOptionsPluggableMap.View.jsGetMaxZoom;
      BrowserScript:= Copy(js, 1, Length(js) - 1); //remove ; from script
    end;

    with BrowserParams.Add do
    begin
      ServerName:= 'minZoom';
      js:= Ol.MapOptionsPluggableMap.View.jsGetMinZoom;
      BrowserScript:= Copy(js, 1, Length(js) - 1); //remove ; from script
    end;

    with BrowserParams.Add do
    begin
      ServerName:= 'rotation';
      js:= Ol.MapOptionsPluggableMap.View.jsGetRotation;
      BrowserScript:= Copy(js, 1, Length(js) - 1); //remove ; from script
    end;

    with BrowserParams.Add do
    begin
      ServerName:= 'zoom';
      js:= Ol.MapOptionsPluggableMap.View.jsGetZoom;
      BrowserScript:= Copy(js, 1, Length(js) - 1); //remove ; from script
    end;

  end;


  ProcessExample(OlExample[0]);
end;

procedure TIWForm6.IWCGJQButton10JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.ExportMapPng;
  IWTimer.Enabled:= True;
end;

procedure TIWForm6.IWCGJQButton11JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lat:= '40,364625';
  ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lon:= '-8,454519';
  ol.MapOptionsPluggableMap.View.ApplyCenter;
end;

procedure TIWForm6.IWCGJQButton12JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.View.Zoom:= Random(18);
end;

procedure TIWForm6.IWCGJQButton13JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.View.MinZoom:= 5;
end;

procedure TIWForm6.IWCGJQButton14JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.View.MaxZoom:= 8;
end;

procedure TIWForm6.IWCGJQButton15JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.View.Rotation:= Random(360);
end;

procedure TIWForm6.IWCGJQButton1JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.Interactions.SetDrawInteraction(olgtPOINT);
end;

procedure TIWForm6.IWCGJQButton2JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.Interactions.SetDrawInteraction(olgtPOLYGON);
end;

procedure TIWForm6.IWCGJQButton3JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.Interactions.SetDrawInteraction(olgtLINE_STRING);
end;

procedure TIWForm6.IWCGJQButton4JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  FModToggle:= not FModToggle;
  Ol.MapOptionsPluggableMap.Interactions.ToggleModification(FModToggle);
end;

procedure TIWForm6.IWCGJQButton5JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  FSelectableToggle:= not FSelectableToggle;
  Ol.MapOptionsPluggableMap.Interactions.ToggleSelectable(FSelectableToggle);
end;

procedure TIWForm6.IWCGJQButton6JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  FMovableToggle:= not FMovableToggle;
  Ol.MapOptionsPluggableMap.Interactions.ToggleTranslate(FMovableToggle);
end;

procedure TIWForm6.IWCGJQButton7JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.Layers[1].DoExportFeatures;
  WebApplication.ShowMessage('Features Saved!');
end;

procedure TIWForm6.IWCGJQButton8JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  if FSavedFeatures <> '' then
    Ol.MapOptionsPluggableMap.Layers[1].LayerOptionsVectorLayer.SourceOptionsVectorSource.LoadGeoJSONFeatures(FSavedFeatures);
end;

procedure TIWForm6.IWCGJQButton9JQButtonOptionsClick(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.Layers[1].ClearFeatures;
end;

procedure TIWForm6.IWCGJQCheckBoxEx1JQCheckExOptionsChange(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.Layers[1].LayerOptions.Visible:= IWCGJQCheckBoxEx1.Checked;
end;

procedure TIWForm6.IWCGJQCheckBoxEx2JQCheckExOptionsChange(Sender: TObject; AParams: TStringList);
var
  LWithTransaction: Boolean;
begin
  LWithTransaction:= IWCGJQCheckBoxEx2.Checked;
  Ol.MapOptionsPluggableMap.Layers[0].LayerOptions.Visible:= LWithTransaction;
  Ol.MapOptionsPluggableMap.Layers[1].LayerOptions.Visible:= not LWithTransaction;
end;

procedure TIWForm6.IWCGJQComboBoxEx1JQComboBoxExOptionsChange(Sender: TObject; AParams: TStringList);
begin
  Ol.MapOptionsPluggableMap.Controls[0].ControlOptionsScaleLine.Units:= IWCGJQComboBoxEx1.SelectedItem.Value;
end;

procedure TIWForm6.IWCGJQComboBoxEx2JQComboBoxExOptionsChange(Sender: TObject; AParams: TStringList);
begin
  if IWCGJQComboBoxEx2.SelectedItem.Value = 'area' then
    CGAddJavaScriptToAjaxResponse('MeasureObj.changeDrawType("area");')
  else
    CGAddJavaScriptToAjaxResponse('MeasureObj.changeDrawType("line");');
end;

procedure TIWForm6.IWCGJQDropDown1JQDropDownOptionsChange(Sender: TObject; AParams: TStringList);
var
  Idx: Integer;
  LArea: Integer;
begin
  Idx:= cboCartoDbArea.SelectedIndex;
  if (Idx > -1) then
  begin
    LArea:= StrToInt(cboCartoDbArea.Items[Idx].Value);
    Ol.MapOptionsPluggableMap.Layers[1].LayerOptionsTileLayer.SourceOptionsCartoDB.SetConfig( GetCartoDBConfig(LArea) );
  end;
end;

procedure TIWForm6.IWCGJQSlider1JQSliderOptionsStop(Sender: TObject; AParams: TStringList);
var
  LOpacity: Extended;
  I: Integer;
begin
  LOpacity:= StrToInt(AParams.Values['IWCGJQSLIDER1_DATA']) / 100;
  for I := 0 to Ol.MapOptionsPluggableMap.Layers[1].LayerOptionsGroup.Layers.Count-1 do
    Ol.MapOptionsPluggableMap.Layers[1].LayerOptionsGroup.Layers[I].LayerOptions.Opacity:= LOpacity;
end;

procedure TIWForm6.IWTimerAsyncTimer(Sender: TObject; EventParams: TStringList);
begin
  if FCurr.Command = olcmdExportMap then
  begin
    if (FMapExportPngBase64 <> '') then
    begin
      imgMapExport.Picture.Url:= FMapExportPngBase64;
      IWTimer.Enabled:= False;
      FMapExportPngBase64:= '';
    end;
  end;
end;

procedure TIWForm6.LeftMenuClick(Sender: TObject; AParams: TStringList);
var
  Idx: Integer;
  ExampleRec: TOlExample;
  JS: TIWCGJScript;
begin
  Idx:= TIWCGPanelListItem(Sender).Tag;
  ExampleRec:= OlExample[Idx];

  ProcessExample(ExampleRec);
  Ol.AjaxReRender(True,False);
  if FReRenderBinder then
    IWCGJQEventBinder1.AjaxReRender;
  if FMeasureExample then
    CGAddJavaScriptToAjaxResponse( Format('MeasureObj.init(%s.olmap, %s.getSource());', [Ol.OlJsObjName, Ol.MapOptionsPluggableMap.Layers[1].LayerOptions.jsGetOlObj]));
  if FWFSGetFeature then
  begin
    JS:= TIWCGJScript.Create;
    try
      JS.Add( 'fetch("https://ahocevar.com/geoserver/wfs", {');
      JS.Add( '  method: "POST",');
      JS.Add( '  body: new XMLSerializer().serializeToString(WFSGetFeatureRequest)');
      JS.Add( '}).then(function(response) {');
      JS.Add( '  return response.json();');
      JS.Add( '}).then(function(json) {');
      JS.Add( '  var features = new ol.format.GeoJSON().readFeatures(json);');
      JS.AddF('  %s.addFeatures(features);', [Ol.MapOptionsPluggableMap.Layers[1].LayerOptionsVectorLayer.SourceOptionsVectorSource.jsGetOlObj]);
      JS.AddF('  %s.olmap.getView().fit(%s.getExtent());', [Ol.OlJsObjName, Ol.MapOptionsPluggableMap.Layers[1].LayerOptionsVectorLayer.SourceOptionsVectorSource.jsGetOlObj]);
      JS.Add( '});');

      CGAddJavaScriptToAjaxResponse(JS.Text);
    finally
      JS.Free;
    end;
  end;
end;

procedure TIWForm6.olBingMapsImagerySetJQComboBoxExOptionsChange(Sender: TObject; AParams: TStringList);
var
  I: Integer;
begin
  for I := 0 to Length(LBingMapsStyles)-1 do
    Ol.MapOptionsPluggableMap.Layers[I].LayerOptions.Visible:= (I = olBingMapsImagerySet.SelectedIndex);
end;

procedure TIWForm6.OlLayerFeaturesExport(Sender: TObject; const ALayerCGUID, AJSonString: string);
begin
  FSavedFeatures:= AJSonString;
end;

procedure TIWForm6.OlDragAndDropEvent(Sender: TObject; AParams: TStringList);
var
  LFeatures: string;
  LLayer: TIWCGOlLayerGUI;
begin
  LFeatures:= AParams.Values['jsonFeatures'];

  LLayer:= Ol.MapOptionsPluggableMap.Layers.Add;

  with LLayer do
  begin
    LayerType:= olltVectorLayer;
    LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
  end;

  Ol.MapOptionsPluggableMap.Layers.Render;
  LLayer.LayerOptionsVectorLayer.SourceOptionsVectorSource.LoadGeoJSONFeatures(LFeatures);
  LLayer.LayerOptionsVectorLayer.SourceOptionsVectorSource.MapFitToExtent;
end;

procedure TIWForm6.OlMapExportPNG(Sender: TObject; const ABase64: string);
begin
  FMapExportPngBase64:= ABase64;
end;

procedure TIWForm6.OlMapSingleClick(Sender: TObject; AParams: TStringList);
var
  ACoord: ISuperObject;
begin
  OlPopup.Visible:= True;
  ACoord:= OlStrCoordToSO(AParams.Values['coord']);
  Ol.MapOptionsPluggableMap.Overlays[0].SetPosition(ACoord);
end;

procedure TIWForm6.ProcessExample(ARec: TOlExample);
var
  GroupLayer: TIWCGOlLayerGUI;
  LInteractionSelect: TIWCGOlInteractionGUI;
  IsAsync: Boolean;
  I: Integer;
  JS: TIWCGJScript;
  MyFormatSettings: TFormatSettings;
  LUrl: string;
  AuxJson: ISuperObject;
begin
  FCurr:= ARec;
  FMeasureExample:= False;
  FReRenderBinder:= False;
  FWFSGetFeature:= False;
  IsAsync:= CGIsCallBackProcessing;

  JQNoty.JQNotificationNotyOptions.CloseNotification;
  OlPopup.Visible:= False;
  OlOverlayMarker.Visible:= False;
  OlOverlayMarkerLabel.Visible:= False;

  if ARec.TabIndex > -1 then
  begin
    OlTabsTop.Visible:= True;
    OlTabsTop.ActiveTabIndex:= ARec.TabIndex;
  end else
  begin
    OlTabsTop.Visible:= False;
  end;

  IWCGJQEventBinder1.UnBindAll;
  IWCGJQEventBinder1.ElementList.Clear;

  // should be here, before CGCallBackDisableAjaxResponse
  if ARec.Command = olcmdOverlay then
  begin
    OlOverlayMarker.Visible:= True;
    OlOverlayMarkerLabel.Visible:= True;
  end else if ARec.Command = olcmdPopup then
  begin
    OlPopup.Visible:= True;
  end else if ARec.Command = olcmdDragRotateZoom then
  begin
    JQNoty.JQNotificationNotyOptions.Text:= 'Shift+Drag to rotate and zoom the map around its center.';
    JQNoty.JQNotificationNotyOptions.ShowNotification;
  end else if ARec.Command = olcmdDragDrop then
  begin
    JQNoty.JQNotificationNotyOptions.Text:= 'Drag and drop GPX, GeoJSON, IGC, KML, or TopoJSON files on to the map.';
    JQNoty.JQNotificationNotyOptions.ShowNotification;
  end;

  if IsAsync then
    CGCallBackDisableAjaxResponse;

  Ol.ResetJSonProps;

  try
    case ARec.Command of
      olcmdSimpleMap:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststOSM;
           end;
           Ol.MapOptionsPluggableMap.View.Center.X:= '0';
           Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
           Ol.MapOptionsPluggableMap.View.Zoom:= 3;
        end;
      olcmdBingMaps:
        begin
          for I := 0 to Length(LBingMapsStyles)-1 do
          begin
            with Ol.MapOptionsPluggableMap.Layers.Add do
            begin
              LayerType:= olltTileLayer;
              LayerOptionsTileLayer.Visible:= SameStr(LBingMapsStyles[I], 'AerialWithLabels');
              LayerOptionsTileLayer.Preload:= -1; // Infinity
              LayerOptionsTileLayer.SourceType:= olststBingMaps;
              LayerOptionsTileLayer.SourceOptionsBingMaps.Key:= BingMapsKey;
              LayerOptionsTileLayer.SourceOptionsBingMaps.ImagerySet:= LBingMapsStyles[I];
            end;
          end;

          Ol.MapOptionsPluggableMap.LoadTilesWhileInteracting:= True;
          Ol.MapOptionsPluggableMap.View.Center.X:= '-6655,5402445057125';
          Ol.MapOptionsPluggableMap.View.Center.Y:= '6709968,258934638';
          Ol.MapOptionsPluggableMap.View.Zoom:= 13;
        end;
      olcmdTiledArcGISMapServer:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststOSM;
           end;

           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststTileArcGISRest;
             LayerOptionsTileLayer.Extent.MinX:= '-13884991';
             LayerOptionsTileLayer.Extent.MinY:= '2870341';
             LayerOptionsTileLayer.Extent.MaxX:= '-7455066';
             LayerOptionsTileLayer.Extent.MaxY:= '6338219';
             LayerOptionsTileLayer.SourceOptionsTileArcGISRest.Url:= 'https://sampleserver1.arcgisonline.com/ArcGIS/rest/services/Specialty/ESRI_StateCityHighway_USA/MapServer'
           end;

           Ol.MapOptionsPluggableMap.View.Center.X:= '-10997148';
           Ol.MapOptionsPluggableMap.View.Center.Y:= '4569099';
           Ol.MapOptionsPluggableMap.View.Zoom:= 4;
        end;
      olcmdSemiTransparentLayer:
        begin

           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststOSM;
           end;

           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststTileJSON;
             LayerOptionsTileLayer.SourceOptionsTileJSON.Url:= 'https://api.tiles.mapbox.com/v3/mapbox.va-quake-aug.json?secure';
             LayerOptionsTileLayer.SourceOptionsTileJSON.CrossOrigin:= 'anonymous';
             LayerOptionsTileLayer.SourceOptionsTileJSON.Transition:= 0;
           end;

           Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lat:= '37,9555';
           Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lon:= '-77,93255';
           Ol.MapOptionsPluggableMap.View.Zoom:= 7;
        end;
      olcmdStaticImage:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltImageLayer;
             LayerOptionsImageLayer.SourceType:= olsistImageStatic;
             LayerOptionsImageLayer.SourceOptionsImageStatic.Attributions.Add('© <a href="http://xkcd.com/license.html">xkcd</a>');
             LayerOptionsImageLayer.SourceOptionsImageStatic.Url:= 'https://imgs.xkcd.com/comics/online_communities.png';
             LayerOptionsImageLayer.SourceOptionsImageStatic.Projection.Code:= 'xkcd-image';
             LayerOptionsImageLayer.SourceOptionsImageStatic.Projection.Units:= oluPIXELS;
             LayerOptionsImageLayer.SourceOptionsImageStatic.Projection.Extent.MinX:= '0';
             LayerOptionsImageLayer.SourceOptionsImageStatic.Projection.Extent.MinY:= '0';
             LayerOptionsImageLayer.SourceOptionsImageStatic.Projection.Extent.MaxX:= '1024';
             LayerOptionsImageLayer.SourceOptionsImageStatic.Projection.Extent.MaxY:= '968';

             LayerOptionsImageLayer.SourceOptionsImageStatic.ImageExtent.MinX:= '0';
             LayerOptionsImageLayer.SourceOptionsImageStatic.ImageExtent.MinY:= '0';
             LayerOptionsImageLayer.SourceOptionsImageStatic.ImageExtent.MaxX:= '1024';
             LayerOptionsImageLayer.SourceOptionsImageStatic.ImageExtent.MaxY:= '968';
           end;

           Ol.MapOptionsPluggableMap.View.Projection.Code:= 'xkcd-image';
           Ol.MapOptionsPluggableMap.View.Projection.Units:= oluPIXELS;
           Ol.MapOptionsPluggableMap.View.Projection.Extent.MinX:= '0';
           Ol.MapOptionsPluggableMap.View.Projection.Extent.MinY:= '0';
           Ol.MapOptionsPluggableMap.View.Projection.Extent.MaxX:= '1024';
           Ol.MapOptionsPluggableMap.View.Projection.Extent.MaxY:= '968';

           Ol.MapOptionsPluggableMap.View.Center.CenterFromExtent.MinX:= '0';
           Ol.MapOptionsPluggableMap.View.Center.CenterFromExtent.MinY:= '0';
           Ol.MapOptionsPluggableMap.View.Center.CenterFromExtent.MaxX:= '1024';
           Ol.MapOptionsPluggableMap.View.Center.CenterFromExtent.MaxY:= '968';

           Ol.MapOptionsPluggableMap.View.Zoom:= 2;
           Ol.MapOptionsPluggableMap.View.MaxZoom:= 8;
        end;

      olcmdLayerGroup:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststOSM;
           end;

           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltLayerGroup;
             GroupLayer:= LayerOptionsGroup.Layers.Add;
             GroupLayer.LayerType:= olltTileLayer;
             GroupLayer.LayerOptionsTileLayer.SourceType:= olststTileJSON;
             GroupLayer.LayerOptionsTileLayer.SourceOptionsTileJSON.Url:= 'https://api.tiles.mapbox.com/v3/mapbox.20110804-hoa-foodinsecurity-3month.json?secure';
             GroupLayer.LayerOptionsTileLayer.SourceOptionsTileJSON.CrossOrigin:= 'anonymous';

             GroupLayer:= LayerOptionsGroup.Layers.Add;
             GroupLayer.LayerType:= olltTileLayer;
             GroupLayer.LayerOptionsTileLayer.SourceType:= olststTileJSON;
             GroupLayer.LayerOptionsTileLayer.SourceOptionsTileJSON.Url:= 'https://api.tiles.mapbox.com/v3/mapbox.world-borders-light.json?secure';
             GroupLayer.LayerOptionsTileLayer.SourceOptionsTileJSON.CrossOrigin:= 'anonymous';
           end;

           Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lat:= '8,81566';
           Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lon:= '37,40570';
           Ol.MapOptionsPluggableMap.View.Zoom:= 4;
        end;

      olcmdTileTransitions:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststXYZ;
             LayerOptionsTileLayer.SourceOptionsXYZ.Url:= 'https://{a-c}.tiles.mapbox.com/v3/mapbox.world-bright/{z}/{x}/{y}.png';
           end;

           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststXYZ;
             LayerOptionsTileLayer.SourceOptionsXYZ.Url:= 'https://{a-c}.tiles.mapbox.com/v3/mapbox.world-bright/{z}/{x}/{y}.png';
             LayerOptionsTileLayer.SourceOptionsXYZ.Transition:= 0;
             LayerOptionsTileLayer.Visible:= False;
           end;

           Ol.MapOptionsPluggableMap.View.Center.X:= '0';
           Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
           Ol.MapOptionsPluggableMap.View.Zoom:= 2;
           Ol.MapOptionsPluggableMap.View.MaxZoom:= 11;

        end;

      olcmdControls:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststOSM;
           end;

           Ol.MapOptionsPluggableMap.View.Center.X:= '500000';
           Ol.MapOptionsPluggableMap.View.Center.Y:= '6000000';
           Ol.MapOptionsPluggableMap.View.Zoom:= 5;

           with Ol.MapOptionsPluggableMap.Controls.Add do
             ControlType:= olctOverviewMap;

           with Ol.MapOptionsPluggableMap.Controls.Add do
           begin
             ControlType:= olctZoomToExtent;
             ControlOptionsZoomToExtent.Extent.MinX:= '813079,7791264898';
             ControlOptionsZoomToExtent.Extent.MinY:= '5929220,284081122';
             ControlOptionsZoomToExtent.Extent.MaxX:= '848966,9639063801';
             ControlOptionsZoomToExtent.Extent.MaxY:= '5936863,986909639';
           end;

           with Ol.MapOptionsPluggableMap.Controls.Add do
             ControlType:= olctFullScreen;

           with Ol.MapOptionsPluggableMap.Controls.Add do
             ControlType:= olctZoomSlider;
        end;

      olcmdDragRotateZoom:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststOSM;
           end;

           Ol.MapOptionsPluggableMap.View.Center.X:= '0';
           Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
           Ol.MapOptionsPluggableMap.View.Zoom:= 2;

           with Ol.MapOptionsPluggableMap.Interactions.Add do
            InteractionType:= olitDragRotateAndZoom;
        end;
      olcmdIconColors:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststTileJSON;
             LayerOptionsTileLayer.SourceOptionsTileJSON.Url:= 'https://api.tiles.mapbox.com/v3/mapbox.geography-class.json?secure';
           end;

           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltVectorLayer;
             LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
             // rome
             with LayerOptionsVectorLayer.SourceOptionsVectorSource.Features.Add do
             begin
               GeometryType:= olgeotPoint;
               GeometryOptionsPoint.Coordinates.FromLonLat.Lat:= '41,9';
               GeometryOptionsPoint.Coordinates.FromLonLat.Lon:= '12,5';
               Style.ImageType:= olsitIcon;
               Style.ImageOptionsIcon.Color.Color:= '#8959A8';
               Style.ImageOptionsIcon.CrossOrigin:= 'anonymous';
               Style.ImageOptionsIcon.Src:= 'images/dot.png';
             end;
             // london
             with LayerOptionsVectorLayer.SourceOptionsVectorSource.Features.Add do
             begin
               GeometryType:= olgeotPoint;
               GeometryOptionsPoint.Coordinates.FromLonLat.Lat:= '51,507222';
               GeometryOptionsPoint.Coordinates.FromLonLat.Lon:= '-0,12755';
               Style.ImageType:= olsitIcon;
               Style.ImageOptionsIcon.Color.Color:= '#4271AE';
               Style.ImageOptionsIcon.CrossOrigin:= 'anonymous';
               Style.ImageOptionsIcon.Src:= 'images/dot.png';
             end;

             // madrid
             with LayerOptionsVectorLayer.SourceOptionsVectorSource.Features.Add do
             begin
               GeometryType:= olgeotPoint;
               GeometryOptionsPoint.Coordinates.FromLonLat.Lat:= '40,4';
               GeometryOptionsPoint.Coordinates.FromLonLat.Lon:= '-3,683333';
               Style.ImageType:= olsitIcon;
               Style.ImageOptionsIcon.Color.ColorRGB.Red:= '113';
               Style.ImageOptionsIcon.Color.ColorRGB.Green:= '140';
               Style.ImageOptionsIcon.Color.ColorRGB.Blue:= '0';
               Style.ImageOptionsIcon.CrossOrigin:= 'anonymous';
               Style.ImageOptionsIcon.Src:= 'images/dot.png';
             end;

           end;

           Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lat:= '44,60240';
           Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lon:= '2,896372';
           Ol.MapOptionsPluggableMap.View.Zoom:= 3;
        end;

      olcmdScaleLine:
        begin
           with Ol.MapOptionsPluggableMap.Layers.Add do
           begin
             LayerType:= olltTileLayer;
             LayerOptionsTileLayer.SourceType:= olststOSM;
           end;
           Ol.MapOptionsPluggableMap.View.Center.X:= '0';
           Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
           Ol.MapOptionsPluggableMap.View.Zoom:= 2;

           with Ol.MapOptionsPluggableMap.Controls.Add do
            ControlType:= olctScaleLine;
        end;
      olcmdPopup:
        begin
          with Ol.MapOptionsPluggableMap.Layers.Add do
          begin
            LayerType:= olltTileLayer;
            LayerOptionsTileLayer.SourceType:= olststTileJSON;
            LayerOptionsTileLayer.SourceOptionsTileJSON.Url:= 'https://api.tiles.mapbox.com/v3/mapbox.natural-earth-hypso-bathy.json?secure';
            LayerOptionsTileLayer.SourceOptionsTileJSON.CrossOrigin:= 'anonymous';
          end;

          Ol.MapOptionsPluggableMap.View.Center.X:= '0';
          Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
          Ol.MapOptionsPluggableMap.View.Zoom:= 2;

          with Ol.MapOptionsPluggableMap.Overlays.Add do
          begin
            Element:= OlPopup;
            AutoPan:= True;
            AutoPanAnimation.Time:= 250;
          end;

          Ol.MapOptionsPluggableMap.Events.OnSingleClick.OnEvent:= OlMapSingleClick;
          with Ol.MapOptionsPluggableMap.Events.OnSingleClick.BrowserParams.Add do
          begin
            ServerName:= 'coord';
            BrowserScript:= 'e.coordinate';
          end;
        end;
      olcmdDrawShapes:
        begin
          with Ol.MapOptionsPluggableMap.Layers.Add do
          begin
            LayerType:= olltTileLayer;
            LayerOptionsTileLayer.SourceType:= olststOSM;
          end;

          with Ol.MapOptionsPluggableMap.Layers.Add do
          begin
            LayerType:= olltVectorLayer;
            LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;

          with LayerOptionsVectorLayer.Style.Add do
          begin
            ImageType:= olsitCircleStyle;
            ImageOptionsCircleStyle.Fill.Color.Color:= '#ffcc33';
            ImageOptionsCircleStyle.Radius:= 7;
            Stroke.Width:= 2;
            Stroke.Color.Color:= '#ffcc33';
            Fill.Color.ColorRGB.Red:= '255';
            Fill.Color.ColorRGB.Green:= '255';
            Fill.Color.ColorRGB.Blue:= '255';
            Fill.Color.ColorRGB.Alpha:= 0.2;
          end;

          with Ol.MapOptionsPluggableMap.Interactions.Add do
          begin
            Active:= False;
            InteractionType:= olitDraw;
            InteractionOptionsDraw.SourceFromLayerIndex:= 1;
            InteractionOptionsDraw.Type_:= olgtPOINT;
          end;

          with Ol.MapOptionsPluggableMap.Interactions.Add do
          begin
            Active:= False;
            InteractionType:= olitDraw;
            InteractionOptionsDraw.SourceFromLayerIndex:= 1;
            InteractionOptionsDraw.Type_:= olgtPOLYGON;
          end;

          with Ol.MapOptionsPluggableMap.Interactions.Add do
          begin
            Active:= False;
            InteractionType:= olitDraw;
            InteractionOptionsDraw.SourceFromLayerIndex:= 1;
            InteractionOptionsDraw.Type_:= olgtLINE_STRING;
          end;

          LInteractionSelect:= Ol.MapOptionsPluggableMap.Interactions.Add;
          with LInteractionSelect do
          begin
            Active:= False;
            InteractionType:= olitSelect;
          end;

          with Ol.MapOptionsPluggableMap.Interactions.Add do
          begin
            Active:= False;
            InteractionType:= olitModify;
            InteractionOptionsModify.SourceFromLayerIndex:= 1;
          end;

          with Ol.MapOptionsPluggableMap.Interactions.Add do
          begin
            Active:= False;
            InteractionType:= olitTranslate;
          end;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X := '-11000000';
        Ol.MapOptionsPluggableMap.View.Center.Y := '4600000';
        Ol.MapOptionsPluggableMap.View.Zoom := 4;

        Ol.OnLayerFeaturesExport:= OlLayerFeaturesExport;
      end;
    olcmdMagnify:
      begin

        JS:= TIWCGJScript.Create;
        try
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.Preload:= -1; // Infinity
          LayerOptionsTileLayer.SourceType:= olststBingMaps;
          LayerOptionsTileLayer.SourceOptionsBingMaps.Key:= BingMapsKey;
          LayerOptionsTileLayer.SourceOptionsBingMaps.ImagerySet:= 'Aerial';

          Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lat := '46,5';
          Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lon := '-109';
          Ol.MapOptionsPluggableMap.View.Zoom := 6;

          JS.Add ('function(event) {');
          JS.Add ('  if (mousePosition) {');
          JS.Add ('    var context = event.context;');
          JS.Add ('    var pixelRatio = event.frameState.pixelRatio;');
          JS.Add ('    var half = radius * pixelRatio;');
          JS.Add ('    var centerX = mousePosition[0] * pixelRatio;');
          JS.Add ('    var centerY = mousePosition[1] * pixelRatio;');
          JS.Add ('    var originX = centerX - half;');
          JS.Add ('    var originY = centerY - half;');
          JS.Add ('    var size = 2 * half + 1;');
          JS.Add ('    var sourceData = context.getImageData(originX, originY, size, size).data;');
          JS.Add ('    var dest = context.createImageData(size, size);');
          JS.Add ('    var destData = dest.data;');
          JS.Add ('    for (var j = 0; j < size; ++j) {');
          JS.Add ('      for (var i = 0; i < size; ++i) {');
          JS.Add ('        var dI = i - half;');
          JS.Add ('        var dJ = j - half;');
          JS.Add ('        var dist = Math.sqrt(dI * dI + dJ * dJ);');
          JS.Add ('        var sourceI = i;');
          JS.Add ('        var sourceJ = j;');
          JS.Add ('        if (dist < half) {');
          JS.Add ('          sourceI = Math.round(half + dI / 2);');
          JS.Add ('          sourceJ = Math.round(half + dJ / 2);');
          JS.Add ('        }');
          JS.Add ('        var destOffset = (j * size + i) * 4;');
          JS.Add ('        var sourceOffset = (sourceJ * size + sourceI) * 4;');
          JS.Add ('        destData[destOffset] = sourceData[sourceOffset];');
          JS.Add ('        destData[destOffset + 1] = sourceData[sourceOffset + 1];');
          JS.Add ('        destData[destOffset + 2] = sourceData[sourceOffset + 2];');
          JS.Add ('        destData[destOffset + 3] = sourceData[sourceOffset + 3];');
          JS.Add ('      }');
          JS.Add ('    }');
          JS.Add ('    context.beginPath();');
          JS.Add ('    context.arc(centerX, centerY, half, 0, 2 * Math.PI);');
          JS.Add ('    context.lineWidth = 3 * pixelRatio;');
          JS.Add ('    context.strokeStyle = ''rgba(255,255,255,0.5)'';');
          JS.Add ('    context.putImageData(dest, originX, originY);');
          JS.Add ('    context.stroke();');
          JS.Add ('    context.restore();');
          JS.Add ('  }');
          JS.Add ('}');

          LayerOptionsTileLayer.Events.OnPostCompose.Script:= JS.Text;
        end;

        // keydown
        JS.Clear;
        JS.Add ('function(evt) {');
        JS.Add ('  if (event.which === 38) {');
        JS.Add ('    radius = Math.min(radius + 5, 150);');
        JS.AddF('    %s.olmap.render();', [Ol.OlJsObjName]);
        JS.Add ('    event.preventDefault();');
        JS.Add ('  } else if (evt.which === 40) {');
        JS.Add ('    radius = Math.max(radius - 5, 25);');
        JS.AddF('    %s.olmap.render();', [Ol.OlJsObjName]);
        JS.Add ('    event.preventDefault();');
        JS.Add ('  }');
        JS.Add ('}');

        with IWCGJQEventBinder1.ElementList.Add do
        begin
          Control:= Ol;
          Events.OnKeyDown.Script:= JS.Text;
        end;

        // mousemove
        JS.Clear;
        JS.Add ('function(event) {');
        JS.AddF('  mousePosition = %s.olmap.getEventPixel(event);', [Ol.OlJsObjName]);
        JS.AddF('  %s.olmap.render();', [Ol.OlJsObjName]);
        JS.Add ('}');

        with IWCGJQEventBinder1.ElementList.Add do
        begin
          Control:= Ol;
          Events.OnMouseMove.Script:= JS.Text;
        end;

        // mouseout
        JS.Clear;
        JS.Add ('function(event) {');
        JS.Add ('  mousePosition = null;');
        JS.AddF('  %s.olmap.render();', [Ol.OlJsObjName]);
        JS.Add ('}');

        with IWCGJQEventBinder1.ElementList.Add do
        begin
          Control:= Ol;
          Events.OnMouseOut.Script:= JS.Text;
        end;

        finally
          JS.Free;
        end;
        FReRenderBinder:= True;
      end;
    olcmdDragDrop:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststBingMaps;
          LayerOptionsTileLayer.SourceOptionsBingMaps.Key:= BingMapsKey;
          LayerOptionsTileLayer.SourceOptionsBingMaps.ImagerySet:= 'Aerial';
        end;

        with Ol.MapOptionsPluggableMap.Interactions.Add do
        begin
          InteractionType:= olitDragAndDrop;
          with InteractionOptionsDragAndDrop.FormatConstructors.Add do
            FormatType:= olftGPX;
          with InteractionOptionsDragAndDrop.FormatConstructors.Add do
            FormatType:= olftGeoJSON;
          with InteractionOptionsDragAndDrop.FormatConstructors.Add do
            FormatType:= olftIGC;
          with InteractionOptionsDragAndDrop.FormatConstructors.Add do
            FormatType:= olftKML;
          with InteractionOptionsDragAndDrop.FormatConstructors.Add do
            FormatType:= olftTopoJSON;

          InteractionOptionsDragAndDrop.EventsDnD.OnDragAndDropEvent.Script:= 'function (e){ var jsonFeatures = new ol.format.GeoJSON().writeFeatures(e.features); }';

          with InteractionOptionsDragAndDrop.EventsDnD.OnDragAndDropEvent.BrowserParams.Add do
          begin
            ServerName:= 'jsonFeatures';
            BrowserScript:= 'jsonFeatures';
          end;
          InteractionOptionsDragAndDrop.EventsDnD.OnDragAndDropEvent.OnEvent:= OlDragAndDropEvent;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;
      end;
    olcmdAttributions:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;
        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;

        with Ol.MapOptionsPluggableMap.Controls.Add do
        begin
          ControlType:= olctAttribution;
          ControlOptionsAttribution.CollapsibleSource:= False;
          ControlOptionsAttribution.Collapsible:= False;
        end;

      end;
    olcmdCanvasTiles:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststTileDebug;
          LayerOptionsTileLayer.SourceOptionsTileDebug.Projection.Code:= 'EPSG:3857';
          LayerOptionsTileLayer.SourceOptionsTileDebug.TileGridFromLayerSourceIndex:= 0;
        end;

        Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lat:= '51,507222';
        Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lon:= '-0,1275';
        Ol.MapOptionsPluggableMap.View.Zoom:= 10;
      end;
    olcmdClusters:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtCluster;
          LayerOptionsVectorLayer.SourceOptionsCluster.Distance:= 50;
          with LayerOptionsVectorLayer.StyleEx do
          begin
            UseCache:= True;
            ImageType:= olsitCircleStyle;
            ImageOptionsCircleStyle.Radius:= 10;
            ImageOptionsCircleStyle.Stroke.Color.Color:= '#fff';
            ImageOptionsCircleStyle.Fill.Color.Color:= '#3399CC';
            Text.TextJs:= 'feature.get("features").length.toString()';
            Text.Fill.Color.Color:= '#fff';
          end;

          for I := 0 to 100 do
          begin
            with LayerOptionsVectorLayer.SourceOptionsCluster.Source.Features.Add do
            begin
              GeometryType:= olgeotPoint;
              GeometryOptionsPoint.Coordinates.X:= FloatToStr(2 * 4500000 * Random - 4500000);
              Randomize;
              GeometryOptionsPoint.Coordinates.Y:= FloatToStr(2 * 4500000 * Random - 4500000);
            end;
          end;
        end;
        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;
      end;
    olcmdCustomDrawShape:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;

          with LayerOptionsVectorLayer.Style.Add do
          begin
            ImageType:= olsitCircleStyle;
            ImageOptionsCircleStyle.Fill.Color.Color:= '#ffcc33';
            ImageOptionsCircleStyle.Radius:= 7;
            Stroke.Width:= 2;
            Stroke.Color.Color:= '#ffcc33';
            Fill.Color.ColorRGB.Red:= '255';
            Fill.Color.ColorRGB.Green:= '255';
            Fill.Color.ColorRGB.Blue:= '255';
            Fill.Color.ColorRGB.Alpha:= 0.2;
          end;

          with Ol.MapOptionsPluggableMap.Interactions.Add do
          begin
            InteractionType:= olitDraw;
            InteractionOptionsDraw.SourceFromLayerIndex:= 1;
            InteractionOptionsDraw.Type_:= olgtCIRCLE;

            JS:= TIWCGJScript.Create;
            try
              JS.Add('function(coordinates, geometry) {');
              JS.Add('  var center = coordinates[0];');
              JS.Add('  var last = coordinates[1];');
              JS.Add('  var dx = center[0] - last[0];');
              JS.Add('  var dy = center[1] - last[1];');
              JS.Add('  var radius = Math.sqrt(dx * dx + dy * dy);');
              JS.Add('  var rotation = Math.atan2(dy, dx);');
              JS.Add('  var newCoordinates = [];');
              JS.Add('  var numPoints = 12;');
              JS.Add('  for (var i = 0; i < numPoints; ++i) {');
              JS.Add('    var angle = rotation + i * 2 * Math.PI / numPoints;');
              JS.Add('    var fraction = i % 2 === 0 ? 1 : 0.5;');
              JS.Add('    var offsetX = radius * fraction * Math.cos(angle);');
              JS.Add('    var offsetY = radius * fraction * Math.sin(angle);');
              JS.Add('    newCoordinates.push([center[0] + offsetX, center[1] + offsetY]);');
              JS.Add('  }');
              JS.Add('  newCoordinates.push(newCoordinates[0].slice());');
              JS.Add('  if (!geometry) {');
              JS.Add('    geometry = new ol.geom.Polygon([newCoordinates]);');
              JS.Add('  } else {');
              JS.Add('    geometry.setCoordinates([newCoordinates]);');
              JS.Add('  }');
              JS.Add('  return geometry;');
              JS.Add('}');

              InteractionOptionsDraw.GeometryFunction.Script:= JS.Text;
            finally
              JS.Free;
            end;
          end;

        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;
      end;

    olcmdMousePosition:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Controls.Add do
        begin
          ControlType:= olctMousePosition;
          ControlOptionsMousePosition.Projection.Code:= 'EPSG:4326';
          ControlOptionsMousePosition.CoordinateFormat.Script:= 'ol.coordinate.createStringXY(4)';
          ControlOptionsMousePosition.UndefinedHTML:= '&nbsp;';
          ControlOptionsMousePosition.TargetControl:= lblMousePosition;
          ControlOptionsMousePosition.ClassName_:= 'no-css';
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;

      end;
    olcmdWFS:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststBingMaps;
          LayerOptionsTileLayer.SourceOptionsBingMaps.Key:= BingMapsKey;
          LayerOptionsTileLayer.SourceOptionsBingMaps.ImagerySet:= 'Aerial';
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
          LayerOptionsVectorLayer.SourceOptionsVectorSource.FormatType:= olftGeoJSON;
          LUrl:= '"https://ahocevar.com/geoserver/wfs?service=WFS&' +
              'version=1.1.0&request=GetFeature&typename=osm:water_areas&' +
              'outputFormat=application/json&srsname=EPSG:3857&' +
              'bbox=" + extent.join(",") + ",EPSG:3857"';
          LayerOptionsVectorLayer.SourceOptionsVectorSource.UrlFn.Script:= 'function(extent) { return ' + LUrl + '; }';
          LayerOptionsVectorLayer.SourceOptionsVectorSource.Strategy:= ollsBBOX;
          with LayerOptionsVectorLayer.Style.Add do
          begin
            Stroke.Color.ColorRGB.Red:= '0';
            Stroke.Color.ColorRGB.Green:= '0';
            Stroke.Color.ColorRGB.Blue:= '255';
            Stroke.Color.ColorRGB.Alpha:= 1;
            Stroke.Width:= 2;
          end;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X := '-8908887,277395891';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '5381918,072437216';
        Ol.MapOptionsPluggableMap.View.Zoom := 12;
        Ol.MapOptionsPluggableMap.View.MaxZoom := 19;

      end;
    olcmdExportMap:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 5;

        Ol.OnMapExportPNG:= OlMapExportPNG;
      end;

    olcmdGraticule:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
          LayerOptionsTileLayer.SourceOptionsOSM.WrapX:= False;
        end;

        with Ol.MapOptionsPluggableMap.Graticules.Add do
        begin
          StrokeStyle.Color.ColorRGB.Red:= '255';
          StrokeStyle.Color.ColorRGB.Green:= '120';
          StrokeStyle.Color.ColorRGB.Blue:= '0';
          StrokeStyle.Color.ColorRGB.Alpha:= 0.9;
          StrokeStyle.Width:= 2;
          StrokeStyle.LineDash.Add('0,5');
          StrokeStyle.LineDash.Add('4');
          ShowLabels:= True;
        end;

        Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lat:= '47,75';
        Ol.MapOptionsPluggableMap.View.Center.FromLonLat.Lon:= '4,8';
        Ol.MapOptionsPluggableMap.View.Zoom:= 5;

      end;
    olcmdOverlay:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Overlays.Add do
        begin
          Position.FromLonLat.Lat:= '48,208889';
          Position.FromLonLat.Lon:= '16,3725';
          Positioning:= OP_CENTER_CENTER;
          StopEvent:= False;
          Element:= OlOverlayMarker;
        end;

        with Ol.MapOptionsPluggableMap.Overlays.Add do
        begin
          Position.FromLonLat.Lat:= '48,208889';
          Position.FromLonLat.Lon:= '16,3725';
          Element:= OlOverlayMarkerLabel;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;

      end;
    olcmdSelection:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
          LayerOptionsVectorLayer.SourceOptionsVectorSource.Url:= 'https://openlayers.org/en/latest/examples/data/geojson/countries.geojson';
          LayerOptionsVectorLayer.SourceOptionsVectorSource.FormatType:= olftGeoJSON;
        end;

        LInteractionSelect:= Ol.MapOptionsPluggableMap.Interactions.Add;
        with LInteractionSelect do
        begin
          InteractionType:= olitSelect;

          JS:= TIWCGJScript.Create;
          try

            JS.Add('function() {');
            JS.AddF('  var names = %s.getFeatures().getArray().map(function(feature) {', [LInteractionSelect.InteractionOptions.jsGetOlObj]);
            JS.Add('    return feature.get("name");');
            JS.Add('  });');
            JS.Add('  if (names.length > 0) {');
            JS.AddF('    %s[0].innerHTML = names.join(", ");', [lblOlBoxSelection.GetIDJQuery]);
            JS.Add('  } else {');
            JS.AddF('    %s[0].innerHTML = "No countries selected";', [lblOlBoxSelection.GetIDJQuery]);
            JS.Add('  }');
            JS.Add('}');

            InteractionOptionsSelect.Events.OnFeatureAdd.Script:= JS.Text;
            InteractionOptionsSelect.Events.OnFeatureRemove.Script:= JS.Text;
          finally
            JS.Free;
          end;
        end;

        with Ol.MapOptionsPluggableMap.Interactions.Add do
        begin
          InteractionType:= olitDragBox;
          InteractionOptionsDragBox.Condition:= olecPlatformModifierKeyOnly;
          InteractionOptionsDragBox.Events.OnBoxStart.Script:= Format('function() { %s.clear(); }', [LInteractionSelect.InteractionOptions.jsGetOlObj]);
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;
      end;
    olcmdCartoDB:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststCartoDB;
          LayerOptionsTileLayer.SourceOptionsCartoDB.Account:= 'documentation';
          LayerOptionsTileLayer.SourceOptionsCartoDB.Config:= GetCartoDBConfig;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;

      end;
    olcmdGPX:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststBingMaps;
          LayerOptionsTileLayer.SourceOptionsBingMaps.Key:= BingMapsKey;
          LayerOptionsTileLayer.SourceOptionsBingMaps.ImagerySet:= 'Aerial';
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
          LayerOptionsVectorLayer.SourceOptionsVectorSource.Url:= 'https://openlayers.org/en/latest/examples/data/gpx/fells_loop.gpx';
          LayerOptionsVectorLayer.SourceOptionsVectorSource.FormatType:= olftGPX;

          JS:= TIWCGJScript.Create;
          try
            JS.Add( 'function(feature) {');
            JS.Add('  return gpxStyle[feature.getGeometry().getType()]'); // variable gpxStyle is declared on Form.ExtraHeader
            JS.Add( '}');
            LayerOptionsVectorLayer.StyleFn.Script:= JS.Text;
          finally
            JS.Free;
          end;
        end;

        JS:= TIWCGJScript.Create;
        try
          JS.Add( 'function(evt) {');
          JS.Add( '  if (evt.dragging) {');
          JS.Add( '    return;');
          JS.Add( '  }');
          JS.AddF('  var pixel = %s.olmap.getEventPixel(evt.originalEvent);', [Ol.OlJsObjName]);
          JS.Add( '  var features = [];');
          JS.AddF('  %s.olmap.forEachFeatureAtPixel(pixel, function(feature) {', [Ol.OlJsObjName]);
          JS.Add( '    features.push(feature);');
          JS.Add( '  });');
          JS.Add( '  if (features.length > 0) {');
          JS.Add( '    var info = [], i, ii;');
          JS.Add( '    for (i = 0, ii = features.length; i < ii; ++i) {');
          JS.Add( '      info.push(features[i].get("desc"));');
          JS.Add( '    }');
          JS.AddF('    %s.innerHTML = info.join(", ") || "(unknown)";', [gpxDataLabel.GetIDJQueryElem]);
          JS.AddF('    %s.olmap.getTarget().style.cursor = "pointer";', [Ol.OlJsObjName]);
          JS.Add( '  } else {');
          JS.AddF('    %s.innerHTML = "&nbsp;";', [gpxDataLabel.GetIDJQueryElem]);
          JS.AddF('    %s.olmap.getTarget().style.cursor = "";', [Ol.OlJsObjName]);
          JS.Add( '  }');
          JS.Add( '}');
          Ol.MapOptionsPluggableMap.Events.OnPointerMove.Script:= JS.Text;
        finally
          JS.Free;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '-7916041,528716288';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '5228379,045749711';
        Ol.MapOptionsPluggableMap.View.Zoom:= 12;

      end;
    olcmdLocalizedOpenStreetMap:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
          LayerOptionsTileLayer.SourceOptionsOSM.Attributions.Add('All maps © <a href="https://www.opencyclemap.org/">OpenCycleMap</a>');
          LayerOptionsTileLayer.SourceOptionsOSM.Attributions.Add(OSMATTRIBUTION);
          LayerOptionsTileLayer.SourceOptionsOSM.Url:= 'https://tile.thunderforest.com/cycle/{z}/{x}/{y}.png?apikey=079b50f8a26d494b853667143b056dac';
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
          LayerOptionsTileLayer.SourceOptionsOSM.Attributions.Add('All maps © <a href="http://www.openseamap.org/">OpenSeaMap</a>');
          LayerOptionsTileLayer.SourceOptionsOSM.Attributions.Add(OSMATTRIBUTION);
          LayerOptionsTileLayer.SourceOptionsOSM.Url:= 'https://tiles.openseamap.org/seamark/{z}/{x}/{y}.png';
          LayerOptionsTileLayer.SourceOptionsOSM.Opaque:= False;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '-244780,24508882355';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '5986452,183179816';
        Ol.MapOptionsPluggableMap.View.Zoom:= 15;
        Ol.MapOptionsPluggableMap.View.MaxZoom:= 158;

      end;
    olcmdCustomAnimation:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
          LayerOptionsVectorLayer.SourceOptionsVectorSource.WrapX:= False;

          JS:= TIWCGJScript.Create;
          try
            JS.Add( 'function(e) {');
            JS.Add( '  var feature = e.feature;');
            JS.Add( '  var start = new Date().getTime();');
            JS.AddF('  var listenerKey = %s.olmap.on("postcompose", function(event){',[Ol.OlJsObjName]);
            JS.Add( '    var vectorContext = event.vectorContext;');
            JS.Add( '    var frameState = event.frameState;');
            JS.Add( '    var flashGeom = feature.getGeometry().clone();');
            JS.Add( '    var elapsed = frameState.time - start;');
            JS.Add( '    var elapsedRatio = elapsed / 3000;');
            JS.Add( '    var radius = ol.easing.easeOut(elapsedRatio) * 25 + 5;');
            JS.Add( '    var opacity = ol.easing.easeOut(1 - elapsedRatio);');
            JS.Add( '    var style = new ol.style.Style({ image: new ol.style.Circle({ radius: radius, stroke: new ol.style.Stroke({ color: "rgba(255, 0, 0, " + opacity + ")", width: 0.25 + opacity }) }) });');
            JS.Add( '    vectorContext.setStyle(style);');
            JS.Add( '    vectorContext.drawGeometry(flashGeom);');
            JS.Add( '    if (elapsed > 3000) {');
            JS.Add( '      ol.Observable.unByKey(listenerKey);');
            JS.Add( '      return;');
            JS.Add( '    }');
            JS.AddF('    %s.olmap.render();', [Ol.OlJsObjName]);
            JS.Add( '  });');
            JS.Add( '}');

            LayerOptionsVectorLayer.SourceOptionsVectorSource.Events.OnAddFeature.Script:= JS.Text;
          finally
            JS.Free;
          end;
          //
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;
      end;
    olcmdCustomPolygonStyles:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
          LayerOptionsVectorLayer.SourceOptionsVectorSource.FeaturesJs:= '(new ol.format.GeoJSON()).readFeatures({"type":"FeatureCollection","crs":{"type":"name","properties":{"name":"EPSG:3857"}},'+
          '"features":[{"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-5000000,6000000],[-5000000,8000000],[-3000000,8000000],[-3000000,6000000],[-5000000,6000000]]]}},' +
          '{"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-2000000,6000000],[-2000000,8000000],[0,8000000],[0,6000000],[-2000000,6000000]]]}},{"type":"Feature","geometry":'+
          '{"type":"Polygon","coordinates":[[[1000000,6000000],[1000000,8000000],[3000000,8000000],[3000000,6000000],[1000000,6000000]]]}},{"type":"Feature","geometry":{"type":"Polygon","coordinates":' +
          '[[[-2000000,-1000000],[-1000000,1000000],[0,-1000000],[-2000000,-1000000]]]}}]})';

          with LayerOptionsVectorLayer.Style.Add do
          begin
            Stroke.Color.Color:= 'blue';
            Stroke.Width:= 3;
            Fill.Color.ColorRGB.Red:= '0';
            Fill.Color.ColorRGB.Green:= '0';
            Fill.Color.ColorRGB.Blue:= '255';
            Fill.Color.ColorRGB.Alpha:= 0.1;
          end;

          with LayerOptionsVectorLayer.Style.Add do
          begin
            ImageType:= olsitCircleStyle;
            ImageOptionsCircleStyle.Radius:= 5;
            ImageOptionsCircleStyle.Fill.Color.Color:= 'orange';
            GeometryJs:= 'function(feature) { return new ol.geom.MultiPoint(feature.getGeometry().getCoordinates()[0]); }';
          end;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '3000000';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;
      end;
    olcmdVectorLabelDecluttering:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
          LayerOptionsVectorLayer.SourceOptionsVectorSource.Url:= 'https://openlayers.org/en/latest/examples/data/geojson/countries.geojson';
          LayerOptionsVectorLayer.SourceOptionsVectorSource.FormatType:= olftGeoJSON;
          // vldLabelStyle, vldCountryStyle & vldStyle defined on ExtraHeader
          LayerOptionsVectorLayer.StyleFn.Script:= 'function(feature) { vldLabelStyle.getText().setText(feature.get("name")); return vldStyle; }';
        end;
        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 2;
      end;
    olcmdViewAjaxPropControl:
      begin
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;
        Ol.MapOptionsPluggableMap.View.Center.X:= '0';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '0';
        Ol.MapOptionsPluggableMap.View.Zoom:= 5;
      end;
    olcmdMeasure:
      begin
        FMeasureExample:= True;
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststOSM;
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;
          with LayerOptionsVectorLayer.Style.Add do
          begin
            Fill.Color.ColorRGB.Red:= '255';
            Fill.Color.ColorRGB.Green:= '255';
            Fill.Color.ColorRGB.Blue:= '255';
            Fill.Color.ColorRGB.Alpha:= 0.2;
            Stroke.Color.Color:= '#ffcc33';
            Stroke.Width:= 2;
            ImageType:= olsitCircleStyle;
            ImageOptionsCircleStyle.Radius:= 7;
            ImageOptionsCircleStyle.Fill.Color.Color:= '#ffcc33';
          end;
        end;

        // since this example is complex & require a lot of javascript usage the rest of code in

        Ol.MapOptionsPluggableMap.View.Center.X:= '-11000000';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '4600000';
        Ol.MapOptionsPluggableMap.View.Zoom:= 15;
      end;
    olcmdWFSGetFeature:
      begin
        FWFSGetFeature:= True;
        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltTileLayer;
          LayerOptionsTileLayer.SourceType:= olststBingMaps;
          LayerOptionsTileLayer.SourceOptionsBingMaps.Key:= BingMapsKey;
          LayerOptionsTileLayer.SourceOptionsBingMaps.ImagerySet:= 'Aerial';
        end;

        with Ol.MapOptionsPluggableMap.Layers.Add do
        begin
          LayerType:= olltVectorLayer;
          LayerOptionsVectorLayer.SourceType:= olsvtVectorSource;

          with LayerOptionsVectorLayer.Style.Add do
          begin
            Stroke.Color.ColorRGB.Red:= '0';
            Stroke.Color.ColorRGB.Green:= '0';
            Stroke.Color.ColorRGB.Blue:= '255';
            Stroke.Color.ColorRGB.Alpha:= 1;
            Stroke.Width:= 2;
          end;
        end;

        Ol.MapOptionsPluggableMap.View.Center.X := '-8908887,277395891';
        Ol.MapOptionsPluggableMap.View.Center.Y:= '5381918,072437216';
        Ol.MapOptionsPluggableMap.View.Zoom := 12;
        Ol.MapOptionsPluggableMap.View.MaxZoom := 19;
      end;
    end;

  finally
    if IsAsync then
      CGCallBackEnableAjaxResponse;
  end;
end;

initialization
  TIWForm6.SetAsMainForm;

end.
