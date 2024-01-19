
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-ublox-serialization";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/iron/ublox_serialization/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "1de80062241a8873bdfdd5a75a0f0789c0a30b688b9ba380b6ecab244e9fd9b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
