
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rosapi-msgs";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosapi_msgs/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "a5fae2d7d8035338e4ed4062027ccfb954d32fcebdb9e802208ff6dcdbe07be9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interface definitions for rosapi package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
