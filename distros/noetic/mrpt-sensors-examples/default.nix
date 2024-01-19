
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-generic-sensor }:
buildRosPackage {
  pname = "ros-noetic-mrpt-sensors-examples";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_sensors_examples/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "04d111842bf17e49a60f89a550ff021b595989ef81dd6ab14c7dae17c81919b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-generic-sensor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example launch and configuration files for mrpt_sensors nodes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
