
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-signal-handler, bota-worker, catkin, gtest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-node";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_node/0.6.0-5/bota_driver-release-release-melodic-bota_node-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-bota_node-0.6.0-5.tar.gz";
    sha256 = "1a4b717128ff061556708ac2099c79e194fcc3f1b518914d9b5082a51de7e607";
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
