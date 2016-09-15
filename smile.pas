program Smile;

uses graphabc;

{Процедура для рисования неизменяемых частей смайла - тела, глаз, носа}
procedure DrawSmileStaticParts();
begin
  {Рисуем тело смайла}
  SetBrushColor(clYellow);
  Circle(300, 250, 120);
  
  {Рисуем глаза смайла}
  SetBrushColor(clBlack);
  Circle(250, 210, 20);
  Circle(350, 210, 20);
  
  {Рисуем зрачки смайла}
  SetBrushColor(clRed);
  Circle(250, 210, 10);
  Circle(350, 210, 10);
  
  SetBrushColor(clBlack);
 
  {Рисуем брови смайла}
  Line(250,170,270,190);
  Line(350,170,330,190);
  
  {Рисуем нос смайла}
  Circle(300, 270, 15);
end;

{Процедура для рисования подвижной части смайла - рта}
procedure DrawAnimatedSmileParts(i : integer);
begin
  {Рисуем рот смайла}
  Arc(300, 240, 90 , 0 - i, -180 + i);
end;

{Процедура для рисования всего смайла}
procedure DrawSmile(i : integer);
begin
  {Рисуем неизменяемые части смайла - тело, глаза, нос}
  DrawSmileStaticParts();
  
  {Рисуем подвижную часть смайла - рот}
  DrawAnimatedSmileParts(i);
end;

var 
  i : integer;

begin
  {Устанавливаем параметры окна программы}
  SetWindowSize(600, 500);
  SetWindowTitle('AniSmile');
  SetPenWidth(4);
  
  while true do begin
    for i := 0 to 180 do begin
      ClearWindow();
      {Рисуем смайл}
      DrawSmile(i);
      Sleep(50);
    end;
  end;
end.