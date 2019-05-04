
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, realtime-tools, joint-limits-interface, combined-robot-hw-tests, catkin, controller-interface, controller-manager-msgs, combined-robot-hw, controller-manager-tests, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-ros-control";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/ros_control/0.13.3-0.tar.gz;
    sha256 = "c7e50173396616ebb092aab1dc0159c2221c2402e0b7bcaaccb4c5d164653f18";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface realtime-tools joint-limits-interface combined-robot-hw-tests controller-interface controller-manager-msgs combined-robot-hw controller-manager-tests transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
