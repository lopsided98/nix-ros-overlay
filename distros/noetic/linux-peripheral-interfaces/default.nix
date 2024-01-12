
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laptop-battery-monitor, libsensors-monitor }:
buildRosPackage {
  pname = "ros-noetic-linux-peripheral-interfaces";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/noetic/linux_peripheral_interfaces/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "c2da8bce0693ee4268de91e273dd47cc8e63bb4422e30b6445bbe51bfede833e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laptop-battery-monitor libsensors-monitor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple scripts which help utilise, monitor, interact with computer
     hardware abstracted by a linux OS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
