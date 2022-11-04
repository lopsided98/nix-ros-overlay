
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rqt-robot-monitor, rviz2, turtlebot4-description }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-viz";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_desktop-release/archive/release/galactic/turtlebot4_viz/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "bd78e70e6c1b972c95d5d58c9d71f59b1030edde17e17602802fe420ab057baa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rqt-robot-monitor rviz2 turtlebot4-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Visualization launchers and helpers for Turtlebot4'';
    license = with lib.licenses; [ asl20 ];
  };
}
