
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph";
  version = "4.2.1-r4";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-ros-release/archive/release/melodic/dynamic-graph/4.2.1-4.tar.gz";
    name = "4.2.1-4.tar.gz";
    sha256 = "e711b2f736b5a53a9e90099a9001de517ee316236fd09e4665905fcbed869770";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
