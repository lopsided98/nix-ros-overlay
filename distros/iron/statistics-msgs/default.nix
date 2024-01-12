
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-statistics-msgs";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/iron/statistics_msgs/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "77edad07f4c61699cd9006a4a49e2e4bc29ed3986f5d75d282b9a5ccf6eb5b7e";
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
