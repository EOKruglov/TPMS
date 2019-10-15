import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 7")
                onClicked: pageStack.push(Qt.resolvedUrl("SevenPage.qml"))
            }
        }
        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height
        Column {

            id: column
            anchors.centerIn: parent
            //width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Rectangles №7")
            }
            Rectangle {
                width: parent.width;
                height: column.sizeRect;
                color: "transparent";
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
                Button {
                    text: "Run animation"
                    anchors.horizontalCenter: parent.horizontalCenter;
                    //anchors.bottom: rec.bottom;
                    y: 950
                    onClicked: animation.running = true;
                }
                Rectangle {
                    id: rec
                    width: 100
                    height: 100
                    y: 100
                    anchors.horizontalCenter: parent.horizontalCenter;
                    color: "white"
                }
                SequentialAnimation {
                    id: animation
                    running: false
                    ParallelAnimation {
                        PropertyAnimation {
                            target: rec
                            property: "y"
                            from: 100; to: 500
                            duration: 2000
                        }
                        PropertyAnimation {
                            target: rec
                            property: "width"
                            from: 100; to: 300
                            duration: 2000
                        }
                        PropertyAnimation {
                            target: rec
                            property: "height"
                            from: 100; to: 300
                            duration: 2000
                        }
                    }
                }
            }
        }
    }
}
