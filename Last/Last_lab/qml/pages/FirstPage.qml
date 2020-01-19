import QtQuick 2.0
import Sailfish.Silica 1.0
import custom.Matrix 1.0

Page {
    id: page
    property int x_r: 0;
    property int y_r: 0;
    property int msize: 0
    property int i_: 0;
    property int j_: 0
    property int num_txt: 0
    property variant array: []
    property variant recs: []
    property int degree_: 2
    property int len: 0
    property variant matrices: []
    allowedOrientations: Orientation.All

    SilicaFlickable {

        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }
        TextField {
            id: sizeField
            width: parent.width/1.8
            color: "black"
            anchors.top: parent.top
            placeholderText: "Enter the matrix size"
        }
        Button {
            anchors.left: sizeField.right
            id: sizeButton
            anchors.margins: 10
            width: parent.width/3
            text: "Enter size"
            onClicked: {
                //Matrix a
                //matrices.push()

                if (recs.length != 0) {
                    console.log(m.size)
                    len = recs.length
                    for (var i = 0; i < len; i++) {
                        var sam_razbereshsya_1 = recs.pop()
                        var sam_razbereshsya_2 = array.pop()
                        sam_razbereshsya_1.destroy()
                        sam_razbereshsya_2.destroy()
                    }
                    m.reload(sizeField.text)
                }
                //m.reload(sizeField.text)
                msize = sizeField.text
                var index = 0;
                for (var i = 0; i < m.size; i++) {
                    j_ = 0;
                    for (var j = 0; j < m.size; j++) {
                        index++;
                        Qt.createQmlObject(root.sc, root, 'obj' + index);
                        page.x_r+=160;
                        j_++;
                        page.num_txt++;

                    }

                    i_++;

                    page.x_r -= m.size * 160
                    page.y_r += 160;
                }
                page.y_r -= m.size * 160
                i_ = 0;
                j_ = 0;
                page.num_txt = 0;
            }
        }
        Label {
            anchors.bottom: parent.bottom
            anchors.margins: 10
            id: path
            text: "Посещенные вершины"
        }


        Matrix {
            id: m
            size: msize
        }

        Rectangle {
            id: root
            height: 500
            width: 500
            x: 100
            y: 250
            color: "transparent"
            property string sc: 'import QtQuick 2.0; import Sailfish.Silica 1.0;
                        Rectangle {
                            id: rec_' + String(page.num_txt) + '
                            width: 150;
                            height: 150;
                            TextField {
                                id: '+ "txt_"+ String(page.num_txt) +'
                                text: ' + '"' + m.getElement(0,0) + '"' +';
                                height: parent.height;
                                width: parent.width;
                                }
                                color: "white";
                                Component.onCompleted:
                                {x = '+page.x_r+'; y = '+page.y_r+'; array['+ page.num_txt + '] = '+ "txt_"+ String(page.num_txt) +
                                '; recs['+ page.num_txt + '] = '+ "rec_"+ String(page.num_txt) + '}
                        }'
        }
        Button {
            id: obhod
            text: "Go"
            width: parent.width/3
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.margins: 10
            onClicked: {
                var index = 0;
                var i;
                var j;
                for (i = 0; i < m.getSize(); i++) {
                    for (j = 0; j < m.getSize(); j++) {
                        m.setElement(String(array[index].text), i, j)
                        index++;
                    }
                }
                m.obhod();
                index = 0
                for (i = 0; i < m.getSize(); i++) {
                    path.text = path.text + " " + m.getPath(i);
                }
            }
        }


    }
}

