import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 5")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
        }
        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            anchors.centerIn: parent
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Rectangles №4")
            }
            Text {
                text: "<b>Using Grid:</b>"
                font.pointSize: 40
                color: "white"
            }

            Rectangle {
                width: 620
                height: 410
                color: "transparent"
                Grid {
                    columns: 3
                    rows: 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 10
                    Rectangle {
                        color: "red"
                        width: 200
                        height: 200
                    }
                    Rectangle {
                        color: "green"
                        width: 200
                        height: 200
                    }
                    Rectangle {
                        color: "blue"
                        width: 200
                        height: 200
                    }
                    Rectangle {
                        color: "magenta"
                        width: 200
                        height: 200
                    }
                    Rectangle {
                        width: 200
                        height: 200
                        color: "transparent"
                    }
                    Rectangle {
                        color: "black"
                        width: 200
                        height: 200
                    }
                }
            }
        }
    }
}
