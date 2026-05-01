
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rosidl-default-generators, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-lyrical-ublox-msgs";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/lyrical/ublox_msgs/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "b430ba2e05392e2470df2e0b4e72f2e90b5b731d2bde11e018da8c3d29792a9b";
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
