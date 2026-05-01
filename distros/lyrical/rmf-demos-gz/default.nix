
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-sim-gz-plugins, rmf-demos, rmf-robot-sim-gz-plugins, ros-gz-bridge, ros-gz-sim, ros2launch, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-lyrical-rmf-demos-gz";
  version = "2.8.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/lyrical/rmf_demos_gz/2.8.2-4.tar.gz";
    name = "2.8.2-4.tar.gz";
    sha256 = "af052f0411e64b7626c8c95002ddf5ef7b659c36a8b94d509684503de93559ca";
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
