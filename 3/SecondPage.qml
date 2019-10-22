import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page_2
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 3")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page_2.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Page 2")
            }
            Button {
                text: "Назад"
                onClicked: pageStack.pop()
            }
            Button {
                text: "Вперед"
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"), PageStackAction.Animated)
            }
            Label {
                text: "Глубина стека : " + pageStack.depth
            }


        }
    }
}
