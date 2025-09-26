
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, eigen, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, nlohmann_json, ompl, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-nav2-smac-planner";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_smac_planner/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "4706f3cd45bb8ca7b1169dab5d8bc9e0a47b8418f1f35ffe88af340ce13e18e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp angles eigen geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-util nlohmann_json ompl pluginlib rcl-interfaces rclcpp rclcpp-lifecycle tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Smac global planning plugin: A*, Hybrid-A*, State Lattice";
    license = with lib.licenses; [ asl20 ];
  };
}
