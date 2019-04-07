
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, gtest, catkin, sensor-msgs, image-geometry, nodelet, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-melodic-depthimage-to-laserscan";
  version = "1.0.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/depthimage_to_laserscan-release/archive/release/melodic/depthimage_to_laserscan/1.0.8-0.tar.gz;
    sha256 = "0620a9a74ab3a0601a55d1cbe593abe68bbc838ea3fb6a1dfa57ac7e6e3c10ca";
  };

  buildInputs = [ dynamic-reconfigure image-transport gtest nodelet sensor-msgs roscpp image-geometry ];
  propagatedBuildInputs = [ dynamic-reconfigure image-transport sensor-msgs nodelet roscpp image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''depthimage_to_laserscan'';
    #license = lib.licenses.BSD;
  };
}
