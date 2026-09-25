
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-tools";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_tools/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "7a9268803f2bc74288129f90b57c1e3ff2fc2b99a3deb1b4fb0da38fd88b23ee";
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
