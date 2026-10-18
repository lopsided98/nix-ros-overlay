
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-sim";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_sim/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "9a19ae7a8cf8216ad9e051c67b2fcf0d3e94d1dfb74a94b004145c03fa3487bb";
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
