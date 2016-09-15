program Smile;

uses graphabc;

var
  mouthCurveArray: array of Point;

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
  
  {������ ��� ������}
  SetLength(mouthCurveArray, 4);
end;

{��������� ��� ��������� ��������� ����� ������ - ���}
procedure DrawAnimatedSmileParts();
begin
  mouthCurveArray[0].X := 210;
  mouthCurveArray[0].Y := 280;
  
  mouthCurveArray[1].X := 270;
  mouthCurveArray[1].Y := 320;
  
  mouthCurveArray[2].X := 330;
  mouthCurveArray[2].Y := 320; 
    
  mouthCurveArray[3].X := 390;
  mouthCurveArray[3].Y := 280;
  
  Curve(mouthCurveArray);
end;

{��������� ��� ��������� ����� ������}
procedure DrawSmile();
begin
  {������ ������������ ����� ������ - ����, �����, ���}
  DrawSmileStaticParts();
  
  {������ ��������� ����� ������ - ���}
  DrawAnimatedSmileParts();
end;

begin
  {������������� ��������� ���� ���������}
  SetWindowSize(600, 500);
  SetWindowTitle('AniSmile');
  
  {������ �����}
  DrawSmile();
end.