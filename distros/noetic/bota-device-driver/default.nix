
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-noetic-bota-device-driver";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/bota_device_driver/0.5.7-1";
    name = "archive.tar.gz";
    sha256 = "32a445c312f5a9060dcfd973022f856aaea4e1588d58369dd6e8c12c904d31c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}
