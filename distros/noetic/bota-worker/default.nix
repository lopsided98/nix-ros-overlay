
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-worker";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_worker/0.6.1-1/bota_driver-release-release-noetic-bota_worker-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-bota_worker-0.6.1-1.tar.gz";
    sha256 = "c58f317cfb01f213c11fa9e8e0f8c0b9a032e1283dd035fd86226c066ed5127e";
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
