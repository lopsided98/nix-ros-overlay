
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, rcl, rcl-interfaces, rcl-yaml-param-parser, rmw, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-dashing-rclcpp";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "4367dbc022a95d604e38d1e293afecc8457b47db89a343c6e8b114b18edaf332";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ ament-cmake builtin-interfaces rcl rcl-interfaces rcl-yaml-param-parser rmw rmw-implementation rosgraph-msgs rosidl-generator-cpp rosidl-typesupport-c rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
