
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-regulated-pure-pursuit-controller, nav2-ros-common, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-rotation-shim-controller";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_rotation_shim_controller/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "4489d02838f70426e0331f12022e6a8a9a246053bd30b1801ab1531d374dcdd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common nav2-controller nav2-regulated-pure-pursuit-controller ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav2-controller nav2-core nav2-costmap-2d nav2-msgs nav2-ros-common nav2-util pluginlib rcl-interfaces rclcpp rclcpp-lifecycle tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Rotation Shim Controller";
    license = with lib.licenses; [ asl20 ];
  };
}
