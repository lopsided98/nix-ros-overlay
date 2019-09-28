
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, rclcpp-action, nav2-behavior-tree, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, nav2-util, rclcpp, rclcpp-lifecycle, tf2-geometry-msgs, nav-msgs, ament-lint-common, launch-testing, nav2-msgs, tf2, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-recoveries";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_recoveries/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "3162750fd0a91d19aa82ec006addaa96ca9f408a37ddb37928b46bd253336cb4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle tf2-geometry-msgs nav2-msgs nav2-util nav2-common tf2 nav-msgs rclcpp-action nav2-costmap-2d rclcpp nav2-behavior-tree geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle nav2-msgs nav2-util nav-msgs rclcpp-action nav2-costmap-2d rclcpp nav2-behavior-tree geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
