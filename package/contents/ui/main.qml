import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import QtQuick.Window 2.15
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.plasmoid 2.0

Item {
    id: launcher
    width: 400
    height: 150
    anchors.centerIn: parent
    clip: true
    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground

    Rectangle {
        id: background
        width: parent.width
        height: parent.height
        color: "#171717"
        radius: 15
        border.color: "#191919"
        border.width: 3

        Rectangle {
            width: launcher.width - 14
            height: launcher.height - 14
            color: "transparent"
            anchors.centerIn: parent

            Rectangle {
                id: searchBar
                width: parent.width
                height: 50
                color: "#202020"
                radius: 8
                border.color: "#222222"
                border.width: 3

                TextField {
                    id: inputSearch
                    width: parent.width
                    height: parent.height
                    background: null
                    font.pixelSize: 16
                    placeholderText: "Search..."
                    selectByMouse: true
                    clip: true
                }
            }
        }
    }
}
//file:///home/chris/.local/share/plasma/plasmoids/com.chris.compass_launcher/package/contents/ui/main.qml:50:28: TextFieldStyle is not a type
