
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-uncrustify, geometry-msgs, launch-pytest, launch-testing-ament-cmake, moveit-common, moveit-configs-utils, moveit-planners-ompl, moveit-resources, moveit-ros, moveit-ros-planning-interface, python3Packages, pythonPackages, rclcpp, rclcpp-action, rmf-utils, robot-state-publisher, ros2-control, tf2-ros, trajectory-msgs, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-trajectory-cache";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_trajectory_cache/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "664fe961e832ca28cdce4f3a4e7cf64c4d092074da03c3fa3aaad0a9fcc757a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-cmake-uncrustify launch-pytest launch-testing-ament-cmake moveit-configs-utils moveit-planners-ompl moveit-resources pythonPackages.pytest rmf-utils robot-state-publisher ros2-control warehouse-ros-sqlite ];
  propagatedBuildInputs = [ geometry-msgs moveit-common moveit-ros moveit-ros-planning-interface python3Packages.pyyaml rclcpp rclcpp-action tf2-ros trajectory-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A trajectory cache for MoveIt 2 motion plans and cartesian plans.";
    license = with lib.licenses; [ asl20 ];
  };
}
