
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-melodic-ixblue-stdbin-decoder";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/melodic/ixblue_stdbin_decoder/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "5f91fdeed9112049e671a9dd0f597f44d8f60994d95585a8103b416c9891120f";
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
