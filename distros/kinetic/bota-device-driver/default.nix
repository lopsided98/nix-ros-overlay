
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-kinetic-bota-device-driver";
  version = "0.5.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/bota_device_driver/0.5.8-1";
    name = "archive.tar.gz";
    sha256 = "c15cc8c2917e484145cac8b3b9aec9c25780cb589a4729202495615a91ef62e5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}
