program Smile;

uses graphabc;

{��������� ��� ��������� ������������ ������ ������ - ����, ����, ����}
procedure DrawSmileStaticParts();
begin
  {������ ���� ������}
  SetBrushColor(clYellow);
  Circle(300, 250, 120);
  
  {������ ����� ������}
  SetBrushColor(clBlack);
  Circle(250, 210, 20);
  Circle(350, 210, 20);
  
  {������ ��� ������}
  Circle(300, 270, 15);
end;

{��������� ��� ��������� ��������� ����� ������ - ���}
procedure DrawAnimatedSmileParts(mouthCurveArray: array of Point);
begin
  {������ ��� ������}
  Curve(mouthCurveArray);
end;

{��������� ��� ��������� ����� ������}
procedure DrawSmile(mouthCurveArray: array of Point);
begin
  {������ ������������ ����� ������ - ����, �����, ���}
  DrawSmileStaticParts();
  
  {������ ��������� ����� ������ - ���}
  DrawAnimatedSmileParts(mouthCurveArray);
end;

var
  mouthCurveArray: array of Point;

begin
  {������������� ��������� ���� ���������}
  SetWindowSize(600, 500);
  SetWindowTitle('AniSmile');
  
  {������������� ���������� ��� ��������� ���}
  SetLength(mouthCurveArray, 4);
  
  mouthCurveArray[0].X := 210;
  mouthCurveArray[0].Y := 280;
  
  mouthCurveArray[1].X := 270;
  mouthCurveArray[1].Y := 320;
  
  mouthCurveArray[2].X := 330;
  mouthCurveArray[2].Y := 320; 
    
  mouthCurveArray[3].X := 390;
  mouthCurveArray[3].Y := 280;
  
  {������ �����}
  DrawSmile(mouthCurveArray);
  
  Sleep(1000);
  ClearWindow();
  
  mouthCurveArray[0].X := 240;
  mouthCurveArray[0].Y := 300;
  
  mouthCurveArray[1].X := 250;
  mouthCurveArray[1].Y := 320;
  
  mouthCurveArray[2].X := 310;
  mouthCurveArray[2].Y := 320; 
    
  mouthCurveArray[3].X := 370;
  mouthCurveArray[3].Y := 290;
  
  {������ �����}
  DrawSmile(mouthCurveArray);
  
  Sleep(1000);
  ClearWindow();
  
  mouthCurveArray[0].X := 250;
  mouthCurveArray[0].Y := 320;
  
  mouthCurveArray[1].X := 270;
  mouthCurveArray[1].Y := 320;
  
  mouthCurveArray[2].X := 290;
  mouthCurveArray[2].Y := 320; 
    
  mouthCurveArray[3].X := 350;
  mouthCurveArray[3].Y := 320;
  
  {������ �����}
  DrawSmile(mouthCurveArray);
end.