
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-ublox-serialization";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/foxy/ublox_serialization/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "ac874bcd362f1af81d883cdd9daa385bd04838e764d3caef681b7b76f66523ad";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
