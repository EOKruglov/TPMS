import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0
import Nemo.Configuration 1.0

Page {
    id: page
    ConfigurationValue {
        id: setting
        key: "/apps/app_name/setting_name";
        defaultValue: "Settings"
    }
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 30
        PageHeader { title: "Найстройки" }
        TextField {
            width: parent.width
            id: txtfield
            placeholderText: "Введите настройки"
        }
        Label {
            text: setting.value + " сохранено"
        }
        Button {
            width: parent.width
            text: "Сохранить"
            onClicked: setting.value = txtfield.text
        }
    }
}
