import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            property var h: 0
            property var m: 0
            property var s: 0
            Button {
                x: 200
                y: 400
                text: "Кнопка"
                onClicked: timer.running = !timer.running
            }
            Timer {
                id: timer
                interval: 1000; running: false; repeat: true
                onTriggered: {
                    column.s = column.s + 1
                    if (column.s == 60) {
                        column.s = 0
                        column.m = column.m + 1
                    }
                    if (column.m == 60) {
                        column.m = 0
                        column.h = column.h + 1
                    }
                }
            }
            Timer_1 {
                x : 400
                y : 500
                h: column.h
                m: column.m
                s: column.s
            }
        }
    }
}
