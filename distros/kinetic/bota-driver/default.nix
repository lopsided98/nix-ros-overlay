
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-device-driver, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-factory, rokubimini-manager, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-kinetic-bota-driver";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/kinetic/bota_driver/0.5.6-1";
    name = "archive.tar.gz";
    sha256 = "e18f568ae442dc4449243e06e03df33e2c724ac1705010e23fa1c34325105d57";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-device-driver rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-factory rokubimini-manager rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
