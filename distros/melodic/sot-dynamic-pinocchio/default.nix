
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, gtest, pinocchio, sot-core, sot-tools }:
buildRosPackage {
  pname = "ros-melodic-sot-dynamic-pinocchio";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-dynamic-pinocchio-ros-release/archive/release/melodic/sot-dynamic-pinocchio/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "0dcbc6debb50129143eb8ad32384d82fe1331de1976105bbdfc63d990839e210";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ catkin dynamic-graph-python pinocchio sot-core sot-tools ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Pinocchio bindings for dynamic-graph'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
