
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, geometry-msgs, message-generation, message-runtime, mrpt-msgs, mrpt2, ros-environment, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-sensorlib";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_sensorlib/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "edc15bebbb79ff5afb2796909b5586c6702c235b03c8373cc8bd40ec8cf3176e";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime mrpt-msgs mrpt2 roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = "C++ library for the base generic MRPT sensor node";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
