
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, eigen3-cmake-module, geometry-msgs, moveit-common, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-prbt-moveit-config, moveit-resources-prbt-pg70-support, moveit-resources-prbt-support, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, orocos-kdl, pilz-industrial-motion-planner-testutils, pluginlib, rclcpp, tf2, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-pilz-industrial-motion-planner";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/pilz_industrial_motion_planner/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "3080160dd7c7ffaeec5f09da3fc7a8d8cad0e185d7ce1c273d12fd3f96dc9fdb";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common boost moveit-resources-panda-moveit-config moveit-resources-prbt-moveit-config moveit-resources-prbt-pg70-support moveit-resources-prbt-support pilz-industrial-motion-planner-testutils ];
  propagatedBuildInputs = [ eigen3-cmake-module geometry-msgs moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface orocos-kdl pluginlib rclcpp tf2 tf2-eigen tf2-eigen-kdl tf2-geometry-msgs tf2-kdl tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequences thereof.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
