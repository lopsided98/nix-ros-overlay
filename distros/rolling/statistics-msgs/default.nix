
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-statistics-msgs";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/statistics_msgs/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "8eec48ef3af87fa551d065accce181a459a067bfd4e4ba64e0596a3f544b0739";
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
