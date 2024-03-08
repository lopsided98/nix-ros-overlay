
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ublox-serialization";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox_serialization/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "30418726bc8c96df1d129f6121f01b121a90573f15ad95f37eb8f575461fef60";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
