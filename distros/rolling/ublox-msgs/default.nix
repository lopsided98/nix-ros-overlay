
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rosidl-default-generators, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-rolling-ublox-msgs";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox_msgs/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "d0b345e12c87c579b4a36d78ccfcef7e3b2436c0e4d8d77c7df7bc6cb7d3c685";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-default-generators ];
  propagatedBuildInputs = [ sensor-msgs std-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "ublox_msgs contains raw messages for u-blox GNSS devices.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
