
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-vector-pursuit-controller";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vector_pursuit_controller-release/archive/release/humble/vector_pursuit_controller/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "c2106d0975b5392fac32db8b2a0368b1e9b93cd7889fd84ac4e152249f77ba3c";
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
