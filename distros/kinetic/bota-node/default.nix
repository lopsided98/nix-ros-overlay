
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-bota-node";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/bota_node/0.5.9-2";
    name = "archive.tar.gz";
    sha256 = "c6f023bf456ec0323c007b7672e63017b82699bfbbaaee7f4499ceb0738d8cb3";
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
