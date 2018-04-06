import QtQuick 2.0
import QtQuick.Dialogs 1.0          // FileDialog
import Qt.labs.folderlistmodel 2.1  // FolderListModel
import QtQuick 2.7
Item
{
    id: head

    property int i: 0

    height: 500; width: 500
    FileDialog
    {
        id:             photoDirectoryFileDialog
        title:          "Select the photo directory:"
        selectFolder:   true
        height:         parent.height; width: parent.width
        onAccepted: {
            console.log("selected folder: " + folder)
        }

        Component.onCompleted: visible = true
    }

    ListView
    {
        FolderListModel
        {
            id: folderModel
            folder: photoDirectoryFileDialog.folder
            nameFilters: ["*.jpg"]
        }

        Component
        {
            id: fileDelegate
            Text { text: fileName }
        }

        model:    folderModel
        delegate: fileDelegate
    }

    // Show photos
    Image
    {
        id: image
        source: ""
    }

    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            console.log ("fsdfsdf: " + i + " --- " + folderModel.get (i, "fileURL"))
            image.source =  folderModel.get (i, "fileURL")
            if (++i == folderModel.count) i = 0
        }

    }

}
