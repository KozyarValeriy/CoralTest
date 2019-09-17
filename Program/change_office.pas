unit change_office;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;



implementation

{$R *.dfm}
uses offices;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := caFree;
    Form6 := nil;
  end;

procedure TForm6.FormCreate(Sender: TObject);
  begin
    set_col(DBGrid1);
    ShowMessage('Изменения, внесенные в таблицу, сохраняются сразу.');
  end;
end.
