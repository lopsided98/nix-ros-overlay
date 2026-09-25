
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-sim";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_sim/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "28c98582aa7397f48e4c9649ded5d5ca650c11ca1f96c78da97de0d04047f02b";
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
