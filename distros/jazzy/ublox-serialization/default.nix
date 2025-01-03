
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ublox-serialization";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/jazzy/ublox_serialization/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "14867273e3de2f574dd8cdd0b3e8c7fa55360b35325dda736cd3f1d267da3a97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
