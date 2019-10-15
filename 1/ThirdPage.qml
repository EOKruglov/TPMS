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
                text: qsTr("Show Page 4")
                onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
            }
        }

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            anchors.centerIn: parent
            //width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Rectangles №3")
            }
            Text {
                text: "<b>Using Column and Row:</b>"
                font.pointSize: 40
                color: "white"
            }
            Rectangle {
                width: 620
                height: 200
                color: "transparent"
                Row {
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
                }
            }
            Rectangle {
                width: 620
                height: 200
                color: "transparent"
                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 10
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
