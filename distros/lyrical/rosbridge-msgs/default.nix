
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-rosbridge-msgs";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/lyrical/rosbridge_msgs/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "e89c261ed7cbe3e09044e9eac8a3397065c3669f9b5ec9cac5af26d9e9f34abf";
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
