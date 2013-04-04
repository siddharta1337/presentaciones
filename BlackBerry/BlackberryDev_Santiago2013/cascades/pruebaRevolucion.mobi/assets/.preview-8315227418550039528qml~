// Default empty project template
import bb.cascades 1.0

TabbedPane {
    showTabsOnActionBar: true
    
    Tab{
        title: "Melman"
        Page {
            Container {
                layout: DockLayout {
                }
                preferredWidth: 769
                preferredHeight: 850
                background: Color.White
                verticalAlignment: VerticalAlignment.Bottom
                horizontalAlignment: HorizontalAlignment.Center
                ImageView {
                    id:cabeza
                    imageSource: "giraffe_head.png"
                    horizontalAlignment: HorizontalAlignment.Center
                    translationX: -60.0
                    verticalAlignment: VerticalAlignment.Center
                }
                Container {
                    background: Color.White
                    preferredHeight: 280
                    preferredWidth: 200
                    verticalAlignment: VerticalAlignment.Bottom
                    horizontalAlignment: HorizontalAlignment.Center
                }
                ImageView {
                    id:patas
                    imageSource: "giraffe_bottoms.png"
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Bottom
                }
                Slider {
                
                    horizontalAlignment: HorizontalAlignment.Left
                    verticalAlignment: VerticalAlignment.Bottom
                
                        onImmediateValueChanged : {
                                cabeza.translationY = -immediateValue * 60
                        }
                    
                }
            }
        }
    }
    
    Tab {
               title: "Lucho"
               Page {
                   Container {
                       preferredHeight:154
                       preferredWidth:317
                       background: Color.White
   	                ImageView {
   	                    id:perrito
   	                   imageSource: "pug.png"
   	                    horizontalAlignment: HorizontalAlignment.Center
   	                    
   	                    animations: [
   	                        RotateTransition {
                                id:rotacionPerrito
                                toAngleZ: 360
                                duration: 2000
                                easingCurve: StockCurve.ElasticIn
                                
   	                             onEnded: {
   	                                 rotacionPerritoBack.play()
   	                             }
                                
                                },
                                RotateTransition {
                                 id:rotacionPerritoBack
                                 toAngleZ:  0
                                 duration: 1000
                                 easingCurve: StockCurve.BounceIn
                                 
                                 } 
   	                    ]  
   	                    
   	                    onTouch: {
   	                        rotacionPerrito.play()
   	                    }
   	                }
               }
               }
                   
           }
        
    Tab {
        title: "Inicio"
                Page {
                    Container {
                        
                        background: Color.Green
                        
                        Label {
                            id: saludo
                            text:qsTr("Hola")
                            verticalAlignment: VerticalAlignment.Center
                            horizontalAlignment: HorizontalAlignment.Center
                            textStyle.fontSize: FontSize.XXLarge
                        }
                        Label {
                            id: pais
                            text: qsTr("mundo")
                            verticalAlignment: VerticalAlignment.Center
                            horizontalAlignment: HorizontalAlignment.Center
                            textStyle.fontSize: FontSize.XXLarge
                        }
                        DropDown {
                            Option {
                                text: "Chile"
                            }
                            Option {
                                text: "Costa Rica"    
                            }
                            Option {
                                text: "Mexico"
                            }
                            Option {
                                text: "Argentina"
                            }
                            Option {
                                text: "Mundo "
                            }
                            onSelectedIndexChanged: {
                                pais.text = selectedOption.text + "!"
                            }
                        }
                    }
                }
    }
    
    
}
