
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, example-interfaces, geometry-msgs, rclcpp, rclcpp-action, rcpputils, ros-babel-fish-test-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros-babel-fish";
  version = "3.26.40-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/kilted/ros_babel_fish/3.26.40-1.tar.gz";
    name = "3.26.40-1.tar.gz";
    sha256 = "241e43b5e1c183f5ef6380ef0dddcfd8e781a5a61053aa22bbe936a5ae770f1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake example-interfaces ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto geometry-msgs ros-babel-fish-test-msgs std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs rclcpp rclcpp-action rcpputils rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A runtime message handler for ROS.
    Allows subscription, publishing, calling of services and actions with messages known only at runtime as long
    as they are available in the local environment.";
    license = with lib.licenses; [ mit ];
  };
}
