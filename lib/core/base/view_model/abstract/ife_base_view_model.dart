

import 'package:flutter/material.dart';

import '../../../init/network/abstract/ife_network_service.dart';
import '../../../init/network/concrete/network_service.dart';

abstract class IBaseViewModel {
  BuildContext? context;
  void setContext(BuildContext context);
  void init();

  INetworService networkService = NetworkService.instance;
}
