
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, graphicsmagick, launch, launch-ros, launch-testing, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-lifecycle, std-msgs, tf2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-nav2-map-server";
  version = "1.2.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_map_server/1.2.10-1.tar.gz";
    name = "1.2.10-1.tar.gz";
    sha256 = "e033d3a6e5808b9694c844ce4b535377e8889bc8e8db9015c6c9c9bd9a692d3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ graphicsmagick launch-ros launch-testing nav-msgs nav2-msgs nav2-util rclcpp rclcpp-lifecycle std-msgs tf2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Refactored map server for ROS2 Navigation";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
