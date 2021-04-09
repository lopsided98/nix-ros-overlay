
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-worker";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_worker/0.5.9-1/bota_driver-release-release-melodic-bota_worker-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-melodic-bota_worker-0.5.9-1.tar.gz";
    sha256 = "6d7c78d1cba130da8635e9be9f8da0b03418b574811a85f451aa53f72c9756f6";
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
