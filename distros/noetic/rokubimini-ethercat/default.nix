
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-ethercat";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_ethercat/0.6.0-2/bota_driver-release-release-noetic-rokubimini_ethercat-0.6.0-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_ethercat-0.6.0-2.tar.gz";
    sha256 = "b321c08a896b365d165b5cd288f5a502aca53bcf9e1a6ea7709a9e52a5ba51e9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
