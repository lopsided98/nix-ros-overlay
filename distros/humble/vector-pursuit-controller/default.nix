
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-vector-pursuit-controller";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vector_pursuit_controller-release/archive/release/humble/vector_pursuit_controller/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ef5580947c11f7a39975ee9ca7cbbbfe5b5e3939ddbb2ca723258abd2f2b5942";
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
