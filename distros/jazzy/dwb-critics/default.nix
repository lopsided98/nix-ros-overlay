
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, costmap-queue, dwb-core, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dwb-critics";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/dwb_critics/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "23f303b6344e208d7780395a4e7ec06cc675e3a7f4432d3bfe01d41b9731725e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles costmap-queue dwb-core geometry-msgs nav-2d-msgs nav-2d-utils nav2-costmap-2d nav2-util pluginlib rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The dwb_critics package";
    license = with lib.licenses; [ bsd3 ];
  };
}
