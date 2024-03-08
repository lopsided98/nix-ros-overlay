
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-novatel-gps-msgs";
  version = "4.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/rolling/novatel_gps_msgs/4.1.0-4.tar.gz";
    name = "4.1.0-4.tar.gz";
    sha256 = "a8a45e1daa0465fc8239070ef9f96469511ffea3c2cb2a01dae2c0f93f7066f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
