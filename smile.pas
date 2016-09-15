program Smile;

uses graphabc;

var
  mouthCurveArray: array of Point;

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
  
  {Рисуем нос смайла}
  Circle(300, 270, 15);
  
  {Рисуем рот смайла}
  SetLength(mouthCurveArray, 4);
end;

{Процедура для рисования подвижной части смайла - рта}
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

{Процедура для рисования всего смайла}
procedure DrawSmile();
begin
  {Рисуем неизменяемые части смайла - тело, глаза, нос}
  DrawSmileStaticParts();
  
  {Рисуем подвижную часть смайла - рот}
  DrawAnimatedSmileParts();
end;

begin
  {Устанавливаем параметры окна программы}
  SetWindowSize(600, 500);
  SetWindowTitle('AniSmile');
  
  {Рисуем смайл}
  DrawSmile();
end.