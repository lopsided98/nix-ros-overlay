
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, eigen, geometry-msgs, graphicsmagick, launch, launch-ros, launch-testing, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-ros-common, nav2-util, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-ros, util-linux, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-nav2-map-server";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_map_server/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "2245c86b59bf7d73fcd8489339ba305959e3cf8f5bda1c19ec1028882ab1bb07";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ backward-ros geometry-msgs graphicsmagick launch-ros lifecycle-msgs nav-msgs nav2-msgs nav2-ros-common nav2-util rclcpp rclcpp-lifecycle std-msgs tf2 tf2-ros util-linux yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Refactored map server for ROS2 Navigation";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
