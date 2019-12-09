
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, ament-cmake, nav-2d-msgs, nav-msgs, nav-2d-utils, ament-lint-auto, sensor-msgs, launch-testing, ament-lint-common, nav2-common, dwb-msgs, rclcpp, ament-cmake-gtest, tf2-ros, std-msgs, nav2-costmap-2d, launch, visualization-msgs, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-crystal-dwb-core";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_core/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "eafb4f87e73d2f5c1d33a113563b09617903c56fcb721e661c54ec7632635693";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs geometry-msgs pluginlib std-msgs nav2-costmap-2d nav2-common visualization-msgs nav-2d-msgs dwb-msgs rclcpp nav-msgs nav-2d-utils tf2-ros ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs std-msgs pluginlib nav2-costmap-2d dwb-msgs rclcpp nav-msgs nav-2d-utils tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
