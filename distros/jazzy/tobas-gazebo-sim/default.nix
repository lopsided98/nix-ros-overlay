
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-sim";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_sim/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "0b1fa792af48166067f8407b96d103499cd04d50384ac996d4bd7247cfc7d3a1";
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
