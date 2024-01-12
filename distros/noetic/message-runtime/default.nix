
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, genpy, roscpp-serialization, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-noetic-message-runtime";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/message_runtime-release/archive/release/noetic/message_runtime/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "ed3ea8f62850d371e9f44aa764896b429b4016d3b278a760b9214bfb9d57dc35";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cpp-common genpy roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the run-time dependencies for language bindings of messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
