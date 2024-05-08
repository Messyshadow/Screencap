# 加载库，ffmpeg n5.1.2版本
win32{
LIBS += -L$$PWD/../3rdparty/ffmpeg/lib/win64/ -lavcodec -lavfilter -lavformat -lswscale -lavutil -lswresample -lavdevice
INCLUDEPATH += $$PWD/../3rdparty/ffmpeg/include/
DEPENDPATH += $$PWD/../3rdparty/ffmpeg/include/
}

unix:!macx{
LIBS += -L/home/mhf/lib/ffmpeg/ffmpeg-5-1-2/lib -lavcodec -lavfilter -lavformat -lswscale -lavutil -lswresample -lavdevice
INCLUDEPATH += /home/mhf/lib/ffmpeg/ffmpeg-5-1-2/include
DEPENDPATH += /home/mhf/lib/ffmpeg/ffmpeg-5-1-2/include
}

HEADERS += \
    $$PWD/readthread.h \       # 录屏线程类
    $$PWD/videocodec.h \       # 录屏编码类（将图像保存到视频文件中）
    $$PWD/videodecode.h        # 录屏解码类（捕获桌面图像并解码）

SOURCES += \
    $$PWD/readthread.cpp \
    $$PWD/videocodec.cpp \
    $$PWD/videodecode.cpp

LIBS += -L$$PWD/../3rdparty/ffmpeg/lib/win64/ -lavcodec -lavfilter -lavformat -lswscale -lavutil -lswresample -lavdevice
INCLUDEPATH += $$PWD/../3rdparty/ffmpeg/include/
DEPENDPATH += $$PWD/../3rdparty/ffmpeg/include/
