
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, combined-robot-hw-tests, controller-interface, controller-manager, controller-manager-msgs, controller-manager-tests, hardware-interface, joint-limits-interface, realtime-tools, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-ros-control";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/ros_control/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "77df478bf9b1d047065ae307a396ee325143bd260ce89011c90e0faf86c2fcf7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ combined-robot-hw combined-robot-hw-tests controller-interface controller-manager controller-manager-msgs controller-manager-tests hardware-interface joint-limits-interface realtime-tools transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
