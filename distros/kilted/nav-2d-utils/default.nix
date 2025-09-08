
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-2d-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav-2d-utils";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav_2d_utils/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "f81e26c2d4835b939999b1e25422b8e73ba073a4d252392dabf6cc786e35ddeb";
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
