
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, dynamic-graph, eigen, eigenpy, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph-python";
  version = "4.0.10-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-python-ros-release/archive/release/melodic/dynamic-graph-python/4.0.10-1.tar.gz";
    name = "4.0.10-1.tar.gz";
    sha256 = "327fc9150c392aa5663dc9a3bb1b5bed6351691f559260fd4cafce1d6c1efb51";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin dynamic-graph eigen eigenpy python pythonPackages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Dynamic graph library Python bindings'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
