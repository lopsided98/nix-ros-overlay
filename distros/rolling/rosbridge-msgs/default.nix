
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rosbridge-msgs";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosbridge_msgs/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "90e8d88aa34853db3d68e6c5ce6d9ae7255e3bfcd8dbebd8f1b3c983585c7937";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interface definitions for the rosbridge library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
