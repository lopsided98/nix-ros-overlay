
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, example-interfaces, geometry-msgs, rclcpp, rclcpp-action, rcpputils, ros-babel-fish-test-msgs, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros-babel-fish";
  version = "4.26.43-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/lyrical/ros_babel_fish/4.26.43-3.tar.gz";
    name = "4.26.43-3.tar.gz";
    sha256 = "ba775d21226ba3ae72e326c5198c244432f450a38dd8c7257409c123ce1432e0";
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
