
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-serial";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_serial/0.6.1-1/bota_driver-release-release-noetic-rokubimini_serial-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_serial-0.6.1-1.tar.gz";
    sha256 = "6c45ce3bd8dc83e376091b34f0e1d5deefcb85057cb5dea0ba393ebfe4c9048e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avrdude rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
