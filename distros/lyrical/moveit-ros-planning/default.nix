
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, eigen, eigen3-cmake-module, fmt, generate-parameter-library, launch-testing-ament-cmake, message-filters, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, pluginlib, rclcpp, rclcpp-action, rclcpp-components, ros-testing, srdfdom, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-lyrical-moveit-ros-planning";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_ros_planning/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "b3e855a749ea44be066b08f6833676b3eefbae94d2902b9fb90b132872d7af11";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest launch-testing-ament-cmake moveit-configs-utils moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ ament-index-cpp eigen eigen3-cmake-module fmt generate-parameter-library message-filters moveit-common moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rclcpp rclcpp-action rclcpp-components srdfdom std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Planning components of MoveIt that use ROS";
    license = with lib.licenses; [ bsd3 ];
  };
}
