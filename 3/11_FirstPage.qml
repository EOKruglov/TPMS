import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page11_1
    allowedOrientations: Orientation.All
    CoverBackground {
        id: cover
        anchors.fill: parent
        transparent: true
        Label {
            id: label
            property int x: 0
            text: x
            anchors.centerIn: parent
           }
        CoverActionList {
              iconSource: "image://theme/icon-cover-new"
              onTriggered: lable.x = label.x + 1
        }
        CoverActionList {
              iconSource: "image://theme/icon-cover-cancel"
              onTriggered: lable.x = label.x - 1
        }
    }
}
