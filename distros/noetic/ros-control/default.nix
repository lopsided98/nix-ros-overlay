
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits-interface, realtime-tools, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-ros-control";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/ros_control/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "7386233db0e3afa2bf4f70fd1d262a70f9963ba20a8c1f5d8933b1ef54b19fc3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ combined-robot-hw controller-interface controller-manager controller-manager-msgs hardware-interface joint-limits-interface realtime-tools transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
