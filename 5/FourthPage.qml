import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
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
            Light {
                id: red_light
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
            Light {
                id: yellow_light
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
            Light {
                id: green_light
                state: "not_active"
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
