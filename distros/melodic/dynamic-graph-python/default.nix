
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, eigenpy, git }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph-python";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/melodic/dynamic-graph-python/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "158a2774643b8697772ec940d99383d845d006fea9cb7cc6a7a5699593b9f66c";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin dynamic-graph eigenpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library Python bindings'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
