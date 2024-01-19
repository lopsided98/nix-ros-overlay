
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph";
  version = "4.4.3-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-ros-release/archive/release/noetic/dynamic-graph/4.4.3-2.tar.gz";
    name = "4.4.3-2.tar.gz";
    sha256 = "ad0e881198a573563b54cfa2c496ab022e3e67e9e14ba6da08cbf156c29f5715";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
