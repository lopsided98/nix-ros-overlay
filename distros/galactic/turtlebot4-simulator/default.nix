
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-ignition-bringup, turtlebot4-ignition-gui-plugins, turtlebot4-ignition-toolbox }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-simulator";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/galactic/turtlebot4_simulator/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "11de2a7c9481102234c252e0166551791c2bf8d2dd0cee1abf9714b4dc99c044";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ turtlebot4-ignition-bringup turtlebot4-ignition-gui-plugins turtlebot4-ignition-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}
