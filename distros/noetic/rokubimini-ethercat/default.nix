
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-grant, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-ethercat";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_ethercat/0.6.1-1/bota_driver-release-release-noetic-rokubimini_ethercat-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_ethercat-0.6.1-1.tar.gz";
    sha256 = "5e7a046ebe1148a8d4d71639807d90e1307bd5aa5874cafdb0dd34933a5ec83d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ethercat-grant rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
