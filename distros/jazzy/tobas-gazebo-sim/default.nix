
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-sim";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_sim/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "07c5a6736db0ba485dd10a3614d5b62737a69cfe2fbdbb2208afd1d5c82d1bd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-sim-vendor ros-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo worlds, models, resources, and launch files for Tobas simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
