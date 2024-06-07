
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, eigen, pluginlib, qt5, rclcpp, resource-retriever, rmf-door-msgs, rmf-lift-msgs, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-rviz2-plugins";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_rviz2_plugins/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "07ecb67dbf8b15ff131441bb74deead3dcf1d9bcb75353e1bcbc83312f37542c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-uncrustify rmf-utils ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rclcpp resource-retriever rmf-door-msgs rmf-lift-msgs rmf-traffic-ros2 rmf-visualization-msgs rviz-common rviz-default-plugins rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package containing RViz2 plugins for RMF";
    license = with lib.licenses; [ asl20 ];
  };
}
