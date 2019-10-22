import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Один")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Два")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Три")
                onClicked: txtfield.text = text
            }
        }
        PushUpMenu {
            MenuItem {
                text: qsTr("Стой")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Стрелять")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Буду")
                onClicked: txtfield.text = text
            }
        }
        header: PageHeader{title: "List" }
    }
    TextField {
        anchors.centerIn: parent
        id: txtfield
        text: "..."
        width: parent.width
    }
}
