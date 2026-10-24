
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-regulated-pure-pursuit-controller, nav2-ros-common, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-rotation-shim-controller";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_rotation_shim_controller/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "8c2769ff957900b918d71c5a4b4b4b86023a757ee83fb6104a9e3083a9f8dd92";
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
