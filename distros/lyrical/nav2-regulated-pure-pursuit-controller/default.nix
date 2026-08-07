
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-ros-common, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-regulated-pure-pursuit-controller";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_regulated_pure_pursuit_controller/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "de8f5e1161baec2e73e0f626f2ebf08ce5eafc38410274d84fe1aab99ceff6e3";
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
