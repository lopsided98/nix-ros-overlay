
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-novatel-gps-msgs";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/lyrical/novatel_gps_msgs/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "c0687c6da997995d3b7baa1c5f4570cf223b6e4016fa5be9702bf7bc41cb442d";
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
