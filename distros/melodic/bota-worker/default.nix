
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-worker";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_worker/0.6.1-1/bota_driver-release-release-melodic-bota_worker-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-bota_worker-0.6.1-1.tar.gz";
    sha256 = "a96fd54d4e69bafbb3151b8126d2abf51a7d515663019713cdacacf5ce14f0b6";
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
