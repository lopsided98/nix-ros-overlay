
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-worker";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/bota_worker/0.5.7-1";
    name = "archive.tar.gz";
    sha256 = "64817e86a64272ff6c0366ad8979f84e4b6ceebf47371570d493f4ca771bdd4c";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''High resolution version of the ROS worker.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
