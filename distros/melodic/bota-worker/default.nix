
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-worker";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_worker/0.6.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "9ff2f67d4f0bebdcd1dcc92472e784e3b3b79e45fa28d75599fc532bd87d8bab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''High resolution version of the ROS worker.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
