
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-melodic-eiquadprog";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eiquadprog-ros-release/archive/release/melodic/eiquadprog/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "5e30b47aad8598eeda3301ef6a834392123d3a2f1c3ba9a112b32cc4844158ca";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eiquadprog a QP solver using active sets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
