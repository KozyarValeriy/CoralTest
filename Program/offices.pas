unit offices;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    ADOQuery2: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure set_col(grid: TDBGrid);

var
  Form3: TForm3;
  number: integer;
  query_del: string;

implementation

{$R *.dfm}

uses main, edit_offices, change_office;

procedure TForm3.Button1Click(Sender: TObject);
  begin
    ADOQuery1.Active := False;
    ADOQuery1.Active := True;
    set_col(DBGrid1);
  end;

procedure TForm3.Button2Click(Sender: TObject);
  begin
    if (not Assigned(Form4)) then
       Form4 := TForm4.Create(Self);
    Form4.ShowModal;
  end;

procedure TForm3.Button3Click(Sender: TObject);
  begin
    if (not Assigned(Form6)) then
       Form6 := TForm6.Create(Self);
    Form6.ShowModal;
  end;

procedure TForm3.Button4Click(Sender: TObject);
var button_select: integer;
  begin
    button_select := MessageDlg(Format('Удалить выбранный офис c ID = %d?',
                                       [number]), mtCustom,[mbYes,mbCancel], 0);
    if button_select = mrYes then
      begin
        ADOQuery2.SQL.Text := Format(query_del, [number]);
        ADOQuery2.ExecSQL;
        Button1Click(self); // Обновление таблицы
      end;
  end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
  begin
    number := ADOQuery1.FieldByName('ID').AsInteger; // Получение выбранного ID
  end;

procedure TForm3.DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  begin
    number := ADOQuery1.FieldByName('ID').AsInteger; // Получение выбранного ID
  end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := caFree;
    Form3 := nil;
  end;

procedure TForm3.FormCreate(Sender: TObject);
  begin
    set_col(DBGrid1);
    query_del := 'DELETE FROM offices WHERE ID = %d;'; // Запрос на удаление
  end;

procedure TForm3.FormResize(Sender: TObject);
var i, db_height: integer;
  begin
    {for i := 0 to ComponentCount - 1 do
      if Components[i] is TButton then
          (Components[i] as TButton).Left :=  Form3.ClientWidth -
                          (Components[i] as TButton).Width - 10;

     }
    Button1.Top := Form3.ClientHeight - 2 * Button1.Height - 20;
    Button1.left := 10;
    Button1.Width := (Form3.ClientWidth div 2) - 15;
    Button2.Top := Form3.ClientHeight - Button1.Height - 10;
    Button2.Left := Button1.left;
    Button2.Width := (Form3.ClientWidth div 2) - 15;
    Button3.Top := Button1.Top;
    Button3.Left := (Form3.ClientWidth div 2) + 5;
    Button3.Width := (Form3.ClientWidth div 2) - 15;
    Button4.Top := Button2.Top;
    Button4.Left := Button3.Left;
    Button4.Width := (Form3.ClientWidth div 2) - 15;
    DBGrid1.Height := Form3.ClientHeight - 2 * Button1.Height - 60;
  end;

procedure set_col(grid: TDBGrid);
  begin
    grid.Columns[0].Width := 30;
    grid.Columns[1].Width := 90;
    grid.Columns[2].Width := 295;
    grid.Columns[3].Width := 295;
    grid.Columns[1].Title.Caption := 'ID агенства';
    grid.Columns[2].Title.Caption := 'Название офиса';
    grid.Columns[3].Title.Caption := 'Адрес';
  end;
end.
