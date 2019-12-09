
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake-ros, rosidl-typesupport-c, rmw-implementation-cmake, rcl, ament-lint-common, ament-cmake, rcl-yaml-param-parser, test-msgs, ament-cmake-gtest, rosidl-typesupport-cpp, rcl-interfaces, rmw, ament-cmake-gmock, rmw-implementation, builtin-interfaces, rosgraph-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rclcpp";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/crystal/rclcpp/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "1a86339deaa90b5b5c114811d162039993ed98d7967936a35cb08549f815931b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rosidl-typesupport-c rcl rcl-yaml-param-parser rcl-interfaces rosidl-typesupport-cpp rmw-implementation builtin-interfaces rosgraph-msgs ];
  checkInputs = [ rmw-implementation-cmake ament-lint-common ament-lint-auto test-msgs rmw ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-typesupport-c rcl ament-cmake rcl-yaml-param-parser rcl-interfaces rmw rosidl-typesupport-cpp rmw-implementation builtin-interfaces rosgraph-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
