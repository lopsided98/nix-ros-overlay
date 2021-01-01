
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-device-driver, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-factory, rokubimini-manager, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-kinetic-bota-driver";
  version = "0.5.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/bota_driver/0.5.8-1";
    name = "archive.tar.gz";
    sha256 = "e3e34c342e91618835aa8f7d4645cd10dd4f7c8d11a002ee0c342b19a6850354";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-device-driver rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-factory rokubimini-manager rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
