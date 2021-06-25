
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-worker";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_worker/0.6.0-3/bota_driver-release-release-melodic-bota_worker-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-bota_worker-0.6.0-3.tar.gz";
    sha256 = "2e2bcd1a6860e2c0a1a58cffa9a06cbaa53640195df9dada6157f38e6dee4e13";
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
