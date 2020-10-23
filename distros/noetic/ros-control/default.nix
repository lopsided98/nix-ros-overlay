
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits-interface, realtime-tools, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-ros-control";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/ros_control/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "f47183c9b930ff03ebedfcc2b7b3615ca110cbeb364d04d1e25be6b1c3c3019b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ combined-robot-hw controller-interface controller-manager controller-manager-msgs hardware-interface joint-limits-interface realtime-tools transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
