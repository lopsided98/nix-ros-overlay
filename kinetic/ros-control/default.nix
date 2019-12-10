
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, combined-robot-hw-tests, controller-interface, controller-manager, controller-manager-msgs, controller-manager-tests, hardware-interface, joint-limits-interface, realtime-tools, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-ros-control";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/ros_control/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "c7e50173396616ebb092aab1dc0159c2221c2402e0b7bcaaccb4c5d164653f18";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ combined-robot-hw combined-robot-hw-tests controller-interface controller-manager controller-manager-msgs controller-manager-tests hardware-interface joint-limits-interface realtime-tools transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
