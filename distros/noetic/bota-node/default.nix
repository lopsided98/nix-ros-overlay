
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-node";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_node/0.6.1-1/bota_driver-release-release-noetic-bota_node-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-bota_node-0.6.1-1.tar.gz";
    sha256 = "57da1a9bddd29243710018d23153ef1e4632267ce6a01878dfb77e64fee8256a";
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
