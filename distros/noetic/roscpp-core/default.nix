
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, roscpp-serialization, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-noetic-roscpp-core";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/roscpp_core/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "e8cfe369833f0bb43c0d17f5a5bac1a90b4253c258efa763e1c20c457c8a9e07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpp-common roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Underlying data libraries for roscpp messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
