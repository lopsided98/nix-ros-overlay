
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, pluginlib, qt5, rclcpp, resource-retriever, rmf-cmake-uncrustify, rmf-door-msgs, rmf-lift-msgs, rmf-traffic-ros2, rmf-visualization-msgs, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-foxy-rmf-visualization-rviz2-plugins";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/foxy/rmf_visualization_rviz2_plugins/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "94d3952d198807f576f1b533a7c85c61c7cf9655d63ce00b9aa5341672f292d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  checkInputs = [ rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rclcpp resource-retriever rmf-door-msgs rmf-lift-msgs rmf-traffic-ros2 rmf-visualization-msgs rviz-common rviz-default-plugins rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package containing RViz2 plugins for RMF'';
    license = with lib.licenses; [ asl20 ];
  };
}
