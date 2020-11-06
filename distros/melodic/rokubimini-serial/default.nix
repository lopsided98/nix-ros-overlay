
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-serial";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_serial/0.5.5-1";
    name = "archive.tar.gz";
    sha256 = "a527dbc3a0900dd918b0bd8c29bf0184420f834f14e19e1967c93496fe090fe2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
