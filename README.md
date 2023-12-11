# Full Chat

This package provides a catalog of widgets ready to create a chat, and allows a high level of customization.

## Example of Use

```
TextEditingController inputController = TextEditingController();

FullChat(
        inputController: inputController,
        appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 35), 
        child: AppBar(
            backgroundColor: Colors.grey.withOpacity(0.2)
            )
        ),
        leadingWidget: IconButton(
                        icon:  Icon(Icons.add, color: Colors.blue[400]),
                        onPressed: ()=>print('add'),
                    ),
        trailingWidget: Row(
            children: [
            SizedBox(
                    width:40,
                    height:40,
                    child: IconButton(
                        icon:  Icon(Icons.camera_alt,color: Colors.blue[400],),
                        onPressed: ()=>print("camera"),
                    ),
                    ),
                    SizedBox(
                    width:40,
                    height:40,
                    child: IconButton(
                        icon:  Icon(Icons.mic,color: Colors.blue[400],),
                        onPressed: ()=>print("mic"),
                    ),
                    )
                    ],
        )
        )
```