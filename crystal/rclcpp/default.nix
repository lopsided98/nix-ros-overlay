
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rosidl-generator-cpp, rosidl-typesupport-c, ament-cmake, rmw-implementation-cmake, ament-cmake-gmock, ament-lint-common, test-msgs, ament-cmake-gtest, rosidl-typesupport-cpp, rosgraph-msgs, rmw-implementation, rcl-yaml-param-parser, rcl-interfaces, ament-cmake-ros, rcl, ament-lint-auto, rmw }:
buildRosPackage {
  pname = "ros-crystal-rclcpp";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rclcpp-release/archive/release/crystal/rclcpp/0.6.4-0.tar.gz;
    sha256 = "0c2a84291e91f1e32e8d355681bb68a812594951f27203a63a8fc86c32126f87";
  };

  buildInputs = [ rosidl-generator-cpp builtin-interfaces rosidl-typesupport-c rosidl-typesupport-cpp rosgraph-msgs rmw-implementation rcl-yaml-param-parser rcl-interfaces rcl ];
  checkInputs = [ rmw-implementation-cmake ament-lint-common ament-cmake-gmock test-msgs ament-cmake-gtest ament-lint-auto rmw ];
  propagatedBuildInputs = [ rosidl-generator-cpp builtin-interfaces rosidl-typesupport-c ament-cmake rosidl-typesupport-cpp rosgraph-msgs rmw-implementation rcl-yaml-param-parser rcl-interfaces rcl rmw ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
