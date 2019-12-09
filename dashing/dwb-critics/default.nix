
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, costmap-queue, ament-cmake, nav-2d-msgs, nav2-util, nav-2d-utils, ament-lint-auto, sensor-msgs, launch-testing, ament-lint-common, nav2-common, rclcpp, ament-cmake-gtest, nav2-costmap-2d, angles, dwb-core, launch, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-dashing-dwb-critics";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_critics/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "e06227e217e3dffcb9c9ab25d3b771b90e49bf8d9bfc2e73ca4b492a2653d804";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs geometry-msgs dwb-core pluginlib nav2-costmap-2d costmap-queue nav2-common nav-2d-msgs angles nav2-util rclcpp nav-2d-utils ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dwb-core pluginlib nav2-costmap-2d costmap-queue nav-2d-msgs angles nav2-util rclcpp nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The dwb_critics package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
