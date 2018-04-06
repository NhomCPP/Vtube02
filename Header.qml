import QtQuick 2.0
import QtQuick.Window 2.0
Rectangle {
    id: head
    width: 640
    height: 60
    color: "#C7C7C7"
    Text {
        text: qsTr("Vtube")
        font.pixelSize: head.height/1.4
        font.bold: true

    }

}
