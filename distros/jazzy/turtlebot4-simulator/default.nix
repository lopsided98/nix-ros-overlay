
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-gz-bringup, turtlebot4-gz-gui-plugins, turtlebot4-gz-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-simulator";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/jazzy/turtlebot4_simulator/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a14c9b19854b0e87e5626530c1bf8a4154c13dc5c12daaeac61503829956797b";
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
