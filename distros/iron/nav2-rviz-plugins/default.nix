
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-lifecycle-manager, nav2-msgs, nav2-util, pluginlib, qt5, rclcpp, rclcpp-lifecycle, resource-retriever, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2-geometry-msgs, urdf, visualization-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-nav2-rviz-plugins";
  version = "1.2.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_rviz_plugins/1.2.10-1.tar.gz";
    name = "1.2.10-1.tar.gz";
    sha256 = "44babded39c88fab940c37ba7beb3c03bb4f3a96162536a3e86ab79f6e0f0527";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-lifecycle-manager nav2-msgs nav2-util pluginlib qt5.qtbase rclcpp rclcpp-lifecycle resource-retriever rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering std-msgs tf2-geometry-msgs urdf visualization-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Navigation 2 plugins for rviz";
    license = with lib.licenses; [ asl20 ];
  };
}
