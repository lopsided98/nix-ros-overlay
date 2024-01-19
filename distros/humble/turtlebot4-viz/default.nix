
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rqt-robot-monitor, rviz2, turtlebot4-description }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-viz";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_desktop-release/archive/release/humble/turtlebot4_viz/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e62bc993634545381c503221cd9e2d8d4339cdb60623737302874403b0b521fc";
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
