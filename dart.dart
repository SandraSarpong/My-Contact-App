 SlideListView(
              itemBuilder: (context, index){
                return GestureDetector(
                  child: Row(
                    
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Text('To Do', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.black) ,),
                            ListTile(
                              leading: IconButton(onPressed: null, icon: Icon(Icons.arrow_right),
                              ),
                              title: Text('Doing laundry', style: TextStyle(fontSize: 12, color: Colors.black),),
                              subtitle: Text('Today 7:00am',style: TextStyle(fontSize: 12, color: Colors.black26),),
                              trailing: IconButton(onPressed: (){} , icon: Icon(Icons.more_horiz)),
                            ),
                            ListTile(
                             
                              title: Text('Grocery Shopping', style: TextStyle(fontSize: 12, color: Colors.black),),
                              subtitle: Text('Today 11:00am', style: TextStyle(fontSize: 12, color: Colors.black26),),
                              trailing: IconButton(onPressed: (){} , icon: Icon(Icons.check),
                            ),

                            ),
                            ListTile(
                             
                              title: Text('Pick Cathy up from the airport',style: TextStyle(fontSize: 12, color: Colors.black),),
                              subtitle: Text('Today 16:00pm',style: TextStyle(fontSize: 12, color: Colors.black26),),
                              trailing: IconButton(onPressed: (){} , icon: Icon(Icons.check),
                            ),

                            ),
                             ListTile(
                             
                              title: Text('Finish design project',style: TextStyle(fontSize: 12, color: Colors.black),),
                              subtitle: Text('Today 19:00pm', style: TextStyle(fontSize: 12, color: Colors.black26),),
                              trailing: IconButton(onPressed: (){} , icon: Icon(Icons.check),
                            ),

                            ),
                            ],
                          ),
                        ),     

            ],),

            );}, 
             actionWidgetDelegate: ActionWidgetDelegate(2, (actionIndex, listIndex) {
            if (actionIndex == 0) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[Icon(Icons.delete), Text('delete')],
              );
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  listIndex > 5 ? Icon(Icons.close) : Icon(Icons.adjust),
                  Text('close')
                ],
              );
            }
          }, (int indexInList, int index, BaseSlideItem item) {
            if (index == 0) {
              item.remove();
            } else {
              item.close();
            }
          }, [Colors.redAccent, Colors.blueAccent]),
          dataList: data,
          refreshCallback: () async {
            await Future.delayed(Duration(seconds: 2));
            return;
          },
        ),