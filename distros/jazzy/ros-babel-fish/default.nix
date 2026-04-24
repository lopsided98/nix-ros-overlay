
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, example-interfaces, geometry-msgs, rclcpp, rclcpp-action, rcpputils, ros-babel-fish-test-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros-babel-fish";
  version = "2.26.40-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/jazzy/ros_babel_fish/2.26.40-1.tar.gz";
    name = "2.26.40-1.tar.gz";
    sha256 = "23b34652144e68c445b34c9b35379be57a49674aecf7f0167aa1ada8f0d90810";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake example-interfaces ];
  checkInputs = [ ament-cmake-gtest geometry-msgs ros-babel-fish-test-msgs std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs rclcpp rclcpp-action rcpputils rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A runtime message handler for ROS.
    Allows subscription, publishing, calling of services and actions with messages known only at runtime as long
    as they are available in the local environment.";
    license = with lib.licenses; [ mit ];
  };
}
