import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Rectangles")
            }
            Item {
                Rectangle {
                    id: red_rec
                    color: "red"
                    x: 100
                    y: 350
                    width: 200
                    height: 200
                }
                Rectangle {
                    id: green_rec
                    color: "green"
                    width: 200
                    height: 200
                    anchors.left: red_rec.right
                    anchors.top: red_rec.verticalCenter
                }
                Rectangle {
                    id: blue_rec
                    color: "blue"
                    width: 200
                    height: 200
                    anchors.left: green_rec.horizontalCenter
                    anchors.bottom: green_rec.verticalCenter
                }
            }
        }
    }
}
