import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    id: rootWindow
    height: 640; width: height

    MyDel
    {
    height: rootWindow.height; width: rootWindow.width
    }
}
