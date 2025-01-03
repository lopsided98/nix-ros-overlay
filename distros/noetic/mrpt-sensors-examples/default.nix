
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-generic-sensor }:
buildRosPackage {
  pname = "ros-noetic-mrpt-sensors-examples";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_sensors_examples/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "3288cce064049a7d2b4d41edf8d26a5ee9da3c58d5fc83614128b5a48c0abc01";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-generic-sensor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Example launch and configuration files for mrpt_sensors nodes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
