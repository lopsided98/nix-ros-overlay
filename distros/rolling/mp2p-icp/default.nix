
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mp2p-icp";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/rolling/mp2p_icp/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "78a746c9caef5b2a5b6f355c9852930321fa12a375aaf0f9e2a2a743d8dad097";
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
