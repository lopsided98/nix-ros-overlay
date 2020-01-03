
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ublox";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "bfd357e219781c9b45616712b6e7004b8e0d4204852df3789fbff9a2cbf431c9";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
