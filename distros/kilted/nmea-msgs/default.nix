
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-nmea-msgs";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_msgs-release/archive/release/kilted/nmea_msgs/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "3d1cc76e94e57aa0b8e39a2b53517848b54f8b4f38a59cf49e655e11185831d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The nmea_msgs package contains messages related to data in the NMEA format.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
