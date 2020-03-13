
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "cdf68577cfb07dd68049c6c8b924420a1c2c9d68feb3ca773e0a922dfea43ec1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ublox-gps ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
