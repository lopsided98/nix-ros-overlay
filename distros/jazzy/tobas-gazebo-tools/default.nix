
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-tools";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_tools/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "9700d7f959c90b553dcf6ab3173ce4014538335f7bf3a881c0eaa310e388fdf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-sim-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utility nodes and tools for controlling and inspecting Tobas Gazebo simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
