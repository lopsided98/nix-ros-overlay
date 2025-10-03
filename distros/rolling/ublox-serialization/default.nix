
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ublox-serialization";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox_serialization/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "b98686583ba34e52e9d049c620d805392eb66a04a6898c8b6475e2733d768353";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
