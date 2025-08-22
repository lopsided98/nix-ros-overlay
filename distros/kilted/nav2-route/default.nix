
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, launch, launch-testing, nanoflann, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, nlohmann_json, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-nav2-route";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_route/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "2e13c1152de22e1329afdc3451716aad54458c942915a1615cc52269bbfdeadd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ angles geometry-msgs nanoflann nav-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-util nlohmann_json pluginlib rclcpp rclcpp-lifecycle std-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Route Graph planner to compliment the Planner Server";
    license = with lib.licenses; [ asl20 ];
  };
}
