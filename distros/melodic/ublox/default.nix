
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "88fc16b1221df1f68aecbf5f0edfc0a763fe28055442f5f730c8c7c648a240a8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ublox-gps ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
