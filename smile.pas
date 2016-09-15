program Smile;

uses graphabc;

var
  mouthCurveArray: array of Point;

begin
  SetWindowSize(600, 500);
  SetWindowTitle('AniSmile');
  SetBrushColor(clYellow);
  Circle(300, 250, 120);
  SetBrushColor(clBlack);
  Circle(250, 210, 20);
  Circle(350, 210, 20);
  
  SetLength(mouthCurveArray, 4);
  
  mouthCurveArray[0].X := 200;
  mouthCurveArray[0].Y := 280;
  
  mouthCurveArray[1].X := 300;
  mouthCurveArray[1].Y := 320;
  
  mouthCurveArray[2].X := 300;
  mouthCurveArray[2].Y := 320; 
    
  mouthCurveArray[3].X := 400;
  mouthCurveArray[3].Y := 280;
  
  Curve(mouthCurveArray);
end.