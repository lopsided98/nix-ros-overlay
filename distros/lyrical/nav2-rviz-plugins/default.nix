
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libqt6statemachine6, _unresolved_qt6-scxml-dev, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav-msgs, nav2-common, nav2-lifecycle-manager, nav2-msgs, nav2-ros-common, nav2-route, nav2-util, pluginlib, qt6, rclcpp, rclcpp-action, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2-geometry-msgs, visualization-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-nav2-rviz-plugins";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_rviz_plugins/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "0954a569665160eebb8e4e87836a4f975636b9b8fc702eee20684c93c539f8cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ _unresolved_qt6-scxml-dev ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_libqt6statemachine6 backward-ros geometry-msgs nav-msgs nav2-lifecycle-manager nav2-msgs nav2-ros-common nav2-route nav2-util pluginlib qt6.qtbase rclcpp rclcpp-action rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering std-msgs tf2-geometry-msgs visualization-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Navigation 2 plugins for rviz";
    license = with lib.licenses; [ asl20 ];
  };
}
