// Default empty project template
import bb.cascades 1.0

NavigationPane {
    id: navigationPane
    property alias navigationPanel: navigationPane
    property alias detalle: detalle
    
     

    Page {
    Container {

        layout: DockLayout {
        }

        ImageView {
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Fill

            imageSource: "images/background.png"
        }
         
        Container {
            horizontalAlignment: HorizontalAlignment.Fill

            Label {
                text: "El caregallo"
                
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.XXLarge
                textStyle.color: Color.White
                textStyle.textAlign: TextAlign.Right
            }
            
            ImageView {
                imageSource: "images/sun.png"
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                topMargin: 300.0

            }
            
        }
        
        Container{
            verticalAlignment: VerticalAlignment.Bottom
            horizontalAlignment: HorizontalAlignment.Fill
            bottomPadding: 30.0
            
            Button {
                text: "Ver Paises"
                horizontalAlignment: HorizontalAlignment.Fill
                
                onClicked: {
                    navigationPane.push(listaPaises)
                }
            }
        }

        
           

    }

	}

    attachedObjects: [

        Page {
            id: listaPaises
            ControlDelegate {
                source: "listaPaises.qml"
                delegateActive: true
            }
            
        },
        Page {
            id: detalle
            property string pais
            //property string pais
            
            function init(_data){
                paisNameTxt.text = _data.nombre
                temperatura.text = _data.temp + " º"
                precipitacion.text = "Precipitacion: " + _data.precipitacion
                humedad.text = "Humedad: " + _data.humedad
                viento.text = "Viento: " + _data.viento
                
                resultWeather.imageSource = "images/status/"+_data.status+".png"
               

                sliderText.play()
                mostrar.play()
                temperaturaAnim.play() 
            }             
            
           /***/

            Container {
                background: Color.Black
                layout: DockLayout {

                }

                ImageView {
                    id: resultWeather
                    imageSource: "images/status/0.png"
                    opacity: 1

                    animations: [
                        ParallelAnimation {
                            id: mostrar

                            FadeTransition {

                                fromOpacity: 0

                                duration: 1000
                                toOpacity: 1
                            }
                        }

                    ]
                }

                Container {
                    topPadding: 180.0
                    leftPadding: 25.0
                    Label {
                        id: temperatura
                        text: "18º"
                        textStyle.color: Color.White
                        textStyle.fontSize: FontSize.XXLarge
                        textStyle.fontWeight: FontWeight.Bold

                    }

                    animations: [
                        ParallelAnimation {
                            id: temperaturaAnim
                            TranslateTransition {
                                fromX: -800
                                toX: 0
                                duration: 700
                            }
                            FadeTransition {

                                fromOpacity: 0

                                duration: 700
                                toOpacity: 1
                            }
                        }
                    ]
                }
                Container {
                    horizontalAlignment: HorizontalAlignment.Fill
                    verticalAlignment: VerticalAlignment.Bottom

                    preferredHeight: 730
                    leftPadding: 50.0
                    topPadding: 50.0
                    rightPadding: 50.0
                    topMargin: 0.0

                    Label {
                        id: paisNameTxt
                        text: "Peru"
                        textStyle.color: Color.White
                        textStyle.fontSize: FontSize.XXLarge

                    }

                    Label {
                        id: precipitacion
                        text: "Precipitacion: 80"
                        textStyle.color: Color.White
                        textStyle.fontSize: FontSize.Medium
                    }
                    Label {
                        id: humedad
                        text: "Humedad: 80"
                        textStyle.color: Color.White
                        textStyle.fontSize: FontSize.Medium
                    }
                    Label {
                        id: viento
                        text: "Viento: 80"
                        textStyle.color: Color.White
                        textStyle.fontSize: FontSize.Medium
                    }

                    animations: [
                        ParallelAnimation {
                            id: sliderText
                            TranslateTransition {
                                fromX: -800
                                toX: 0
                                duration: 700
                            }
                            FadeTransition {

                                fromOpacity: 0

                                duration: 700
                                toOpacity: 1
                            }
                        }
                    ]
                }

            }

            /***/
             
            
        }
    ]
}




/*,,
            ComponentDefinition {
                id: customViewPage
                source: "CustomTimelineView.qml"
            }
            
            GroupDataModel {
                id: dataModel
            },
            DataSource {
                id: dataSource
                source: "http://feeds.feedburner.com/ICanHasCheezburger?format=xml"
                query: "rss/channel/item"
                onDataLoaded: {
                    dataModel.insertList(data)
                }
            }
             

        ]

        onCreationCompleted: {
           // dataSource.load();
        }
*/
 