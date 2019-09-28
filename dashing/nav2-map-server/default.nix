
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, ament-cmake-pytest, ament-cmake, rclcpp-lifecycle, launch-ros, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-util, graphicsmagick, nav2-common, tf2, nav-msgs, rclcpp, std-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-map-server";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_map_server/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "c124e304059b1ba7d2a4a8e05310b60b4e7b5509507ba6817621b84c5388a11e";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor rclcpp-lifecycle launch-ros launch-testing nav2-util graphicsmagick nav2-common tf2 nav-msgs rclcpp std-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ yaml-cpp-vendor rclcpp-lifecycle launch-ros launch-testing nav2-util graphicsmagick tf2 nav-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
