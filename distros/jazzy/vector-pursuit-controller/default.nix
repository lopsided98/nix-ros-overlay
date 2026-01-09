
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-vector-pursuit-controller";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vector_pursuit_controller-release/archive/release/jazzy/vector_pursuit_controller/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "ddf4e4f9e5a15feb79bd12305a98905809668b2dfcc9bd16c2a1b9e8bcf790ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common nav-msgs nav2-controller nav2-core nav2-costmap-2d nav2-util ];
  propagatedBuildInputs = [ geometry-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vector Pursuit Controller";
    license = with lib.licenses; [ asl20 ];
  };
}
