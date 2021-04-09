
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-node, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-melodic-bota-device-driver";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_device_driver/0.5.9-1/bota_driver-release-release-melodic-bota_device_driver-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-melodic-bota_device_driver-0.5.9-1.tar.gz";
    sha256 = "23d895e911d7ac7a594e3226226dabef0a1a2b0c73c5add475fe49462bdde03c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-node rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for communicating with rokubimini sensors'';
    license = with lib.licenses; [ asl20 ];
  };
}
