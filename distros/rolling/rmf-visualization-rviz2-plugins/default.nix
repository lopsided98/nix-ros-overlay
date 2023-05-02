
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, eigen, pluginlib, qt5, rclcpp, resource-retriever, rmf-door-msgs, rmf-lift-msgs, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-rviz2-plugins";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_rviz2_plugins/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "6e2d9c77025055ad880d5a1eb0a277857ed12c17b1c36a0f441bfa949dba682e";
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
