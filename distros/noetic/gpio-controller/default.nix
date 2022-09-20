
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, realtime-tools, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-gpio-controller";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/gpio_controller/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "975510a3a726dcfdc2671a805327a54837451999c9826d5e6490ba352430fff8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface pluginlib realtime-tools rm-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpio_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
