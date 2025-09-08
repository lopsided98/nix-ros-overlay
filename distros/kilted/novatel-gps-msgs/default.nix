
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-novatel-gps-msgs";
  version = "4.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/kilted/novatel_gps_msgs/4.2.0-5.tar.gz";
    name = "4.2.0-5.tar.gz";
    sha256 = "472841cf08f16b32420732a15e9525e48081c4ace4659a8204418f3d9d5859cc";
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
