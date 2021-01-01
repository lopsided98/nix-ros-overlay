
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, combined-robot-hw-tests, controller-interface, controller-manager, controller-manager-msgs, controller-manager-tests, hardware-interface, joint-limits-interface, realtime-tools, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-ros-control";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/ros_control/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "eaa5804551a2d127a5c6275cbbd84db6fe566b5a1ca4e47e3264732d5de4e10b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ combined-robot-hw combined-robot-hw-tests controller-interface controller-manager controller-manager-msgs controller-manager-tests hardware-interface joint-limits-interface realtime-tools transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
