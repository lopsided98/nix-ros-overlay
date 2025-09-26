
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-dwb-core";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/dwb_core/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "87e8283b6fe2e796b819bf9bb3390a55fa248035f5890d94029e0ebc71f894d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces dwb-msgs geometry-msgs nav-2d-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib rclcpp rclcpp-lifecycle sensor-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DWB core interfaces package";
    license = with lib.licenses; [ bsd3 ];
  };
}
