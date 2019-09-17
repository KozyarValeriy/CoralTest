unit sale_points;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure set_col(grid: TDBGrid);

var
  Form5: TForm5;



implementation

{$R *.dfm}

uses main;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := caFree;
    Form5 := nil;
  end;

procedure TForm5.FormCreate(Sender: TObject);
var i: integer;
  begin
    ADOQuery1.Active := False;
    ADOQuery1.Active := True;
    set_col(DBGrid1);
  end;

procedure set_col(grid: TDBGrid);
  begin
    grid.Columns[0].Width := 130;
    grid.Columns[1].Width := 200;
    grid.Columns[2].Width := 130;
    grid.Columns[3].Width := 150;
    grid.Columns[4].Width := 250;
    grid.Columns[5].Width := 110;
    grid.Columns[6].Width := 160;
    grid.Columns[0].Title.Caption := 'Агенство';
    grid.Columns[1].Title.Caption := 'Офис';
    grid.Columns[2].Title.Caption := 'Город';
    grid.Columns[3].Title.Caption := 'Адрес офиса';
    grid.Columns[4].Title.Caption := 'ФИО ген. директора';
    grid.Columns[5].Title.Caption := 'Телефон';
    grid.Columns[6].Title.Caption := 'Email';
  end;
end.
