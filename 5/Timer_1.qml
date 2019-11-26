import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    property string h: "0"
    property string m: "0"
    property string s: "0"
    Row {
        property int pntSize: 50
        Label {
            font.pixelSize: 50
            text: h
        }
        Label {
            font.pixelSize: 50
            text: " : "
        }

        Label {
            font.pixelSize: 50
            text: m
        }
        Label {
            font.pixelSize: 50
            text: " : "
        }

        Label {
            font.pixelSize: 50
            text: s
        }
    }
}
