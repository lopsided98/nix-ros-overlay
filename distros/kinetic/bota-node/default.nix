
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-bota-node";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/bota_node/0.5.9-2/bota_driver-release-release-kinetic-bota_node-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-bota_node-0.5.9-2.tar.gz";
    sha256 = "4e97511bae7e52ac71128e7c179f74b5d7bb91d543f34d117afd407081bbb747";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ bota-signal-handler bota-worker roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node wrapper with some convenience functions using *bota_worker*.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
