
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-regulated-pure-pursuit-controller";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_regulated_pure_pursuit_controller/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "8c033e7b4625551323b2014f81a89aa4a221fd2f53d5b41d2b68c934506e1011";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common tf2-geometry-msgs ];
  propagatedBuildInputs = [ angles geometry-msgs nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rcl-interfaces rclcpp rclcpp-lifecycle std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Regulated Pure Pursuit Controller";
    license = with lib.licenses; [ asl20 ];
  };
}
