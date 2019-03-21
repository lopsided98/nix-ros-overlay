
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cpp-common, roscpp-traits, catkin, rostime, roscpp-serialization, genpy }:
buildRosPackage {
  pname = "ros-melodic-message-runtime";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/message_runtime-release/archive/release/melodic/message_runtime/0.4.12-0.tar.gz;
    sha256 = "70669611054c91c2d65ae94d5e2474198970929338cbb76411cb560902b1c800";
  };

  propagatedBuildInputs = [ genpy cpp-common roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the run-time dependencies for language bindings of messages.'';
    #license = lib.licenses.BSD;
  };
}
