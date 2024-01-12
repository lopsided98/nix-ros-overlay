
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-noetic-bota-driver";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/bota_driver/0.6.1-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "3ad717b404a84c5cd0c01d37cde02156110a4f579e1eb5f9d8dc491bf85e551c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
