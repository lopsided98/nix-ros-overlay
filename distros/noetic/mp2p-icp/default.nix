
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt2 }:
buildRosPackage {
  pname = "ros-noetic-mp2p-icp";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mp2p_icp-release/archive/release/noetic/mp2p_icp/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f090e068a36d0fcc5a69fca60d30b847bfc156daf89fcce02bd5cc96dfadf45b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A repertory of multi primitive-to-primitive (MP2P) ICP algorithms in C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
