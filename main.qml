import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Clock"
    property string currTime: "00:00:00"
	property QtObject backend

    Connections {
        target: backend
		
		function onUpdated(msg) {
			currTime = msg;
		}
    }

    Rectangle {
        anchors.fill: parent

        Image {
            anchors.fill: parent
            source: "./images/background.png"
            fillMode: Image.PreserveAspectCrop
        }

        Rectangle {
            anchors.fill: parent
            color: "transparent"

            Text {
                text: currTime
                font.pixelSize: 24
                color: "white"
            }

        }

    }

}