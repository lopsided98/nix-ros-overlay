
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, example-interfaces, geometry-msgs, rclcpp, rclcpp-action, rcpputils, ros-babel-fish-test-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros-babel-fish";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/jazzy/ros_babel_fish/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "5037c8746be4bff5220b6cc961587a9d2f4cf282fe8c08f80d642bca78a56f61";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-tutorials-interfaces ament-cmake geometry-msgs ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto example-interfaces ros-babel-fish-test-msgs std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp rclcpp rclcpp-action rcpputils rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A runtime message handler for ROS.
    Allows subscription, publishing, calling of services and actions with messages known only at runtime as long
    as they are available in the local environment.";
    license = with lib.licenses; [ mit ];
  };
}
