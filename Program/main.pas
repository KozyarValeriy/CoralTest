unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses agencies, offices, sale_points;

procedure TForm1.Button1Click(Sender: TObject);
  begin
    if (not Assigned(Form2)) then
       Form2 := TForm2.Create(Self);
    Form2.ShowModal;
  end;

procedure TForm1.Button2Click(Sender: TObject);
  begin
    if (not Assigned(Form3)) then
       Form3 := TForm3.Create(Self);
    Form3.ShowModal;
  end;
procedure TForm1.Button3Click(Sender: TObject);
  begin
    if (not Assigned(Form5)) then
       Form5 := TForm5.Create(Self);
    Form5.ShowModal;
  end;
end.
