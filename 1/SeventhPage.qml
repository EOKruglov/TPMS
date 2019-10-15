import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    id: dialog
    Grid {
        rows: 3
        columns: 2
        width: parent.width
        anchors.fill: parent
        spacing: 100
        Label {
            text: "Enter 1st number"
        }
        Label {
            text: "Enter 2nd number"
        }
        TextField {
            width: parent.width/3
            id: first_num
        }
        TextField {
            width: parent.width/3
            id: second_num
        }
        Button {
            width: 200
            text: "Calculate"
            onClicked: {
                console.log(parseInt(first_num.text) + parseInt(second_num.text));
            }
        }
    }
}
