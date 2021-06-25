
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-serial";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_serial/0.6.0-2/bota_driver-release-release-noetic-rokubimini_serial-0.6.0-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_serial-0.6.0-2.tar.gz";
    sha256 = "d696a91e061d068923f479437569b4cf007b51f0c2dad69157e3ec7cd01c76c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avrdude rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
