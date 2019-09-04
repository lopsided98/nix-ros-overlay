
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, costmap-queue, nav2-common, nav-2d-msgs, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, nav2-util, rclcpp, angles, nav-2d-utils, dwb-core, pluginlib, ament-lint-common, launch-testing, sensor-msgs, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-dwb-critics";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_critics/0.1.7-0.tar.gz;
    sha256 = "0e3089d57956c995c412f80fd13e621dc44777f3d006c4eaf0128f694e746987";
  };

  buildInputs = [ pluginlib sensor-msgs costmap-queue nav2-util nav2-common nav-2d-utils rclcpp nav2-costmap-2d angles dwb-core nav-2d-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ pluginlib sensor-msgs costmap-queue nav2-util nav-2d-utils rclcpp nav2-costmap-2d angles dwb-core nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The dwb_critics package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
