
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-sim-gz-plugins, rmf-demos, rmf-robot-sim-gz-plugins, ros-gz-bridge, ros-gz-sim, ros2launch, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-gz";
  version = "2.8.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_gz/2.8.2-3.tar.gz";
    name = "2.8.2-3.tar.gz";
    sha256 = "b55eb1a10a55646ec93707b302a5409b5d09563f74a6272d82a28b8ae5314ee6";
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
