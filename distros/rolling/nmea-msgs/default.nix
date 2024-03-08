
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-nmea-msgs";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_msgs-release/archive/release/rolling/nmea_msgs/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "4f3a2db13ca277a82b79c77e22f91e0e6fb398f5ccdb15ef963b98e6415edde0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The nmea_msgs package contains messages related to data in the NMEA format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
