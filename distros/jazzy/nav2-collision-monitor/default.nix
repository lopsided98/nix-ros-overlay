
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-costmap-2d, nav2-msgs, nav2-util, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2-collision-monitor";
  version = "1.3.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_collision_monitor/1.3.7-1.tar.gz";
    name = "1.3.7-1.tar.gz";
    sha256 = "8a7e8d4f7932de163a7744cf92bccde60971c18d3fef0d462aad97378740389f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-common nav2-costmap-2d nav2-msgs nav2-util rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Collision Monitor";
    license = with lib.licenses; [ asl20 ];
  };
}
