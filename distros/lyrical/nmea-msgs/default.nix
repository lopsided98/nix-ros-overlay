
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nmea-msgs";
  version = "2.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_msgs-release/archive/release/lyrical/nmea_msgs/2.1.0-4.tar.gz";
    name = "2.1.0-4.tar.gz";
    sha256 = "fa07b80092905c594965e7eb841a01700a54fd5d2e1eafabeaca177df5e14479";
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
