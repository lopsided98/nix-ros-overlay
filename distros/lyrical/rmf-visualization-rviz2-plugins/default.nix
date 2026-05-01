
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, eigen, pluginlib, rclcpp, resource-retriever, rmf-door-msgs, rmf-lift-msgs, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-lyrical-rmf-visualization-rviz2-plugins";
  version = "2.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/lyrical/rmf_visualization_rviz2_plugins/2.5.1-3.tar.gz";
    name = "2.5.1-3.tar.gz";
    sha256 = "6b6091e670ba2438878788e587ec36bbb800242a007124195490aac646a56bdf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-uncrustify rmf-utils ];
  propagatedBuildInputs = [ pluginlib rclcpp resource-retriever rmf-door-msgs rmf-lift-msgs rmf-traffic-ros2 rmf-visualization-msgs rviz-common rviz-default-plugins rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package containing RViz2 plugins for RMF";
    license = with lib.licenses; [ asl20 ];
  };
}
