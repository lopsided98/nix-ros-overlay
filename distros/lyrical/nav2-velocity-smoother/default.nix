
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav-msgs, nav2-common, nav2-ros-common, nav2-util, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-nav2-velocity-smoother";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_velocity_smoother/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "dfc4d3fdda97ca14ea6054e170c89da8e8a122b43033f163d04b94e6b53287bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common nav-msgs ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav2-ros-common nav2-util rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2's Output velocity smoother";
    license = with lib.licenses; [ asl20 ];
  };
}
