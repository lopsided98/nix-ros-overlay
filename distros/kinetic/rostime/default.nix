
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common }:
buildRosPackage {
  pname = "ros-kinetic-rostime";
  version = "0.6.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/kinetic/rostime/0.6.11-0.tar.gz";
    name = "0.6.11-0.tar.gz";
    sha256 = "40f47931b33a02d4740bebf2d9068911916d2ca13e3b78ea9e52164dade19a60";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time and Duration implementations for C++ libraries, including roscpp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
