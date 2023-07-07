
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mp2p-icp";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/humble/mp2p_icp/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "3872b33c2ccc8e6555191e346f3c3c485dcad191aa15b2ffcce0761e7a670201";
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
