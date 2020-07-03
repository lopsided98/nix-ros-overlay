
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-lifecycle-manager, nav2-msgs, nav2-util, pluginlib, qt5, rclcpp, rclcpp-lifecycle, resource-retriever, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-nav2-rviz-plugins";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_rviz_plugins/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "b881ab414687db43ab376ac365b1309b77d2872220e37ee21e5debbcfe8d5242";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-lifecycle-manager nav2-msgs nav2-util pluginlib qt5.qtbase rclcpp rclcpp-lifecycle resource-retriever rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering std-msgs tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Navigation 2 plugins for rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
