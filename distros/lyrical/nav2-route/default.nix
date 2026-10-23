
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, launch, launch-testing, nanoflann-vendor, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, nlohmann_json, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-route";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_route/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "7fadbf36d7a4c2b7257ccfd00a017b3442217678ab367021dfbaf1cf3f7beee8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ angles backward-ros geometry-msgs nanoflann-vendor nav-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util nlohmann_json pluginlib rclcpp rclcpp-lifecycle std-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Route Graph planner to compliment the Planner Server";
    license = with lib.licenses; [ asl20 ];
  };
}
