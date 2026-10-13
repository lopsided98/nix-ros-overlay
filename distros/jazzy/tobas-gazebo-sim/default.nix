
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-sim";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_sim/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "d38164e76638c3112b9485d3883df846e460bc7e6eadcec61d4774808e8c9546";
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
