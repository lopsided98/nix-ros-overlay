
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-worker";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_worker/0.6.1-2/bota_driver-release-release-noetic-bota_worker-0.6.1-2.tar.gz";
    name = "bota_driver-release-release-noetic-bota_worker-0.6.1-2.tar.gz";
    sha256 = "6d8b25afa5ccb58f705ff0cc1a8e19ad2998442a21f94b382fd8013b4b3377cf";
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
