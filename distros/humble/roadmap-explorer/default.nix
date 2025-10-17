
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, geometry-msgs, launch-testing, launch-testing-ament-cmake, nav2-behavior-tree, nav2-costmap-2d, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-theta-star-planner, nav2-util, nlohmann_json, pcl-ros, pluginlib, rclcpp, rclcpp-action, roadmap-explorer-msgs, ros-environment, rosidl-default-generators, sensor-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-roadmap-explorer";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roadmap_explorer-release/archive/release/humble/roadmap_explorer/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "52ec71984c766304401399d83b0a125c86386735f631ecbd813fbb5647baabb4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ action-msgs ament-cmake boost geometry-msgs nav2-behavior-tree nav2-costmap-2d nav2-map-server nav2-msgs nav2-navfn-planner nav2-theta-star-planner nav2-util nlohmann_json pcl-ros pluginlib rclcpp rclcpp-action roadmap-explorer-msgs rosidl-default-generators sensor-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The roadmap explorer package";
    license = with lib.licenses; [ asl20 ];
  };
}
