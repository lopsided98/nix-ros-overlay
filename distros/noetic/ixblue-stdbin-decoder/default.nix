
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-noetic-ixblue-stdbin-decoder";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/noetic/ixblue_stdbin_decoder/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "9a2b8c3102a0a1dd9ad85cb3788c80c91dfb6ddbc702b30a8091bd487400d16b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ git gtest ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''iXblue parsing library for protocol iXblue stdbin'';
    license = with lib.licenses; [ mit ];
  };
}
