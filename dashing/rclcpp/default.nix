
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake-ros, rosidl-typesupport-c, rmw-implementation-cmake, rcl, ament-lint-common, ament-cmake, rcl-yaml-param-parser, test-msgs, ament-cmake-gtest, rosidl-typesupport-cpp, rcl-interfaces, rmw, ament-cmake-gmock, rmw-implementation, builtin-interfaces, rosgraph-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rclcpp";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "d5ff4aa3dfd5a5c8f408d0f082a5214859bb349c4f7acbbca6868f00f5a35d49";
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
