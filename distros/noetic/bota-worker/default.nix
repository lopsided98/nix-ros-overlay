
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-worker";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_worker/0.6.0-3/bota_driver-release-release-noetic-bota_worker-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-noetic-bota_worker-0.6.0-3.tar.gz";
    sha256 = "df042edcda3b0ebaab5aa4f5d89ce2b98e633e655108b04ca9bc30971657622d";
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
