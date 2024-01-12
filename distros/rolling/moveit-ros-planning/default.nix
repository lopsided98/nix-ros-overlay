
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, fmt, generate-parameter-library, message-filters, moveit-common, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, pluginlib, rclcpp, rclcpp-action, ros-testing, srdfdom, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-planning";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_planning/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "f447f07399c4ed5e3455a23d767597e8de9c38ac395e870f4bd72bcb550cc018";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ ament-index-cpp eigen eigen3-cmake-module fmt generate-parameter-library message-filters moveit-common moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rclcpp rclcpp-action srdfdom tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Planning components of MoveIt that use ROS'';
    license = with lib.licenses; [ bsd3 ];
  };
}
