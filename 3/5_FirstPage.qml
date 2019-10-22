import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page5_1
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page5_1.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Task 5")
            }

            Button {
                text: "Диалог"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                         var dialog = pageStack.push("Sailfish.Silica.TimePickerDialog", {
                             hour: 13,
                             minute: 30,
                             hourMode: DateTime.TwelveHours
                         })
                         dialog.accepted.connect(function() {
                             txtfield.text = "Выбрано: " + dialog.timeText
                         })
                     }
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "<b>ВРЕМЯ:</b>"
            }
            TextField {
                anchors.horizontalCenter: parent.horizontalCenter
                id: txtfield
                width: parent.width
            }
        }
    }
}
