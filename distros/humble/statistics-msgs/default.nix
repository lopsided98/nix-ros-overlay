
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-statistics-msgs";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/humble/statistics_msgs/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "c9ca305cb65ec980921e59ce5d035d2c360ee75264efd0a84c578de2f6423fbd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message definitions for reporting statistics for topics and system resources.'';
    license = with lib.licenses; [ asl20 ];
  };
}
