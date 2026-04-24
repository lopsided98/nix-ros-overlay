
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-sim-gz-plugins, rmf-demos, rmf-robot-sim-gz-plugins, ros-gz-bridge, ros-gz-sim, ros2launch, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-gz";
  version = "2.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_gz/2.8.2-2.tar.gz";
    name = "2.8.2-2.tar.gz";
    sha256 = "2337b039f3cad92fed31a9552b6e67f85c97d07f2a6ea422396cef7864857129";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml rmf-building-sim-gz-plugins rmf-demos rmf-robot-sim-gz-plugins ros-gz-bridge ros-gz-sim ros2launch teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch files for RMF demos using the Gazebo simulator";
    license = with lib.licenses; [ asl20 ];
  };
}
