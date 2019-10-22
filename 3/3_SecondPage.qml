import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    property alias textfieldValue: textfield.text
    Column {
        width: parent.width
        spacing: Theme.paddingMedium
        DialogHeader {}
        TextField {
            id: textfield
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

}
