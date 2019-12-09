
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, tf2, nav2-util, nav2-msgs, nav-msgs, ament-lint-auto, rclcpp-lifecycle, launch-testing, nav2-behavior-tree, ament-lint-common, tf2-geometry-msgs, nav2-common, rclcpp, ament-cmake-gtest, nav2-costmap-2d, rclcpp-action, launch, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-dashing-nav2-recoveries";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_recoveries/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "7d6ed6af724874073711cf16dd98c1d6a95cccdf8ad32f54aaf51b9598224bf8";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action rclcpp-lifecycle geometry-msgs nav-msgs nav2-behavior-tree nav2-costmap-2d tf2-geometry-msgs nav2-common tf2 nav2-util rclcpp nav2-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-action rclcpp-lifecycle geometry-msgs nav-msgs nav2-behavior-tree nav2-costmap-2d nav2-util rclcpp nav2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
