
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, eigen, geometry-msgs, graphicsmagick, launch, launch-ros, launch-testing, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-ros-common, nav2-util, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-ros, util-linux, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-nav2-map-server";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_map_server/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "0c8486dffaa2be3d0c1830257472c5ec9d7a1b5d55f674c8f5d8c602fcd8b9aa";
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
