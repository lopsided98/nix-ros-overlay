
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, gtest, catkin, sensor-msgs, image-geometry, nodelet, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-depthimage-to-laserscan";
  version = "1.0.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/depthimage_to_laserscan-release/archive/release/kinetic/depthimage_to_laserscan/1.0.7-0.tar.gz;
    sha256 = "a5990dab5aa09a34ec03073427930b0fcdd2728cc3ae6be67669d612a26975d2";
  };

  buildInputs = [ dynamic-reconfigure image-transport gtest nodelet sensor-msgs roscpp image-geometry ];
  propagatedBuildInputs = [ dynamic-reconfigure image-transport sensor-msgs nodelet roscpp image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''depthimage_to_laserscan'';
    #license = lib.licenses.BSD;
  };
}
