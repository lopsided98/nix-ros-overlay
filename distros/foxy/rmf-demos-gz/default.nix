
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-plugins, joy, launch-xml, rmf-building-sim-gazebo-plugins, rmf-demos, rmf-robot-sim-gazebo-plugins, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-foxy-rmf-demos-gz";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/foxy/rmf_demos_gz/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "c17d0b8bcf7adf37d167bd3fcc10feec306f1af12699510913ea64b8e222db35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-plugins joy launch-xml rmf-building-sim-gazebo-plugins rmf-demos rmf-robot-sim-gazebo-plugins teleop-twist-joy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files for RMF demos using the Gazebo simulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
