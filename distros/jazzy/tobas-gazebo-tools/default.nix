
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-tools";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_tools/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "473acdf323be8b98e8b61824e60d42345de0f545b05b6c901dc3edb6bc9a118d";
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
