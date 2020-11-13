
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-device-driver, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-factory, rokubimini-manager, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-noetic-bota-driver";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/bota_driver/0.5.7-1";
    name = "archive.tar.gz";
    sha256 = "da4060aaca6e752bb9a781cde7fb8db5c65f043f7e69e7c1aff35f6a4f396cae";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-device-driver rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-factory rokubimini-manager rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
