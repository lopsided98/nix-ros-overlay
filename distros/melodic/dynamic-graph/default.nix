
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph";
  version = "4.3.4-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-ros-release/archive/release/melodic/dynamic-graph/4.3.4-1.tar.gz";
    name = "4.3.4-1.tar.gz";
    sha256 = "621521f87a4002ffae23a5a7555d17d637b68b77c5dd1d5cdf4d181b8f71e720";
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
