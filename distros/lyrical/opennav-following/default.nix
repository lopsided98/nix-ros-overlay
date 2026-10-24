
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav2-common, nav2-msgs, nav2-ros-common, nav2-util, opennav-docking, opennav-docking-core, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-opennav-following";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/opennav_following/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "ff3f0ded4283b18843512cb6ab272e2399cfd5225e4c79c1b6d2deeedf8c3fd7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-msgs nav2-ros-common nav2-util opennav-docking opennav-docking-core rclcpp rclcpp-components rclcpp-lifecycle tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Task Server for dynamic following object";
    license = with lib.licenses; [ asl20 ];
  };
}
