
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rosidl-default-generators, sensor-msgs, std-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-rolling-ublox-msgs";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox_msgs/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "594a79e11858621300775486cb224d50c5f531952a4a41d103954a660ec63af0";
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
