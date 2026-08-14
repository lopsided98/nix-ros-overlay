
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, launch-testing-ament-cmake, nav2-common, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, point-cloud-transport, point-cloud-transport-plugins, rclcpp, rclcpp-components, rclcpp-lifecycle, rosgraph-msgs, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-collision-monitor";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_collision_monitor/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "5432897d0a2899114fe2f287e1e87bce96297f4cc1cc4cd9dc6bd56212df1bc9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common launch-testing-ament-cmake rosgraph-msgs ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util point-cloud-transport point-cloud-transport-plugins rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Collision Monitor";
    license = with lib.licenses; [ asl20 ];
  };
}
