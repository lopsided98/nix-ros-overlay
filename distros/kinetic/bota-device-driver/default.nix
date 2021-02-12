
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-kinetic-bota-device-driver";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/bota_device_driver/0.5.9-2";
    name = "archive.tar.gz";
    sha256 = "9ecc8518da0b3a7189c9f7922b264ba9b1bf6d9d0641b9e31121b729f22752e4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}
