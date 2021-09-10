
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-sim-ignition-plugins, rmf-demos, rmf-robot-sim-ignition-plugins, ros-ign-bridge, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos-ign";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos_ign/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "bc782fc46300e06c723790b0825144ac6399106fb2b1d17cbab32317a8c615e4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch-xml rmf-building-sim-ignition-plugins rmf-demos rmf-robot-sim-ignition-plugins ros-ign-bridge teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files for RMF demos using the Ignition simulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
