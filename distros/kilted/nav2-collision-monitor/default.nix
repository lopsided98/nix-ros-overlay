
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-costmap-2d, nav2-msgs, nav2-util, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-nav2-collision-monitor";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_collision_monitor/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "a92dbe7079bab3b1c621349d6fc909d73efec581c3bacc60d277c9dc58870756";
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
