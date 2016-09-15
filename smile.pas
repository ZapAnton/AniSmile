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
  
  {Рисуем нос смайла}
  Circle(300, 270, 15);
end;

{Процедура для рисования подвижной части смайла - рта}
procedure DrawAnimatedSmileParts(mouthCurveArray: array of Point);
begin
  {Рисуем рот смайла}
  Curve(mouthCurveArray);
end;

{Процедура для рисования всего смайла}
procedure DrawSmile(mouthCurveArray: array of Point);
begin
  {Рисуем неизменяемые части смайла - тело, глаза, нос}
  DrawSmileStaticParts();
  
  {Рисуем подвижную часть смайла - рот}
  DrawAnimatedSmileParts(mouthCurveArray);
end;

var
  mouthCurveArray: array of Point;

begin
  {Устанавливаем параметры окна программы}
  SetWindowSize(600, 500);
  SetWindowTitle('AniSmile');
  
  {Устанавливаем координаты для рисования рта}
  SetLength(mouthCurveArray, 4);
  
  mouthCurveArray[0].X := 210;
  mouthCurveArray[0].Y := 280;
  
  mouthCurveArray[1].X := 270;
  mouthCurveArray[1].Y := 320;
  
  mouthCurveArray[2].X := 330;
  mouthCurveArray[2].Y := 320; 
    
  mouthCurveArray[3].X := 390;
  mouthCurveArray[3].Y := 280;
  
  {Рисуем смайл}
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
  
  {Рисуем смайл}
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
  
  {Рисуем смайл}
  DrawSmile(mouthCurveArray);
end.