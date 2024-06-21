
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor, launch-xml, rmf-building-sim-gz-plugins, rmf-demos, rmf-robot-sim-gz-plugins, ros-gz-bridge, ros2launch, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-gz";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_gz/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "bf17d28ae67d2237e8e4b7e37b56ffe04fa49369034d42943914f8bdd330531c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-sim-vendor launch-xml rmf-building-sim-gz-plugins rmf-demos rmf-robot-sim-gz-plugins ros-gz-bridge ros2launch teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch files for RMF demos using the Gazebo simulator";
    license = with lib.licenses; [ asl20 ];
  };
}
