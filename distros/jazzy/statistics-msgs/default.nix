
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-statistics-msgs";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/statistics_msgs/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "87c6ef2e6036b1462e92d5cf3a074a96d7a33ceaeac7585b8cd962c2a23b1666";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message definitions for reporting statistics for topics and system resources.";
    license = with lib.licenses; [ asl20 ];
  };
}
