
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-gz-bringup, turtlebot4-gz-gui-plugins, turtlebot4-gz-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-simulator";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/jazzy/turtlebot4_simulator/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "766fa235831f5894768824fe7f25a83db5a7c02e4e2daecd2c6971f6e3e30b14";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-gz-bringup turtlebot4-gz-gui-plugins turtlebot4-gz-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for Turtlebot4 simulations";
    license = with lib.licenses; [ asl20 ];
  };
}
