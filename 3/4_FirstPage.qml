import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page4_1
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page4_1.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Task 4")
            }

            Button {
                text: "Диалог"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                         var dialog = pageStack.push(pickerComponent, {
                             date: new Date()
                         })
                         dialog.accepted.connect(function() {
                             txtfield.text = "Выбрано: " + dialog.dateText
                         })
                     }
                Component {
                         id: pickerComponent
                         DatePickerDialog {}
                }
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "<b>ДАТА:</b>"
            }
            TextField {
                anchors.horizontalCenter: parent.horizontalCenter
                id: txtfield
                width: parent.width
            }
        }
    }
}
