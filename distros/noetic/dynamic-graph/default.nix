
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-noetic-dynamic-graph";
  version = "4.3.3-r4";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-ros-release/archive/release/noetic/dynamic-graph/4.3.3-4.tar.gz";
    name = "4.3.3-4.tar.gz";
    sha256 = "3e27d8b75c9a57bfa976987ebe9db9f12796d4d3971a7f53767cafc6e1f020f1";
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
