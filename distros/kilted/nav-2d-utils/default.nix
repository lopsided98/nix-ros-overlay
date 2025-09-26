
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-2d-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav-2d-utils";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav_2d_utils/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "ce8ea930caf0f9498f7bad0d660c136153362b1f0184899206cc0beff5c29d85";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-msgs nav2-msgs nav2-util rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A handful of useful utility functions for nav_2d packages.";
    license = with lib.licenses; [ bsd3 ];
  };
}
