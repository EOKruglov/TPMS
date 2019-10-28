import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page10_1
    allowedOrientations: Orientation.All
    SilicaListView {
        id: listview
        anchors.fill: parent
        model: 5
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                text: "Предмет №"+ index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu{
                MenuLabel {
                    text: "Меню"
                }
                MenuItem {
                    text: "Предмет 1"
                    onClicked: console.log("Menu Item 1 is clicked")
                }
                MenuItem {
                    text: "Предмет 2"
                    onClicked: console.log("Menu Item 2 is clicked")
                }
            }
        }
    }

}
