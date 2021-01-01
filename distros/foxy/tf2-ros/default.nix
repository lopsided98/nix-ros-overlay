
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, geometry-msgs, message-filters, python-cmake-module, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclpy, std-msgs, tf2, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-foxy-tf2-ros";
  version = "0.13.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_ros/0.13.9-1.tar.gz";
    name = "0.13.9-1.tar.gz";
    sha256 = "36edaf18b5d4312c8eb8f167e4e778ba652bdc6363451aa5d0389891a2eec901";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs message-filters rcl-interfaces rclcpp rclcpp-action rclcpp-components rclpy std-msgs tf2 tf2-msgs tf2-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
