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
  
  {������ ������ ������}
  SetBrushColor(clRed);
  Circle(250, 210, 10);
  Circle(350, 210, 10);
  
  SetBrushColor(clBlack);
 
  {������ ����� ������}
  Line(250,170,270,190);
  Line(350,170,330,190);
  
  {������ ��� ������}
  Circle(300, 270, 15);
end;

{��������� ��� ��������� ��������� ����� ������ - ���}
procedure DrawAnimatedSmileParts(i : integer);
begin
  {������ ��� ������}
  Arc(300, 240, 90 , 0 - i, -180 + i);
end;

{��������� ��� ��������� ����� ������}
procedure DrawSmile(i : integer);
begin
  {������ ������������ ����� ������ - ����, �����, ���}
  DrawSmileStaticParts();
  
  {������ ��������� ����� ������ - ���}
  DrawAnimatedSmileParts(i);
end;

var 
  i : integer;

begin
  {������������� ��������� ���� ���������}
  SetWindowSize(600, 500);
  SetWindowTitle('AniSmile');
  SetPenWidth(4);
  
  while true do begin
    for i := 0 to 180 do begin
      ClearWindow();
      {������ �����}
      DrawSmile(i);
      Sleep(50);
    end;
  end;
end.