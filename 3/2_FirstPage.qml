import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2_1
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page2_1.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Task 2 Page 1")
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Добавить страницу"
                onClicked: pageStack.pushAttached(Qt.resolvedUrl("2_SecondPage.qml"))
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Убрать страницу"
                onClicked: pageStack.popAttached()
            }
        }
    }
}
