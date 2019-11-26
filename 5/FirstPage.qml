import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
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
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Светофор")
            }
            Item {
                  Timer {
                      property int i: 1
                      interval: 1000; running: true; repeat: true
                      onTriggered: {
                          if (i % 10 == 1 || i % 10 == 2 || i % 10 == 3) {
                                green_light.state = "active"
                          }
                          else {
                              green_light.state = "not_active"
                          }
                          if (i % 10 == 4 || i % 10 == 5 || i % 10 == 9 || i % 10 == 0) {
                              yellow_light.state = "active"
                          }
                          else {
                              yellow_light.state = "not_active"
                          }
                          if (i % 10 == 6 || i % 10 == 7 || i % 10 == 8) {
                              red_light.state = "active"
                          }
                          else {
                              red_light.state = "not_active"
                          }
                          i = i + 1
                      }
                  }
              }

            Rectangle {
                id: red_light
                anchors.horizontalCenter: parent.horizontalCenter
                width: 200
                height: width
                border.color: "black"
                border.width: 1
                radius: width*0.5
                state: "not_active"
                states: [
                    State {
                        name: "active"
                        PropertyChanges {
                            target: red_light
                            color: "red"
                        }
                    },
                    State {
                        name: "not_active"
                        PropertyChanges {
                            target: red_light
                            color: "gray"
                        }
                    }
                ]
            }
            Rectangle {
                id: yellow_light
                anchors.horizontalCenter: parent.horizontalCenter
                width: 200
                height: width
                border.color: "black"
                border.width: 1
                radius: width*0.5
                state: "not_active"
                states: [
                    State {
                        name: "active"
                        PropertyChanges {
                            target: yellow_light
                            color: "yellow"
                        }
                    },
                    State {
                        name: "not_active"
                        PropertyChanges {
                            target: yellow_light
                            color: "gray"
                        }
                    }
                ]
            }
            Rectangle {
                id: green_light
                anchors.horizontalCenter: parent.horizontalCenter
                width: 200
                height: width
                border.color: "black"
                border.width: 1
                radius: width*0.5
                state: "active"
                states: [
                    State {
                        name: "active"
                        PropertyChanges {
                            target: green_light
                            color: "green"
                        }
                    },
                    State {
                        name: "not_active"
                        PropertyChanges {
                            target: green_light
                            color: "gray"
                        }
                    }
                ]
            }
        }
    }
}
