
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, pluginlib, roscpp, roslint, serial, std-msgs, vesc-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc-driver";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/melodic/vesc_driver/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "735753d64e77b087a403b36386420cda79ede5a5544f541b0a1406fccff95115";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ nodelet pluginlib roscpp serial std-msgs vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for the Vedder VESC open source motor driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
