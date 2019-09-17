unit agencies;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Vcl.Grids, Data.DB,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure set_col(grid: TDBGrid);

var
  Form2: TForm2;



implementation

{$R *.dfm}

uses main;

procedure TForm2.Button1Click(Sender: TObject);
  begin
    ADOQuery1.Active := False;
    ADOQuery1.Active := True;
    set_col(DBGrid1);
  end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := caFree;
    Form2 := nil;
  end;

procedure TForm2.FormCreate(Sender: TObject);
  begin
    set_col(DBGrid1);
  end;

procedure TForm2.FormResize(Sender: TObject);
  begin
    Button1.Left :=  Form2.ClientWidth - Button1.Width - 10;
    Button1.Top := Form2.ClientHeight - Button1.Height - 10;
    DBgrid1.Height := Form2.ClientHeight - Button1.Height - 50;
  end;

procedure set_col(grid: TDBGrid);
  begin
    // Редактирование столбцов и шапки таблицы
    grid.Columns[0].Width := 130;
    grid.Columns[1].Width := 110;
    grid.Columns[2].Width := 160;
    grid.Columns[3].Width := 250;
    grid.Columns[4].Width := 120;
    grid.Columns[0].Title.Caption := 'Имя';
    grid.Columns[1].Title.Caption := 'Телефон';
    grid.Columns[2].Title.Caption := 'Email';
    grid.Columns[3].Title.Caption := 'ФИО ген. директора';
    grid.Columns[4].Title.Caption := 'Город';
  end;
end.
