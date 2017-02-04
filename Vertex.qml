import QtQuick 2.0
import "qrc:/js/vertex.js" as VertexLogic
import "qrc:/js/main.js" as MainLogic

Rectangle {
    id: root

    property int numVertex : -1

    signal addEdge(var edge)
    signal checkEdge(var vertex)

    onAddEdge: {
        console.log("onAddEdge:", edge)
        VertexLogic.addEdge(edge)
    }

    onCheckEdge: {
        return VertexLogic.checkEdge(vertex)
    }

//    Connections {
//        target: grafScene

//    }

    height: 25
    width: 25
    z: 10

    color: "#B5DEB5"
    opacity: 1

    radius: 12.5
    antialiasing: true

    Component.onCompleted: {
        VertexLogic.setVertexRoot(root)
    }

    MouseArea {
        id: rootMouseArea

        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onClicked: {
            if(MainLogic.getNewItemState() === 0 || MainLogic.getNewItemState() === 1)
            {
                VertexLogic.lightingEdges();
            }
            if(MainLogic.getNewItemState() === 2)
            {
                MainLogic.addEdge(root);
            }

//            console.log("clickedVertex");
        }

        drag {
            target: root
            minimumX: 0
            minimumY: 0
//            maximumX: 640
//            maximumY: 480
        }
    }

    Text {
        id: rootText

        anchors.centerIn: root

        text: numVertex
        font.pixelSize: 14
    }

    onXChanged: {
        VertexLogic.changedPosition()
    }
    onYChanged: {
        VertexLogic.changedPosition()
    }
}