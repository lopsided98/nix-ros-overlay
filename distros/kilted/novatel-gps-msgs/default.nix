
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-novatel-gps-msgs";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/kilted/novatel_gps_msgs/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "dba711bc6b309c388f8d564f33d869fa7e0c37c9716638ff6c5839310ee494a6";
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
