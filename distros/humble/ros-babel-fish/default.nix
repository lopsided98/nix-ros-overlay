
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, example-interfaces, geometry-msgs, rclcpp, rclcpp-action, rcpputils, ros-babel-fish-test-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-babel-fish";
  version = "0.25.120-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/humble/ros_babel_fish/0.25.120-1.tar.gz";
    name = "0.25.120-1.tar.gz";
    sha256 = "893a4aa5402d74201953d7df7e6c91768dd1c5b61416312869e89fb629dfda4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-tutorials-interfaces ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto example-interfaces geometry-msgs ros-babel-fish-test-msgs std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs rclcpp rclcpp-action rcpputils rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A runtime message handler for ROS.
    Allows subscription, publishing, calling of services and actions with messages known only at runtime as long
    as they are available in the local environment.";
    license = with lib.licenses; [ mit ];
  };
}
