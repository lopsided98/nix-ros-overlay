
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits-interface, realtime-tools, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-ros-control";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/ros_control/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "d161e78552c7f67b55d4b910f7db1e924974a7862c04ae927e9c1179e8af963c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ combined-robot-hw controller-interface controller-manager controller-manager-msgs hardware-interface joint-limits-interface realtime-tools transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
