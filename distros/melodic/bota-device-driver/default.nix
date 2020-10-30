
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-melodic-bota-device-driver";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/bota_device_driver/0.5.2-2";
    name = "archive.tar.gz";
    sha256 = "4c380c66060b6f55a15dfac4f933dc7d98880761dd35c2681dc31eaf432eb7b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}
