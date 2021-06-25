
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-melodic-bota-driver";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_driver/0.6.0-3/bota_driver-release-release-melodic-bota_driver-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-bota_driver-0.6.0-3.tar.gz";
    sha256 = "81a71cc679a7748f57570b6b1593d27c33b504e13a6e80700887e8ff72460a5c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
