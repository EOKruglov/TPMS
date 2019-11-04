import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All
    property var datamodel: [
    {color: "white", text: "белый"},
    {color: "black", text: "чёрный"},
    {color: "blue", text: "синий"},
    ]

    SilicaListView {
        anchors.fill:  parent
        header: PageHeader {title: "Task 3"}
        model: datamodel
        spacing: 10
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: modelData.color
            Text {
                anchors.centerIn: parent
                text: modelData.text
                color: "red"
            }
        }
    }
}
