program Coral;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  agencies in 'agencies.pas' {Form2},
  offices in 'offices.pas' {Form3},
  edit_offices in 'edit_offices.pas' {Form4},
  sale_points in 'sale_points.pas' {Form5},
  change_office in 'change_office.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
