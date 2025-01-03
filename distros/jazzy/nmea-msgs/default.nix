
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nmea-msgs";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_msgs-release/archive/release/jazzy/nmea_msgs/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "e253a23053dce4817a4315e27b10cff6653844a9bd1ca039d2203f5d85da0c0a";
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
