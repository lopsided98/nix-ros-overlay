
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, eigen, eigenpy, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph-python";
  version = "4.0.11-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/noetic/dynamic-graph-python/4.0.11-1.tar.gz";
    name = "4.0.11-1.tar.gz";
    sha256 = "d4e0d899e0c0507985c92f3d9c8dc253eb6ba71935c5f85cc4bc40276cc027e7";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin dynamic-graph eigen eigenpy python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library Python bindings'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
