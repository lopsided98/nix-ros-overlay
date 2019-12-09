
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp-serialization, catkin, cpp-common, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-kinetic-roscpp-core";
  version = "0.6.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/kinetic/roscpp_core/0.6.11-0.tar.gz";
    name = "0.6.11-0.tar.gz";
    sha256 = "ebbb8eadae39bdc0654c686dc832ab292e8a71121f35cf753332de43c1c5d942";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp-serialization cpp-common roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Underlying data libraries for roscpp messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
