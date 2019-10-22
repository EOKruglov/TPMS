import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: tasks
        ListElement {task: "<b>Восстановиться в универе</b>"
                     time: "15.02.20"}
        ListElement {task: "<b>Пересдать комиссию</b>"
                     time: "11.02.19"}
        ListElement {task: "<b>Поиграть в доту</b>"
                     time: "10.02.19"}
        ListElement {task: "<b>Пересдать экзамен</b>"
                     time: "3.02.19"}
        ListElement {task: "<b>Поиграть в доту</b>"
                     time: "2.02.19"}
        ListElement {task: "<b>Сдать экзамен</b>"
                     time: "17.01.19"}
        ListElement {task: "<b>Поиграть в доту</b>"
                     time: "16.01.19"}
    }
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: height; itemWidth: width
        model: tasks
        delegate: Rectangle {
           width: view.itemWidth
           height: view.height
           border.width: 1
           Text {
               anchors.centerIn: parent
               text: tasks.get(index).task + " - " + tasks.get(index).time
           }
        }
    }
}
