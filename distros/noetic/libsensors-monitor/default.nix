
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, lm_sensors, roscpp }:
buildRosPackage {
  pname = "ros-noetic-libsensors-monitor";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/noetic/libsensors_monitor/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "ecec8c4a61494b5d1682b34ce0e452a003156d73b9c41a0100e3ad10728b771e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-updater lm_sensors roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node for using libsensors to provide diagnostics information about the sensors on a computer system.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
