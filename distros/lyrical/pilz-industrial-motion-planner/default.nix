
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, boost, eigen3-cmake-module, generate-parameter-library, geometry-msgs, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-prbt-moveit-config, moveit-resources-prbt-pg70-support, moveit-resources-prbt-support, moveit-ros-move-group, moveit-ros-planning, orocos-kdl-vendor, pilz-industrial-motion-planner-testutils, pluginlib, rclcpp, ros-testing, tf2, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-pilz-industrial-motion-planner";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/pilz_industrial_motion_planner/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "de58a49e95a63d0af7980e39dd44bd6379561bf088a8f9df46fc2c4c762d55ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest boost launch-param-builder moveit-configs-utils moveit-resources-panda-moveit-config moveit-resources-prbt-moveit-config moveit-resources-prbt-pg70-support moveit-resources-prbt-support pilz-industrial-motion-planner-testutils ros-testing ];
  propagatedBuildInputs = [ eigen3-cmake-module generate-parameter-library geometry-msgs moveit-common moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning orocos-kdl-vendor pluginlib rclcpp tf2 tf2-eigen tf2-eigen-kdl tf2-geometry-msgs tf2-kdl tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequences thereof.";
    license = with lib.licenses; [ bsd3 ];
  };
}
