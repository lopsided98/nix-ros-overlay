
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-ublox-serialization";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/lyrical/ublox_serialization/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "98305441c9cc2f054b0175550a693b402fe3674557734f7c789ccb271c9b0c7c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
