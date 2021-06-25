
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-ethercat";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_ethercat/0.6.0-3/bota_driver-release-release-melodic-rokubimini_ethercat-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_ethercat-0.6.0-3.tar.gz";
    sha256 = "d76813c08f79c6eb52a4528c45e197d87036d71a884da96f2c8637e6be57fb10";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
