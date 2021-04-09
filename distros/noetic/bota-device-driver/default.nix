
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-noetic-bota-device-driver";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_device_driver/0.5.9-1/bota_driver-release-release-noetic-bota_device_driver-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-noetic-bota_device_driver-0.5.9-1.tar.gz";
    sha256 = "04d389e8f898ea48e83ca0b704fc2ea8ce04a7455d72c28680bbc5680ad72dbd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}
