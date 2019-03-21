
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laptop-battery-monitor, libsensors-monitor, catkin }:
buildRosPackage {
  pname = "ros-kinetic-linux-peripheral-interfaces";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/kinetic/linux_peripheral_interfaces/0.2.0-0.tar.gz;
    sha256 = "12fea2c1a817a1d9498d81655f98536b8d96515c7909cbcbae5851432d3a68e3";
  };

  propagatedBuildInputs = [ laptop-battery-monitor libsensors-monitor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple scripts which help utilise, monitor, interact with computer
     hardware abstracted by a linux OS.'';
    #license = lib.licenses.BSD;
  };
}
