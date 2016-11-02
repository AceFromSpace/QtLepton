#ifndef PROCESSING_H
#define PROCESSING_H

#include <QtCore>
#include <QWidget>
#include <opencv2/opencv.hpp>

using namespace cv;

class Processing: public QWidget
{
    Q_OBJECT;

public:
    Processing(Mat imag,QWidget *parent = 0);
    ~Processing();

    void imageproc();

private:
    Mat myimage;





};

#endif // PROCESSING_H
