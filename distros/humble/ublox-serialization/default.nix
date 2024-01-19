
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-ublox-serialization";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/humble/ublox_serialization/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "91809609411efbee1acb843064f1ee697335cc3a03d45385077f11dc45551f68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
