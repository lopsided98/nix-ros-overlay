
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits-interface, realtime-tools, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-ros-control";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/ros_control/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "25afad4a8408aa2251004a3f157b08c82babf5ff58779ca67be4530932d0b9ec";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ combined-robot-hw controller-interface controller-manager controller-manager-msgs hardware-interface joint-limits-interface realtime-tools transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
