
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rqt-robot-monitor, rviz2, turtlebot4-description }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-viz";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_desktop-release/archive/release/jazzy/turtlebot4_viz/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "b318a6eb1d21ee156b07f9a5795835c504dea41d189358b692640760e5fdaaa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rqt-robot-monitor rviz2 turtlebot4-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Visualization launchers and helpers for Turtlebot4";
    license = with lib.licenses; [ asl20 ];
  };
}
