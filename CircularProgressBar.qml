import QtQuick 2.3
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0


ProgressBar{

    style: ProgressBarStyle
    {
        panel : Rectangle
        {
            color: "transparent"
            implicitWidth: 80
            implicitHeight: implicitWidth

            Rectangle
            {
                id: outerCircle
                z: 0
                anchors.fill: parent
                radius: Math.max(width, height) / 2
                color: "transparent"
                border.color: "gray"
                border.width: 8
            }

            Rectangle
            {
                id: innerCirlce
                z: 1
                anchors.fill: parent
                anchors.margins: (outerCircle.border.width - border.width) / 2
                radius: outerCircle.radius
                color: "transparent"
                border.color: "darkgray"
                border.width: 4

                ConicalGradient
                {
                    source: innerCirlce
                    anchors.fill: parent
                    gradient: Gradient
                    {
                        GradientStop { position: 0.00; color: "Red" }
                        GradientStop { position: control.value; color: "Red" }
                        GradientStop { position: control.value + 0.01; color: "transparent" }
                        GradientStop { position: 1.01; color: "transparent" }
                    }
                }
            }

            Text
            {
                id: progressText
                anchors.centerIn: parent
                color: "white"
                text: (control.value * 100).toFixed() + "%"
            }
        }
    }
}
