
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, gtest, liblapack, openblas, pinocchio, sot-core, sot-tools }:
buildRosPackage {
  pname = "ros-melodic-sot-dynamic-pinocchio";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/sot-dynamic-pinocchio-ros-release/archive/release/melodic/sot-dynamic-pinocchio/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "bcc7594f6cdd521f12b898a2a8f29b11cb75f76f429e8723ceae767005db238a";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ catkin dynamic-graph-python liblapack openblas pinocchio sot-core sot-tools ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Pinocchio bindings for dynamic-graph'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
