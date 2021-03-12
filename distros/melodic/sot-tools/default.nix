
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, sot-core }:
buildRosPackage {
  pname = "ros-melodic-sot-tools";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-tools-ros-release/archive/release/melodic/sot-tools/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "972af1477b8121140c5b5a19b0baec03fd4b66de6f1bc92a2e6c100deb891617";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ catkin dynamic-graph-python sot-core ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Miscellanous entities for the stack of tasks'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
