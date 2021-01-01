
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, roscpp-serialization, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-kinetic-roscpp-core";
  version = "0.6.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/kinetic/roscpp_core/0.6.11-0.tar.gz";
    name = "0.6.11-0.tar.gz";
    sha256 = "ebbb8eadae39bdc0654c686dc832ab292e8a71121f35cf753332de43c1c5d942";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpp-common roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Underlying data libraries for roscpp messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
