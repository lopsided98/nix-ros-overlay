
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-kinetic-ixblue-stdbin-decoder";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/kinetic/ixblue_stdbin_decoder/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "740cdbd204a1f7b5fd476a8e61b94f86b9e4a1b17a45c340c2b1b70ff64210fb";
  };

  buildType = "cmake";
  checkInputs = [ git gtest ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''iXblue parsing library for protocol iXblue stdbin'';
    license = with lib.licenses; [ mit ];
  };
}
