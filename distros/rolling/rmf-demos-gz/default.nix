
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor, launch-xml, rmf-building-sim-gz-plugins, rmf-demos, rmf-robot-sim-gz-plugins, ros-gz-bridge, ros2launch, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-gz";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_gz/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "a5d77746bf4185ceafdb0d22852b050b9a5f2a5d17437f79fa569fb998bf11cc";
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
