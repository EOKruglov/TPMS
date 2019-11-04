import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0
import Nemo.Configuration 1.0

Page {
    id: page
    ConfigurationGroup {
        id: settings;
        path: "/apps/app_name/setting";
        property bool set: false;
        property string text: ""
    }
    TextField {
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        id: txtfield
        placeholderText: "Введите настройки"
    }
    Label {
        id: lb
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: txtfield.bottom
        text: ""
    }
    Button {
        id: setButton
        width: parent.width
        text: "Добавить"
        anchors.top: lb.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            settings.set = true
            lb.text = txtfield.text + " добавлено"
        }
    }
    Button {
        width: parent.width
        anchors.top: setButton.bottom
        anchors.margins: 10
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Сохранить"
        id: saveButton
        onClicked: {
            settings.text = txtfield.text
            settings.setValue(settings.set, txtfield.text)
            lb.text =txtfield.text + " сохранено"
        }
    }
}
