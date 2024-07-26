
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mp2p-icp";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/iron/mp2p_icp/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "0ad9f4e2433ae303bd87858fd82dba4321bd94f6fa3edcf11dfce694a6d74c45";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A repertory of multi primitive-to-primitive (MP2P) ICP algorithms in C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
