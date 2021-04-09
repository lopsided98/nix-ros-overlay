
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-kinetic-bota-device-driver";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/bota_device_driver/0.5.9-2/bota_driver-release-release-kinetic-bota_device_driver-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-bota_device_driver-0.5.9-2.tar.gz";
    sha256 = "f1caa112f6aa842b6db0055d3310b49345f5f802f44e7c14290c11db6c5ec8c4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}
