
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-costmap-2d, nav2-msgs, nav2-util, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-nav2-collision-monitor";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_collision_monitor/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "25441cd28253d7d725799df99ca3468dd410ff1068d88352c974f937dc6f3929";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-costmap-2d nav2-msgs nav2-util rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Collision Monitor";
    license = with lib.licenses; [ asl20 ];
  };
}
