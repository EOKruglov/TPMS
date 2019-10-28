import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    property int count: 0
    Label {
        id: coverlabel
        property int count: 0
        text: count
        anchors.centerIn: parent
       }
    CoverActionList {
        CoverAction{
          iconSource: "image://theme/icon-cover-new"
          onTriggered: coverlabel.count = coverlabel.count + 1
        }
        CoverAction {
            iconSource: "image://theme/icon-cover-cancel"
            onTriggered: coverlabel.count = 0
        }
    }
}
