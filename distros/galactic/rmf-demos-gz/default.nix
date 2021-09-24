
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy, launch-xml, rmf-building-sim-gazebo-plugins, rmf-demos, rmf-robot-sim-gazebo-plugins, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos-gz";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos_gz/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "128f8116b657b980c51dc383163926b67ffd7500e476795331d3c48513f40880";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joy launch-xml rmf-building-sim-gazebo-plugins rmf-demos rmf-robot-sim-gazebo-plugins teleop-twist-joy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files for RMF demos using the Gazebo simulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
