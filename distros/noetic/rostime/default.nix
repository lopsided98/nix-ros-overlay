
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common }:
buildRosPackage {
  pname = "ros-noetic-rostime";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/rostime/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "85f9a8987b25140c89de123b434d19ab331b8d15524e54f7d849b66b1e148232";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time and Duration implementations for C++ libraries, including roscpp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
