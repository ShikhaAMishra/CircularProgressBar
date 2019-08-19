import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Circular ProgressBar")
    color: "black"

    CircularProgressBar{
        anchors.centerIn: parent
//        anchors.bottom: parent.bottom
//        anchors.horizontalCenter: parent.horizontalCenter
        value: 0.5
    }

}
