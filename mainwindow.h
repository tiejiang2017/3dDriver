#ifndef MAINWINDOW_H
#define MAINWINDOW_H


#include"Driver/OniDriverTypes.h"
#include"XnOniDriver.h"

#include <QMainWindow>
#include<opencv2/opencv.hpp>
namespace Ui {
class MainWindow;
}

class xtionRGBStreamServices :  OniStreamServices
{
public:
    int getDefaultRequiredFrameSize()
    {
        return 640*480*3;
    }

    OniFrame* acquireFrame()
    {
            OniFrame* pFrame = XN_NEW(OniFrame);
            if (pFrame == NULL)
            {
                return NULL;
            }
            pFrame->dataSize = getDefaultRequiredFrameSize();
            pFrame->data = xnOSMallocAligned(pFrame->dataSize, XN_DEFAULT_MEM_ALIGN);
            if (pFrame->data == NULL)
            {
                XN_DELETE(pFrame);
                return NULL;
            }

            return pFrame;
    }

    void addFrameRef(OniFrame* pFrame)
    {
        OniStreamServices::addFrameRef(streamServices, pFrame);
    }

    void releaseFrame(OniFrame* pFrame)
    {
        OniStreamServices::releaseFrame(streamServices, pFrame);
    }
};



class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_pushButton_clicked();

private:
    Ui::MainWindow *ui;


    oni::driver::StreamServices  pStreamServicesDepth;
    xtionRGBStreamServices pStreamServicesRgb;
    OniDriverServices driverService;
    XnOniDevice *deviceXtion;
    XnOniDriver *xtionDriver;

    XnOniStream *depthStream;
    XnOniStream *rgbStream;
};

#endif // MAINWINDOW_H
