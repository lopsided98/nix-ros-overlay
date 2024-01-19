
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gtest, image-geometry, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthimage-to-laserscan";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/depthimage_to_laserscan-release/archive/release/noetic/depthimage_to_laserscan/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "033bbea0e5df9638816345ee7fd5e049af5431d21c74550937d1fc725fa946b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin gtest ];
  propagatedBuildInputs = [ dynamic-reconfigure image-geometry image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
