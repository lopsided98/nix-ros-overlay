
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-bota-worker";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_worker/0.6.0-2/bota_driver-release-release-noetic-bota_worker-0.6.0-2.tar.gz";
    name = "bota_driver-release-release-noetic-bota_worker-0.6.0-2.tar.gz";
    sha256 = "8c065c81ba508d2dcf5f79064651362233254b5c13b42e9df7e28f3448410ecb";
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
