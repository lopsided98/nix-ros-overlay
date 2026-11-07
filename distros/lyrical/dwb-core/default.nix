
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-ros-common, nav2-util, pluginlib, rclcpp, sensor-msgs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-dwb-core";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/dwb_core/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "ce45a64c68995b14e976fee6bb1cb511970b8aa77ab668ba6f1ddb1576f5310f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros builtin-interfaces dwb-msgs geometry-msgs nav-2d-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2-ros-common nav2-util pluginlib rclcpp sensor-msgs tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DWB core interfaces package";
    license = with lib.licenses; [ bsd3 ];
  };
}
