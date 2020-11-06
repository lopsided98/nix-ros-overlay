
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-melodic-bota-device-driver";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/bota_device_driver/0.5.5-1";
    name = "archive.tar.gz";
    sha256 = "6c912d90328433700afc7ae77987473e00b9c9944b0df413c12372347f15ca73";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}
