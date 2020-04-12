import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum RouteType {Material, Cupertino}

push(BuildContext context, Widget screen, RouteType routeType){

  var route;

  if(routeType == RouteType.Material){
    route = MaterialPageRoute(builder: (context) => screen);
  } else {
    route = CupertinoPageRoute(builder: (context) => screen);
  }

  Navigator.of(context).push(route);

}

pop(BuildContext context){
  Navigator.of(context).pop();
}

pushReplacement(BuildContext context, Widget screen, RouteType routeType){

  var route;

  if(routeType == RouteType.Material){
    route = MaterialPageRoute(builder: (context) => screen);
  } else {
    route = CupertinoPageRoute(builder: (context) => screen);
  }

  Navigator.of(context).pushReplacement(route);

}