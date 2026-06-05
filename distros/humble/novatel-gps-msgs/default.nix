
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-novatel-gps-msgs";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/novatel_gps_driver-release/archive/release/humble/novatel_gps_msgs/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "a402a7d7a19c0e7f267794234c11b7f09552ca005743ed3d4e05d343b2059e17";
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
