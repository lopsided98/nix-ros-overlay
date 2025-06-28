
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-costmap-2d, nav2-msgs, nav2-util, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-nav2-collision-monitor";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_collision_monitor/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "34feffac9e8395182a76a245ba47f0a8c36c27f3076d33c1c85054a15cbcf22d";
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
