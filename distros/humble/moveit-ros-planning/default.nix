
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, message-filters, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, pluginlib, rclcpp, rclcpp-action, ros-testing, srdfdom, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-humble-moveit-ros-planning";
  version = "2.5.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_ros_planning/2.5.8-1.tar.gz";
    name = "2.5.8-1.tar.gz";
    sha256 = "5d58499f69e7faf7535f672bb112b7e331b99f863229d88eadc281e382193ab5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common moveit-configs-utils moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ ament-index-cpp eigen eigen3-cmake-module message-filters moveit-common moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rclcpp rclcpp-action srdfdom tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Planning components of MoveIt that use ROS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
