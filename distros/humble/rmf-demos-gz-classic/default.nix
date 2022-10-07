
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-plugins, joy, launch-xml, rmf-building-sim-gz-classic-plugins, rmf-demos, rmf-robot-sim-gz-classic-plugins, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-gz-classic";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_gz_classic/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a45af7b8112dd820138ff5b51f8f3171aed706f929711e4c6816e31ec83b33e8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-plugins joy launch-xml rmf-building-sim-gz-classic-plugins rmf-demos rmf-robot-sim-gz-classic-plugins teleop-twist-joy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files for RMF demos using the Gazebo-classic simulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
