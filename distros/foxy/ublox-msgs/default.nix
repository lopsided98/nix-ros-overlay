
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rosidl-default-generators, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-foxy-ublox-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/foxy/ublox_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "cc114c1e0cb3339e9678254001fb02ba943b54c897ed568203d17092e7a2ae59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-default-generators ];
  propagatedBuildInputs = [ sensor-msgs std-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''ublox_msgs contains raw messages for u-blox GNSS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
