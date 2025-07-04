
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, eigen, geometry-msgs, grasping-msgs, moveit-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, shape-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-simple-grasping";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_grasping-release/archive/release/kilted/simple_grasping/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "4c7160217ea7576eca83f891c7c2251bd417ad772d33098c7463978585f46f26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen pcl ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs grasping-msgs moveit-msgs pcl-conversions pcl-ros rclcpp rclcpp-action rclcpp-components sensor-msgs shape-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic grasping applications and demos.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
