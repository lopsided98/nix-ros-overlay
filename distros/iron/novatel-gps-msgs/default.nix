
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-novatel-gps-msgs";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/iron/novatel_gps_msgs/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "eafeeccf7ce31d5c671efae27b07e45279e3c8d4220e93137abb958eb2252a4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
