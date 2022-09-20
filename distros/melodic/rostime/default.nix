
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common }:
buildRosPackage {
  pname = "ros-melodic-rostime";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/rostime/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "f6f308e9a4fdd5823498141e265bbe03b46f5a2233eab8ede343c3dc6eb2aee8";
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
