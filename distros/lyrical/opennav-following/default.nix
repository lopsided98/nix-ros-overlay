
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav2-common, nav2-msgs, nav2-ros-common, nav2-util, opennav-docking, opennav-docking-core, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-opennav-following";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/opennav_following/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "6d5479fb38e2c2e31f1e67126380a8f9a083e8f204875f0526d41d7b28f957a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-msgs nav2-ros-common nav2-util opennav-docking opennav-docking-core rclcpp rclcpp-components rclcpp-lifecycle tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Task Server for dynamic following object";
    license = with lib.licenses; [ asl20 ];
  };
}
