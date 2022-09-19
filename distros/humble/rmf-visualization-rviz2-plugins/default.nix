
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, pluginlib, qt5, rclcpp, resource-retriever, rmf-cmake-uncrustify, rmf-door-msgs, rmf-lift-msgs, rmf-traffic-ros2, rmf-visualization-msgs, rviz-common, rviz-default-plugins, rviz-rendering }:
buildRosPackage {
  pname = "ros-humble-rmf-visualization-rviz2-plugins";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/rmf_visualization_rviz2_plugins/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "7be9eeeecbba254035f33dbe99a1163088ea7e7a498bc5ccc12f62a1d1ecc8e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rclcpp resource-retriever rmf-door-msgs rmf-lift-msgs rmf-traffic-ros2 rmf-visualization-msgs rviz-common rviz-default-plugins rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package containing RViz2 plugins for RMF'';
    license = with lib.licenses; [ asl20 ];
  };
}
