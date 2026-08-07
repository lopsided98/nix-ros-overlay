
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, bond, bondcpp, builtin-interfaces, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-ros-common, pluginlib, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-util";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_util/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "9fd6b0ab4a21f15d26a920cf7a92dd29b3c450e8e9b79145d7decc9dc67701c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros bond bondcpp builtin-interfaces geometry-msgs lifecycle-msgs nav-msgs nav2-msgs nav2-ros-common pluginlib rcl-interfaces rclcpp rclcpp-action rclcpp-lifecycle std-msgs tf2 tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 utilities";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
