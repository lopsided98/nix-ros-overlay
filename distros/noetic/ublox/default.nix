
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-noetic-ublox";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/noetic/ublox/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "5a4fed44385f67d457cc2bc6d2cc352cc59efc83e646fe1238ffb2dfe6088953";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ublox-gps ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
