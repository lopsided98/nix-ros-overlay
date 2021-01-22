
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, pluginlib, roscpp, roslint, serial, std-msgs, vesc-msgs }:
buildRosPackage {
  pname = "ros-kinetic-vesc-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/kinetic/vesc_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2a857bb00b5ac06433c14fb60501a36b7be207bc27a0031d078f4ccb60b28b39";
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
