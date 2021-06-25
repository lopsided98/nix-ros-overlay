
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-node";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_node/0.6.0-2/bota_driver-release-release-noetic-bota_node-0.6.0-2.tar.gz";
    name = "bota_driver-release-release-noetic-bota_node-0.6.0-2.tar.gz";
    sha256 = "18c7e8a3a7611dfe384e9a1146fc5e208be85c7042423ff15c0b0a8a0c0c22cf";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ bota-signal-handler bota-worker roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node wrapper with some convenience functions using *bota_worker*.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
