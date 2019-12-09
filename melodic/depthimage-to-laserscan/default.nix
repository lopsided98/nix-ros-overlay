
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dynamic-reconfigure, catkin, image-transport, nodelet, roscpp, gtest, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-depthimage-to-laserscan";
  version = "1.0.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/depthimage_to_laserscan-release/archive/release/melodic/depthimage_to_laserscan/1.0.8-0.tar.gz";
    name = "1.0.8-0.tar.gz";
    sha256 = "0620a9a74ab3a0601a55d1cbe593abe68bbc838ea3fb6a1dfa57ac7e6e3c10ca";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure image-transport nodelet roscpp gtest image-geometry ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure image-transport nodelet roscpp image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
