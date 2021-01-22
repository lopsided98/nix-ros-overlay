
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, genpy, roscpp-serialization, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-kinetic-message-runtime";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/message_runtime-release/archive/release/kinetic/message_runtime/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "9e29a95de191b68b2a6734663ff4eff585f7c8ef70cbc8e3b1e04c9f05f00d32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpp-common genpy roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the run-time dependencies for language bindings of messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
