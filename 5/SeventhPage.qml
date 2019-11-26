import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page

    property var added: 0
    property var removed: 0
    property var prev: 0

    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height
        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            width: parent.width
            Connections {
                target: pageStack
                onDepthChanged: {
                    if (page.prev > pageStack.depth) {
                        page.removed = page.removed + 1
                    } else {
                        page.added = page.added + 1
                    }
                    page.prev = pageStack.depth
                }
            }

            spacing: Theme.paddingLarge
            Button {
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Добавить"
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Добавлено : " + page.added
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Удалено : " + page.removed
            }
        }
    }
}
