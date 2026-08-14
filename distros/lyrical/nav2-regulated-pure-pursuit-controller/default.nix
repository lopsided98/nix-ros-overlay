
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-regulated-pure-pursuit-controller";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_regulated_pure_pursuit_controller/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "173e98d82006ba5aee999b2245a563acff54f4d7d2b9b5f11a20ae1646a9d9bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common nav2-controller tf2-geometry-msgs ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util pluginlib rcl-interfaces rclcpp rclcpp-lifecycle std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Regulated Pure Pursuit Controller";
    license = with lib.licenses; [ asl20 ];
  };
}
