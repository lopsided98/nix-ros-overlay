
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-nmea-msgs";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_msgs-release/archive/release/galactic/nmea_msgs/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "93a030e2a0961129d40044045cf565fce67fee224a71d4af0cea758ebc3f128c";
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
