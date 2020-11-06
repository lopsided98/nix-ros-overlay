
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-worker";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/bota_worker/0.5.5-1";
    name = "archive.tar.gz";
    sha256 = "4037c14d8437b56dce9efa422eba91d89afd3f7e02520ec13f856768a60a6f2f";
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
