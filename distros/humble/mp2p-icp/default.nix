
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mp2p-icp";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/humble/mp2p_icp/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "89ed6b444a9c2aadc0f5b0db472d7cd67a0d30b9a8c8df40d8dac393c80a53fb";
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
