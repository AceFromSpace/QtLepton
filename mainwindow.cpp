#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "LeptonThread.h"
#include "Processing.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    Mat cvpicture=Mat::zeros(Size(80,60),CV_8UC3);
    Processing* proc;
    QObject::connect(ui->pushButton,SIGNAL(clicked()),ui->ImageLabel,SLOT(showMessage()));
    LeptonThread *thread = new LeptonThread(cvpicture,proc);
    QObject::connect(thread,SIGNAL(updateImage(QImage)),ui->ImageLabel,SLOT(setImage(QImage)));
    //thred na proccessing
    //processing wyswietla
    thread->start();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_actionErode_triggered()
{

}
