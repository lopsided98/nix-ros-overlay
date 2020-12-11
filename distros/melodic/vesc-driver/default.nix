
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, pluginlib, roscpp, roslint, serial, std-msgs, vesc-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/melodic/vesc_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "420294ac2003e9e2ebdef76276a224e316dccb0e9aa3fc2ee972f6aeeb847542";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ nodelet pluginlib roscpp serial std-msgs vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for the Vedder VESC open source motor driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
