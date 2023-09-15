
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mp2p-icp";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mp2p_icp/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "38abe20f7ac16fed544c489cc067c39c72561592a6df49a302565041084ad5fe";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A repertory of multi primitive-to-primitive (MP2P) ICP algorithms in C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
