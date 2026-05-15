
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-statistics-msgs";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/statistics_msgs/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "534fa3e1cbb3aab8477e9faa36bf1b32542eebf2d8f20b215c5d396cc71918d8";
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
