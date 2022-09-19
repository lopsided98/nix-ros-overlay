
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy, launch-xml, rmf-building-sim-gazebo-plugins, rmf-demos, rmf-robot-sim-gazebo-plugins, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-gz";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_gz/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "ad56607cfc9d6dff8e6167c9b7a9390441c7967383c8bf122fef777cd38c69e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joy launch-xml rmf-building-sim-gazebo-plugins rmf-demos rmf-robot-sim-gazebo-plugins teleop-twist-joy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files for RMF demos using the Gazebo simulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
