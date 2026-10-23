
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, eigen, geometry-msgs, graphicsmagick, launch, launch-ros, launch-testing, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-ros-common, nav2-util, rclcpp, rclcpp-lifecycle, tf2, tf2-ros, util-linux, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-nav2-map-server";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_map_server/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "a23a413c68e6a03b361eb1c072c1fbbf090699ff89bfc7d9349cd473f68d9bce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ backward-ros geometry-msgs graphicsmagick launch-ros lifecycle-msgs nav-msgs nav2-msgs nav2-ros-common nav2-util rclcpp rclcpp-lifecycle tf2 tf2-ros util-linux yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Refactored map server for ROS2 Navigation";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
