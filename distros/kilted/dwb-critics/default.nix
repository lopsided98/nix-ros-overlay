
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, costmap-queue, dwb-core, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-costmap-2d, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-dwb-critics";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/dwb_critics/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "582fe46d655a70692b69003ef619dc34d069808818f4390dd524b66c604f3ef6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles costmap-queue dwb-core dwb-msgs geometry-msgs nav-2d-msgs nav-2d-utils nav2-costmap-2d nav2-util pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The dwb_critics package";
    license = with lib.licenses; [ bsd3 ];
  };
}
