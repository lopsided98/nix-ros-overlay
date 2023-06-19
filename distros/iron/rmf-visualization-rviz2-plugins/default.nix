
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, eigen, pluginlib, qt5, rclcpp, resource-retriever, rmf-door-msgs, rmf-lift-msgs, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-iron-rmf-visualization-rviz2-plugins";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/iron/rmf_visualization_rviz2_plugins/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "4c4628df27f28e834b0fe69fd308f621c3b4380c03fbabd986657567018792fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-uncrustify rmf-utils ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rclcpp resource-retriever rmf-door-msgs rmf-lift-msgs rmf-traffic-ros2 rmf-visualization-msgs rviz-common rviz-default-plugins rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package containing RViz2 plugins for RMF'';
    license = with lib.licenses; [ asl20 ];
  };
}
