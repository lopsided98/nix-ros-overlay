
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-gps-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/rolling/gps_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "9f034be64a84d3ae457fb741401fbd68b365bcb6c104da395fb29612f5a54148";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "GPS messages for use in GPS drivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
