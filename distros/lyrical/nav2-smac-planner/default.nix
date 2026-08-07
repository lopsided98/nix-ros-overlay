
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, backward-ros, eigen, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-ros-common, nav2-util, nlohmann_json, ompl, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-smac-planner";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_smac_planner/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "0d3f1707d8a0d86e8dcadbbb2be7cc65a9c411f9fdc00645694775674b12e5dd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles eigen nav2-common nlohmann_json ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-ros-common nav2-util ompl pluginlib rcl-interfaces rclcpp rclcpp-lifecycle tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Smac global planning plugin: A*, Hybrid-A*, State Lattice";
    license = with lib.licenses; [ asl20 ];
  };
}
