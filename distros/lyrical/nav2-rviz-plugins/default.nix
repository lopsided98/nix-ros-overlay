
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav-msgs, nav2-common, nav2-lifecycle-manager, nav2-msgs, nav2-ros-common, nav2-route, nav2-util, pluginlib, qt6, rclcpp, rclcpp-action, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2-geometry-msgs, visualization-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-nav2-rviz-plugins";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_rviz_plugins/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "9b6d81f7b8bced4b2cc5eed660867c97b839274e7f6eb7f598984f53c9e00d73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs backward-ros geometry-msgs nav-msgs nav2-lifecycle-manager nav2-msgs nav2-ros-common nav2-route nav2-util pluginlib qt6.qtbase qt6.qtscxml rclcpp rclcpp-action rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering std-msgs tf2-geometry-msgs visualization-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Navigation 2 plugins for rviz";
    license = with lib.licenses; [ asl20 ];
  };
}
