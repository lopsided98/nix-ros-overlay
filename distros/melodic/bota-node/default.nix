
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-node";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_node/0.6.0-3/bota_driver-release-release-melodic-bota_node-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-bota_node-0.6.0-3.tar.gz";
    sha256 = "8c742bea9e76ab6a776edb1fb758767ffc1bbfc228c8e1b9bce25c482118c82f";
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
