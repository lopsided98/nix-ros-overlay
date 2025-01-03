
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rosidl-default-generators, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-jazzy-ublox-msgs";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/jazzy/ublox_msgs/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "66a1327a6f97ba3e16d16f89d34b0ee4536495aecf28a6dd29c9a1372a6664f6";
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
