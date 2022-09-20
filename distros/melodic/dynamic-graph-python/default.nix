
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, eigenpy, git }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph-python";
  version = "4.0.9-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/melodic/dynamic-graph-python/4.0.9-1.tar.gz";
    name = "4.0.9-1.tar.gz";
    sha256 = "757d3f4fbae33009578fe7e6c6cd1eec6f49a2d03220876e2f4b0598c0356bb7";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin dynamic-graph eigenpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library Python bindings'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
