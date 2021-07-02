
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-worker";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_worker/0.6.0-5/bota_driver-release-release-melodic-bota_worker-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-bota_worker-0.6.0-5.tar.gz";
    sha256 = "2717a05a4d971346ab8326f9f10710f05c661951dcecb9e669402624edd5e13a";
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
