import 'package:flutter/material.dart';

class rowcol extends StatelessWidget {
  const rowcol({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
    
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
    
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet.",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(height: 20, width: 20, color: Colors.blueGrey),
              SizedBox(width: 9),
              Container(height: 20, width: 20, color: Colors.lightGreen),
           
            ],
          ),
        ],
      ),
    );
  }
}
