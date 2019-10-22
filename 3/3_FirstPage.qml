import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3_1
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page3_1.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Task 3")
            }

            Button {
                text: "Диалог"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var dialog = pageStack.push(Qt.resolvedUrl("3_SecondPage.qml"));
                    dialog.accepted.connect(function() {
                        txtfield.text = dialog.textfieldValue
                    });
                    }
                }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "<b>ТЕКСТ:</b>"
            }
            TextField {
                anchors.horizontalCenter: parent.horizontalCenter
                id: txtfield
                width: parent.width / 2
            }
        }
    }
}
