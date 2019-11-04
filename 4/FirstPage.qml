import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
            MenuItem {
                text: qsTr("Task 3")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
            MenuItem {
                text: qsTr("Task 4")
                onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
            }
            MenuItem {
                text: qsTr("Task 5")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
            MenuItem {
                text: qsTr("Task 6")
                onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
            }
            MenuItem {
                text: qsTr("Task 7")
                onClicked: pageStack.push(Qt.resolvedUrl("SeventhPage.qml"))
            }
            MenuItem {
                text: qsTr("Task 8")
                onClicked: pageStack.push(Qt.resolvedUrl("EighthPage.qml"))
            }
        }

         ListModel {
             id: datamodel
             ListElement {color: "white"; text: "белый"}
             ListElement {color: "black"; text: "чёрный"}
             ListElement {color: "blue"; text: "синий"}
         }
         SilicaListView {
             anchors.fill:  parent
             header: PageHeader {title: "Task 1"}
             model: datamodel
             delegate: Rectangle {
                 width: parent.width
                 height: 100
                 color: model.color
                 Text {
                     anchors.centerIn: parent
                     text: model.text
                     color: "red"
                 }
             }
         }
    }
}
