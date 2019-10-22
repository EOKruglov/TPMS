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
    SilicaListView {
        anchors.fill: parent
        model: tasks
        header: PageHeader {title: "Задачи" }
        section {
            property: "time"
            delegate: SectionHeader {text: section}
        }
        delegate: Text{
            color: "white"
            text: task
        }
    }
}
