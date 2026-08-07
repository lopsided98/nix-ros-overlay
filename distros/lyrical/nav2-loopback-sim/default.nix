
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav-msgs, nav2-common, nav2-ros-common, nav2-util, rcl-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, rosgraph-msgs, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-loopback-sim";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_loopback_sim/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "e83626c77149707f31c413901c441c1695c590670dfb338dcdc65d595055efea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav-msgs nav2-ros-common nav2-util rcl-interfaces rclcpp rclcpp-components rclcpp-lifecycle rosgraph-msgs sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A loopback simulator to replace physics simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
