
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, message-filters, moveit-common, moveit-core, moveit-msgs, moveit-ros-occupancy-map-monitor, pluginlib, rclcpp, rclcpp-action, srdfdom, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-planning";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_planning/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "ce0482cc79feb2b3199493a4d1818ca5f092758477c608e8f3c2c2b1ca79934b";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp eigen eigen3-cmake-module message-filters moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rclcpp rclcpp-action srdfdom tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Planning components of MoveIt that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
