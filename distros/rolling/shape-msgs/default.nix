
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-shape-msgs";
  version = "5.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/shape_msgs/5.7.0-1.tar.gz";
    name = "5.7.0-1.tar.gz";
    sha256 = "91699165c64105ab17203363e9a501515eed09c32237168099a1a4251cd59e12";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some message definitions which describe geometric shapes.";
    license = with lib.licenses; [ asl20 ];
  };
}
