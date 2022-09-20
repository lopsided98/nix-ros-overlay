
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common }:
buildRosPackage {
  pname = "ros-noetic-rostime";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/rostime/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "7111aa9956e9e8ec623edd54c59b344c6488b65aed8b1d768a5a7a55b467c47c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time and Duration implementations for C++ libraries, including roscpp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
