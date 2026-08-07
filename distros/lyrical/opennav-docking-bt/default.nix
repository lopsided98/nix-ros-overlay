
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, behaviortree-cpp, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-ros-common, nav2-util, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-lyrical-opennav-docking-bt";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/opennav_docking_bt/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "c8ec27907f821b554b670adf8058163ce0d7497fe603e237351e7706bcf04637";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros behaviortree-cpp geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-ros-common nav2-util rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of BT nodes and XMLs for docking";
    license = with lib.licenses; [ asl20 ];
  };
}
