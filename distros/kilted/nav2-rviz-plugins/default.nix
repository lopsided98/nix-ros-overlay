
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-common, nav2-lifecycle-manager, nav2-msgs, nav2-route, nav2-util, pluginlib, qt5, rclcpp, rclcpp-action, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2-geometry-msgs, visualization-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-nav2-rviz-plugins";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_rviz_plugins/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "923e41635da692f158e92559fb4e3f743fcb98a7913014181fc332e60aeffaab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs nav-msgs nav2-lifecycle-manager nav2-msgs nav2-route nav2-util pluginlib qt5.qtbase rclcpp rclcpp-action rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering std-msgs tf2-geometry-msgs visualization-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Navigation 2 plugins for rviz";
    license = with lib.licenses; [ asl20 ];
  };
}
