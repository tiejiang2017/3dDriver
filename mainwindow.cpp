#include "mainwindow.h"
#include "ui_mainwindow.h"
#include<QDebug>
#include "Driver/OniDriverAPI.h"
QString devInfo;
char uri[1024]={0};
void DeviceConnectedCallback(const OniDeviceInfo*deviceInfo, void* pCookie)
{
    qDebug()<<"DeviceConnectedCallback";
    qDebug()<<"device Name:"<<deviceInfo->name;
    qDebug()<<"device uri:"<<deviceInfo->uri;
    qDebug()<<"device usbProductId:"<<deviceInfo->usbProductId;
    qDebug()<<"device usbVendorId:"<<deviceInfo->usbVendorId;
    qDebug()<<"device vendor:"<<deviceInfo->vendor;
    strcpy(uri,deviceInfo->uri);


    devInfo.append("Name:");devInfo.append(deviceInfo->name);devInfo.append("\n");
    devInfo.append("uri:");devInfo.append(deviceInfo->uri);devInfo.append("\n");
    devInfo.append("usbProductId:");devInfo.append(QString::asprintf("%d",deviceInfo->usbProductId));devInfo.append("\n");
    devInfo.append("usbVendorId:");devInfo.append(QString::asprintf("%d",deviceInfo->usbVendorId));devInfo.append("\n");
    devInfo.append("vendor:");devInfo.append(deviceInfo->vendor);devInfo.append("\n");

}
void DeviceDisConnectedCallback(const OniDeviceInfo*, void* pCookie)
{
    qDebug()<<"DeviceDisConnectedCallback";
}
void deviceStateChangedCallback(const OniDeviceInfo* deviceId, int errorState, void* pCookie)
{
    qDebug()<<"deviceStateChangedCallback";
}
void NewFrameCallback(oni::driver::StreamBase* streamId, OniFrame*frame, void* pCookie)
{
    qDebug()<<"NewFrameCallback:"<<frame->height<< frame->width;

    if(!frame->data)
        return;
    cv::Mat rgbImage=cv::Mat (frame->height, frame->width, CV_8UC3, (void *)frame->data).clone();
    //cv::Mat rgbImage(rgbFrame.getHeight(), rgbFrame.getWidth(), CV_8UC3, (void *)rgbFrame.getData());
    cv::Mat rgbImage_rgb;
    cv::cvtColor(rgbImage, rgbImage_rgb, CV_RGB2BGR);
    cv::imshow("rgb",rgbImage_rgb);
//    cv::waitKey(2);
}

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);


    xtionDriver = new XnOniDriver(&driverService);
    xtionDriver->initialize(DeviceConnectedCallback,DeviceDisConnectedCallback,deviceStateChangedCallback,NULL);
    deviceXtion = (XnOniDevice *)xtionDriver->deviceOpen(uri,NULL);


    depthStream = (XnOniStream *)deviceXtion->createStream(ONI_SENSOR_DEPTH);
    depthStream->setServices(&pStreamServicesDepth);
    rgbStream = (XnOniStream *)deviceXtion->createStream(ONI_SENSOR_COLOR);
    rgbStream->setServices((oni::driver::StreamServices*)&pStreamServicesRgb);
    rgbStream->setNewFrameCallback(NewFrameCallback,NULL);
    depthStream->setNewFrameCallback(NewFrameCallback,NULL);
    depthStream->start();

    rgbStream->start();


//    int cnt = xtionDriver->m_devices.Size();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
   // xtionDriver->initialize(DeviceConnectedCallback,DeviceDisConnectedCallback,deviceStateChangedCallback,NULL);
    ui->label->setText(devInfo);
}
