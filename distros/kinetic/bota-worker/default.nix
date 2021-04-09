
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-bota-worker";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/bota_worker/0.5.9-2/bota_driver-release-release-kinetic-bota_worker-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-bota_worker-0.5.9-2.tar.gz";
    sha256 = "732d94941315c5a17c6e4e3077a54bc2c6364b7c8c1cf6d9d459eb5c45b27eeb";
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
