
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common }:
buildRosPackage {
  pname = "ros-melodic-rostime";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/rostime/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "0aedc8397fb212ed0e019f63d739508a0b009e1a22943a86f8e4be20769b5157";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Time and Duration implementations for C++ libraries, including roscpp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
