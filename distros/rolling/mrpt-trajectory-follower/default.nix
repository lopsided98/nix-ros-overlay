
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-ros, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, launch-testing, launch-testing-ros, mrpt-containers, mrpt-libros-bridge, mrpt-maps, mrpt-math, mrpt-nav-interfaces, mrpt-path-planning-core, mrpt-system, mvsim, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, sensor-msgs-py, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-mrpt-trajectory-follower";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/rolling/mrpt_trajectory_follower/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "2e9486226cb4397c2e87955b4f262f7e2b33591a60605b8bb72be4ce25facb34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pytest ament-cmake-ros ament-cmake-xmllint ament-lint-auto launch-testing launch-testing-ros mvsim rclpy sensor-msgs-py ];
  propagatedBuildInputs = [ geometry-msgs mrpt-containers mrpt-libros-bridge mrpt-maps mrpt-math mrpt-nav-interfaces mrpt-path-planning-core mrpt-system nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that accurately follows a reference trajectory with minimal predictive safety, wrapping mpp::TrajectoryFollower";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
