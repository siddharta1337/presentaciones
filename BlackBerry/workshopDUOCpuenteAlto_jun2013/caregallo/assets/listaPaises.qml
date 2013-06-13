import bb.cascades 1.0
import bb.data 1.0

Container {
    layout: DockLayout {
    }

    Container {
        layout: DockLayout {
        }

        ListView {
            id: listView
            rootIndexPath: [ 0 ]
            dataModel: dataModel
            listItemComponents: [
                ListItemComponent {
                    type: "item"
                    StandardListItem {
                        status: ListItemData.nombre
                        imageSource: "images/flags/" + ListItemData.json + ".png"
                    }
                }
            ]

            onTriggered: {
                var selectedItem = dataModel.data(indexPath)
                detalle.init(selectedItem)
                navigationPanel.push(detalle)

            }
        }

    }

    attachedObjects: [
        GroupDataModel {
            id: dataModel

        },
        DataSource {
            id: dataSource
            source: "modelo/paises.xml"
            query: "/root/pais"

            onDataLoaded: {
                dataModel.insertList(data)
                dataModel.sortedAscending = false

            }
        }

    ]
    onCreationCompleted: {
        dataSource.load();
    }

}
