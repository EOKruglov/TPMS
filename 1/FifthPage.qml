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
                text: qsTr("Show Page ")
                onClicked: pageStack.push(Qt.resolvedUrl("SixPage.qml"))
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
                title: qsTr("Rectangles №5")
            }
            Row {
                width: 500
                height: 500
                Rectangle {
                    width: 200
                    height: 200
                    color: "black"
                }
                Rectangle {
                    id: rec
                    color: "black"
                    width: 200
                    height: 200
                    transform: [Scale {xScale: 0.5}, Rotation{angle: 45}, Translate{x: rec.width}]
                }
            }
        }
    }
}
