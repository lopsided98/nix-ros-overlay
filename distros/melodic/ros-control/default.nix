
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits-interface, realtime-tools, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-ros-control";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/ros_control/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "c811c71bdf5649bc62991e2dd9864dbcd4062b65e9d82667afa1014ca51bd9bf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ combined-robot-hw controller-interface controller-manager controller-manager-msgs hardware-interface joint-limits-interface realtime-tools transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
