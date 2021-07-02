
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-noetic-bota-driver";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_driver/0.6.0-3/bota_driver-release-release-noetic-bota_driver-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-noetic-bota_driver-0.6.0-3.tar.gz";
    sha256 = "99624576836ba668531f370c6384d815884e79650549decf44c2b249152dc3a1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
