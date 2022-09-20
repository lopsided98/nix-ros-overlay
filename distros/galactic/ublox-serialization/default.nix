
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-ublox-serialization";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/galactic/ublox_serialization/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "4e94c853e242f192f253d1d6708fd901b08e771455d736fc1f134efb862a5e29";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
