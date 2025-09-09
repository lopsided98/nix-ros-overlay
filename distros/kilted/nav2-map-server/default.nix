
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, graphicsmagick, launch, launch-ros, launch-testing, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-lifecycle, std-msgs, tf2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-nav2-map-server";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_map_server/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "9327f54a32aa716aa31f9fcc0478fa9311aba62efe127574707537de3a278e95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ graphicsmagick launch-ros launch-testing lifecycle-msgs nav-msgs nav2-msgs nav2-util rclcpp rclcpp-lifecycle std-msgs tf2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Refactored map server for ROS2 Navigation";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
