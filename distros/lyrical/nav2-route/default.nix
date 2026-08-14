
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, launch, launch-testing, nanoflann, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, nlohmann_json, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-route";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_route/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "a9b01279eb2b1b7f501337924b0d2a0917a3644628abb67e88f7c40f6a1e3e9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ angles backward-ros geometry-msgs nanoflann nav-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util nlohmann_json pluginlib rclcpp rclcpp-lifecycle std-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Route Graph planner to compliment the Planner Server";
    license = with lib.licenses; [ asl20 ];
  };
}
