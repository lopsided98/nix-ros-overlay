
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ublox";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "b51feba373e616f8bb6f28d93cc61aa6738645d5587d671e6911ed19ade5bbf6";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
