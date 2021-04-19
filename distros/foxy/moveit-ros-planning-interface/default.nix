
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-simple-controller-manager, python3, rclcpp, rclcpp-action, rclpy, ros-testing, rviz2, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, warehouse-ros-mongo }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-planning-interface";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_planning_interface/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "546ecb1a08062ee5d68be862037f6f014be323740492883a05338bd681ce1340";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen moveit-common ];
  checkInputs = [ moveit-planners-ompl moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-simple-controller-manager ros-testing rviz2 warehouse-ros-mongo ];
  propagatedBuildInputs = [ geometry-msgs moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning python3 rclcpp rclcpp-action rclpy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Components of MoveIt that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
