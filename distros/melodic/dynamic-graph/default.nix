
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-melodic-dynamic-graph";
  version = "4.4.3-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/dynamic-graph-ros-release/archive/release/melodic/dynamic-graph/4.4.3-2.tar.gz";
    name = "4.4.3-2.tar.gz";
    sha256 = "682d9e824e906f919778385d2244548da52656b31b1f34f9704c859c152fd001";
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
